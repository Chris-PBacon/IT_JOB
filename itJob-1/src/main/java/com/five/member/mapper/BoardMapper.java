package com.five.member.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;

import com.five.member.dto.BoardDto;
import com.five.member.entity.BoardVO;
import com.five.member.entity.CommentVO;

@Mapper
public interface BoardMapper {

	
	// ===비동기 게시판 불러오기
	List<BoardVO> restBoardQnA();

	List<BoardDto> restBoardInfo();

	List<BoardVO> restBoardFree();

	List<BoardDto> searchList(String search , String type);

	
	
	// 게시판 글쓰고 저장하는
	void boardInsertM(BoardVO bvo);

	// 상세페이지 이동
	BoardDto boardDetail(int b_seq);

	// 댓글 쓰고 저장하는
	void boardCommentsM(CommentVO cvo);

	// 댓글 리스트 보여주는 기능
	List<CommentVO> commentList(int b_seq);

	// 댓글 삭제 기능
	void commentDelete(int cno);

	
	
	
}
