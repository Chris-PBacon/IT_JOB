package com.five.member;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.five.member.entity.EmployVO;
import com.five.member.mapper.EmployMapper;

@Controller
public class EmployController {
	
	@Autowired
	private EmployMapper mapper;
	
	@Autowired
	private HttpServletRequest request;
	
	// 채용 정보페이지 이동
	@RequestMapping("/employ.do")
	public String employList(Model model) {
		
		System.out.println("채용 공고 불러오기");
		
		HttpSession session = request.getSession();
		
		String id = (String)session.getAttribute("id");
		
		// 전체 공고 불러오기
		List<EmployVO> list = mapper.employList();
		
		// 추천 공고 불러오기
		List<EmployVO> pList = mapper.personList(id);  
		
		model.addAttribute("list",list);
		model.addAttribute("pList",pList);
		
		return "/employ/employ";
	}
	@RequestMapping("/detailEmploy.do")
	public String detailEmployList(Model model,Integer seq) {
		
		System.out.println("상세공고 불러오기");
		System.out.println("공고 번호 :"+seq);
		
		// 상세 공고 내용 불러오기
		List<EmployVO> list = mapper.detailEmployList(seq);
		
		System.out.println(list);
		
		model.addAttribute("list",list);
		
		return "/employ/detailEmploy";
	}
	
	

	
		
		
		

}///
