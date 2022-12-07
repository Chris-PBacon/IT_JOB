package com.five.member;

import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.five.member.entity.LectureBasketVO;
import com.five.member.entity.LectureDTO;
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
	// 강의 결제 -> 수강확인테이블에 체크
	@RequestMapping("/payment.do")
	public String insertMyLecture(HttpServletRequest request) {
		String[] array = request.getParameterValues("lecture");
		String m_id = request.getParameter("m_id");
		System.out.println(array[0]);
		HashMap<String, Object> map= new HashMap<String,Object>();
		 for(int i=0; i<array.length; i++) {
			map.put("l_seq", array[i]);
			map.put("m_id", m_id);
			mapper.insertLectureCheck(map);
			//구매한 강의는 장바구니에서 삭제
			mapper.deletePaidBasket(map);
		}
		
		 
		
		return "redirect:/myLecture.do" ;
		
	}
	
	// 강의 재생페이지로 이동
	@RequestMapping("/lecturePlay.do")
	public String lecturePlay(String li_seq, Model model) {
		
		LectureVO lvo = mapper.videoSelect(li_seq);
		
		model.addAttribute("vo", lvo);
		
		return "/lecture/lecturePlay";
	}
	
	// 이전 강의로 이동
	@RequestMapping("/lecturePlayF.do")
	public String lecturePlayF(LectureVO vo, Model model) {
		
		LectureVO lvo = mapper.videoSelectF(vo);
		
		model.addAttribute("vo", lvo);
		
		return "/lecture/lecturePlay";
	}
	
	// 다음 강의로 이동
	@RequestMapping("/lecturePlayB.do")
	public String lecturePlayB(LectureVO vo, Model model) {
		
		LectureVO lvo = mapper.videoSelectB(vo);
		
		model.addAttribute("vo", lvo);
		
		return "/lecture/lecturePlay";
	}
	
	//필터링
	@RequestMapping("/filterLecture.do")
	public @ResponseBody List<LectureVO> filterLecture(
			@RequestParam(value="l_type",required = false)List<String> type,
			@RequestParam(value="l_level",required = false)List<String> level,
			@RequestParam(value="l_language",required = false)List<String> lang,
			@RequestParam(value="l_price",required = false)List<String> price,
			LectureDTO list){
			list.setL_type(type);
			list.setL_level(level);
			list.setL_language(lang);
			list.setL_price(price);
		
		
		
		List<LectureVO> result = mapper.filterLecture(list);
		System.out.println(result.size());
		
		
		
		return result;
		
	}
	
	
}
