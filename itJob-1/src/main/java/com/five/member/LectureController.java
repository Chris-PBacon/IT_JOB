package com.five.member;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class LectureController {

	// 강의 페이지 이동
	@RequestMapping("/lecture.do")
	public String lecture() {
		
		return "/lecture/lecture";
	}
	
	
}
