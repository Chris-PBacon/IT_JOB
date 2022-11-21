package com.five.member;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.five.member.entity.LectureReviewVO;
import com.five.member.entity.LectureVO;
import com.five.member.mapper.LectureMapper;

@Controller
public class LectureController {

	@Autowired
	LectureMapper mapper;
	
	// 강의 페이지 이동
	@RequestMapping("/lecture.do")
	public String lecture(Model model) {
		
		List<LectureVO> list= mapper.selectLecture();
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
	
	// 장바구니로 이동
	
}
