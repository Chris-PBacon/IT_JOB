package com.five.member;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class JobController {

	
	// 개발자로드맵 페이지 이동
		@RequestMapping("/job.do")
		public String job() {
			
			return "/jobb/job";
		}

	
	
}
