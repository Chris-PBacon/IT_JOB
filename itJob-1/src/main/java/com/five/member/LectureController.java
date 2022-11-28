package com.five.member;

import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.five.member.entity.LectureBasketVO;
import com.five.member.entity.LectureReviewVO;
import com.five.member.entity.LectureVO;
import com.five.member.entity.memberNVO;
import com.five.member.mapper.LectureMapper;
import com.five.member.mapper.MemberMapper;

@Controller
public class LectureController {

	@Autowired
	LectureMapper mapper;
	@Autowired
	MemberMapper mapper2;
	
	
	// 강의 페이지 이동
	@RequestMapping("/lecture.do")
	public String lecture(Model model) {
		
		List<LectureVO> list = mapper.selectLecture();
		model.addAttribute("list", list);
		
		return "/lecture/lecture";
	}
	
	// 강의 상세 페이지 이동
	@RequestMapping("/lectureDetail.do")
	public String lectureDetail(int l_seq, Model model) {
		
		LectureVO vo = mapper.selectDetail(l_seq);
		model.addAttribute("vo", vo);
		
		List<LectureVO> list = mapper.selectIndex(l_seq);
		model.addAttribute("list", list);
		
		List<LectureReviewVO> rList = mapper.selectReview(l_seq);
		model.addAttribute("rList", rList);
		
		LectureReviewVO vo2 = mapper.starAvg(l_seq);
		model.addAttribute("vo2", vo2);
		
		return "/lecture/lectureDetail";
	}
	
	// 리뷰 작성 기능
	@RequestMapping("/insertReview.do")
	public String insertReview(LectureReviewVO vo) {
		
		mapper.insertReview(vo);
		
		
		return "redirect:/lectureDetail.do?l_seq="+vo.getL_seq();
	}
	
	// 수강하기 -> 장바구니로 이동
	@RequestMapping("/lectureBasket.do")
	public String lectureBasket(Model model, HttpServletResponse response, LectureBasketVO vo) throws IOException {
		
		if(vo.getM_id() == "") {
			ScriptUtils.alertAndMovePage(response, "로그인하고 이용해주세요.","lectureDetail.do?l_seq="+vo.getL_seq());
			
			return "";
		}else {
			mapper.insertBasket(vo);
			List<LectureVO> list = mapper.selectBasket(vo);
			model.addAttribute("list", list);
			
			return "lecture/lectureBasket";
		}
		
	}
	// 그냥 장바구니 페이지 이동
	@RequestMapping("/enterBasket.do")
	public String enterBasket(HttpSession session, Model model, HttpServletResponse response) throws IOException {
		
		String m_id = (String) session.getAttribute("id");
		if(m_id == null) {
			ScriptUtils.alertAndBackPage(response, "로그인을 한 회원만 이용할 수 있습니다.");
			return "";
		}else {
			List<LectureVO> list = mapper.selectBasketBasic(m_id);
			model.addAttribute("list", list);
			memberNVO vo = mapper2.selectMemberInfo(m_id);
			model.addAttribute("vo", vo);
			return "lecture/lectureBasket";
		}
		
	}
	
	
	// 장바구니에서 선택한 강의 삭제하는 기능
	@RequestMapping("/deleteBasket.do")
	public String deleteBasket(HttpServletRequest request, HttpSession session, Model model) throws UnsupportedEncodingException {
		String[] array = request.getParameterValues("lecture");
		LectureBasketVO vo = new LectureBasketVO();
		String id = request.getParameter("m_id");
		vo.setM_id(id);
		for(int i=0; i<array.length; i++) {
			int num = Integer.parseInt(array[i]);
			vo.setL_seq(num);
			mapper.deleteBasket(vo);
		}
		String m_id = session.getId();
		m_id = URLEncoder.encode(m_id, "utf-8");
		
		return "redirect:/enterBasket.do?m_id=" + m_id ;
	}
	
	// 내 강의인트로페이지 이동 기능
	@RequestMapping("/myLecture.do")
	public String myLecture(HttpSession session, Model model, HttpServletResponse response) throws IOException {
		String m_id = (String) session.getAttribute("id");
		System.out.println(m_id);
		if(m_id == null) {
			ScriptUtils.alertAndBackPage(response, "로그인을 한 회원만 이용할 수 있습니다.");
			return "";
		}else {
			List<LectureVO> list = mapper.myLecture(m_id);
			model.addAttribute("list", list);
			
			return "/lecture/myLecture";
		}
	}
	
	// 내 강의 인트로에서 상세페이지로 이동 기능
	@RequestMapping("/myLecDetail.do")
	public String myLecDetail(int l_seq, Model model) {
		
		LectureVO vo = mapper.selectDetail(l_seq);
		model.addAttribute("vo", vo);
		
		List<LectureVO> list = mapper.selectIndex(l_seq);
		model.addAttribute("list", list);
		
		List<LectureReviewVO> rList = mapper.selectReview(l_seq);
		model.addAttribute("rList", rList);
		
		LectureReviewVO vo2 = mapper.starAvg(l_seq);
		model.addAttribute("vo2", vo2);
		
		return "/lecture/myLecDetail";
		
	}
	// 선택된 태그의 강의만 빼오기
	/* @RequestMapping("/selectLecSelect")
	 * public @ResponseBody String selectLecSelect(){
	 * 
	 * }
	 * */
	
}
