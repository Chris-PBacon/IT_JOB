package com.five.member;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.swing.SortOrder;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Example;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort.Direction;
import org.springframework.data.web.PageableDefault;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.five.member.dto.BoardDto;
import com.five.member.dto.PageDto;
import com.five.member.entity.BoardVO;
import com.five.member.entity.CommentVO;
import com.five.member.entity.TestPage;
import com.five.member.mapper.BoardMapper;
import com.five.member.repository.boardRepository;

@Controller
public class BoardController {

	@Autowired
	BoardMapper mapper;

	@Autowired
	boardRepository boardRepository;

	// ## === asdasdasd===+###
	@RequestMapping("/boardAjax.do")
	public String boardAjax() {

		return "/board/boardAjax";
	}

	// ####======= 타입별 게시판 이동 / 페이징 처리 =======
	@RequestMapping("/boardTest.do")
	public String findAll(PageDto dto, Model model, @RequestParam(name = "type", defaultValue = "공지사항") String type,
			@PageableDefault(page = 0, size = 10, sort = "seq", direction = Direction.DESC) Pageable pageable) {

		Page<BoardVO> list = boardRepository.findByType(type, pageable);

		PageDto pdto = dto.BoardPages(list, dto);

		model.addAttribute("pdto", pdto);

		List<BoardVO> list1 = list.getContent();

		model.addAttribute("list1", list1);

		return "/board/board";
	}

	// ####======= 게시판 검색 이동 / 페이징 처리 =======
	@RequestMapping("/board.do")
	public String searchList(PageDto dto, Model model, @RequestParam(name = "type", defaultValue = "공지사항") String type,
			String keyword,
			@PageableDefault(page = 0, size = 10, sort = "seq", direction = Direction.DESC) Pageable pageable) {

		System.out.println("타입" + type);
		System.out.println("키워드:" + keyword);

		if (keyword == null) {
			Page<BoardVO> list = boardRepository.findByType(type, pageable);
			PageDto pdto = dto.BoardPages(list, dto);
			model.addAttribute("pdto", pdto);
			List<BoardVO> list1 = list.getContent();
			model.addAttribute("list1", list1);
		} else {
			Page<BoardVO> list = boardRepository.findByTypeAndTitleContainingOrIdContaining(type, keyword, keyword,
					pageable);
			PageDto pdto = dto.BoardPages(list, dto);
			model.addAttribute("pdto", pdto);
			List<BoardVO> list1 = list.getContent();
			model.addAttribute("list1", list1);
			model.addAttribute("keyword", keyword);

		}

		return "/board/board";
	}

	// #### 게시판 글쓰기 / 댓글 기능 ####

	// 글쓰기 페이지로 이동
	@RequestMapping("/boardWrite.do")
	public String boardWrite() {

		return "/board/boardWrite";
	}

	// 글쓰기 기능
	@RequestMapping("/boardInsert.do")
	public String boardInsertC(BoardVO bvo) {
		mapper.boardInsertM(bvo);

		return "/board/board";
	}

	// 상세페이지 이동
	@RequestMapping("/boardDetail.do")

	public String boardDetail(int b_seq, Model model) {

		
		System.out.println("시퀀스:" + b_seq);
		// 상세페이지 내용 보여주는 기능
		BoardDto bvo = mapper.boardDetail(b_seq);

		System.out.println("bvo: "+ bvo);
		
		model.addAttribute("bvo", bvo);

		return "/board/boardDetail";
	}

	// 댓글 입력 출력하는 기능
	@RequestMapping("/boardComments.do")
	public @ResponseBody List<CommentVO> boardCommentsC(CommentVO cvo) {

		System.out.println("boardComments!@#");
		mapper.boardCommentsM(cvo);
		int b_seq = cvo.getB_seq();

		List<CommentVO> clist = mapper.commentList(b_seq);

		return clist;
	}

	// 댓글리스트만 출력
	@RequestMapping("/commentList.do")
	public @ResponseBody List<CommentVO> commentList(int b_seq) {

		System.out.println("게시판 시퀀스 : " + b_seq);

		List<CommentVO> clist = mapper.commentList(b_seq);

		return clist;
	}

	// 댓글 삭제
	@RequestMapping("/commentDelete.do")
	public @ResponseBody List<CommentVO> commentDelete(CommentVO cvo) {
		System.out.println("해당 댓글 시퀀스 : " + cvo.getC_seq());
		int c_seq = cvo.getC_seq();
		int b_seq = cvo.getB_seq();

		mapper.commentDelete(c_seq);

		List<CommentVO> clist = mapper.commentList(b_seq);
		System.out.println("삭제후 리스트 : " + clist);
		return clist;
	}

//	

//	// ======= 비동기 : 작성자 검색 기능 =======
//	@RequestMapping("/searchList.do")
//	public @ResponseBody List<BoardVO> searchList(PageDto dto, String search,String type,
//			@PageableDefault(page = 0, size = 10, sort = "seq", direction = Direction.DESC) Pageable pageable ) {
//
//		
//		Page<BoardVO> list = boardRepository.findByTypeAndTitleContainingOrContentContaining(type, search, search, pageable);
//
//		List<BoardVO> list2 = list.getContent();
//		
//		System.out.println("list2 : "+list2);
//	
//		return list2;
//	}
//	
//	
//	
//	// ======= 비동기 : 작성자 검색 기능 (페이징) =======
//		@RequestMapping("/searchPage.do")
//		public @ResponseBody PageDto searchPage(PageDto dto, String search,String type,
//				@PageableDefault(page = 0, size = 10, sort = "seq", direction = Direction.DESC) Pageable pageable ) {
//
//			
//			Page<BoardVO> list = boardRepository.findByTypeAndTitleContainingOrContentContaining(type, search, search, pageable);
//
//			PageDto pdto = dto.BoardPages(list, dto);
//			
//			int np = pdto.getNowpage();
//		
//			System.out.println("현재페이지 :" + np);
//			
//			return pdto;
//		}

	// #####################비동기 메소드#################################
	// ======= 비동기 : info 리스트 불러오기=======
	@RequestMapping("/restBoardInfo.do")
	public @ResponseBody List<BoardDto> restBoardInfo() {

		List<BoardDto> list = mapper.restBoardInfo();

		System.out.println("컨트롤러>:" + list);

		return list;
	}

	// ======= 비동기 : free 리스트 불러오기=======
	@RequestMapping("/restBoardFree.do")
	public @ResponseBody List<BoardVO> restBoardFree() {

		List<BoardVO> list = mapper.restBoardFree();
		return list;
	}

	// ======= 비동기 : QnA 리스트 불러오기=======
	@RequestMapping("/restBoardQnA.do")
	public @ResponseBody List<BoardVO> restBoardQnA() {

		List<BoardVO> list = mapper.restBoardQnA();
		return list;
	}
	// #####################비동기 메소드#################################

}////
