package com.five.member;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class EmployController {

	// 채용 정보페이지 이동
	@RequestMapping("/employ.do")
	public String employ() {

		return "/employ/employ";
	}
	
	
	// 이력서 페이지 이동
		@RequestMapping("/resume.do")
		public String resume() {

			return "/employ/resume";
		}

		
		
		

}///
