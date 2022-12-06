package com.five.member;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
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
		
		// 전체 공고 불러오기
		List<EmployVO> list = mapper.employList();
		
		model.addAttribute("list",list);
		
		// 세션 id 정보 불러오기
		HttpSession session = request.getSession();
		String id = (String)session.getAttribute("id");
		
		// 추천 공고 불러오기
		List<EmployVO> pList = mapper.personList(id);  
		
		model.addAttribute("pList",pList);
		
		return "/employ/employ";
	}
	
	@RequestMapping("/detailEmploy.do")
	public String detailEmployList(Model model,Integer seq) throws ParseException {
		
		System.out.println("상세공고 불러오기");
		System.out.println("공고 번호 :"+seq);
		
		// 상세 공고 내용 불러오기
		List<EmployVO> list = mapper.detailEmployList(seq);
		
		// 마감날짜
		String strDate = list.get(0).getJ_date();
		// 오늘날짜
		String todayFm = new SimpleDateFormat("yyyy-MM-dd").format(new Date(System.currentTimeMillis()));
		
		// 데이터 변환
		SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
		
		Date date = new Date(dateFormat.parse(strDate).getTime());
		Date today = new Date(dateFormat.parse(todayFm).getTime());
		
		long calculate = date.getTime() - today.getTime();
		
		int Ddays = (int) (calculate / (24*60*60*1000));
		
		System.out.println("두 날짜 차이 : " + Ddays);
		
		model.addAttribute("Ddays",Ddays);	
		
		System.out.println(list);
		
		model.addAttribute("list",list);
		
		return "/employ/detailEmploy";
	}
	
	
	@RequestMapping("/apply.do")
	public void applyMethod(Model model) {
		
		System.out.println("지원하기");
		
		HttpSession session = request.getSession();
		
		String id = (String)session.getAttribute("id");
		
		// id 값으로 이력서 정보 불러오기
		
		// 
	}
	@RequestMapping("employSearch")
	public String employSearch(Model model, String keyword){
		
		System.out.println("검색어 : "+keyword);
		
		// 세션 id 정보 불러오기
		HttpSession session = request.getSession();
		String id = (String)session.getAttribute("id");
		
		// 추천 공고 불러오기
		List<EmployVO> pList = mapper.personList(id);  
		
		// 모델에 저장
		model.addAttribute("pList",pList);
		
		
		// 키워드를 입력받으면 검색 공고 불러와서 저장
		if(keyword.length()!=0) {
			List<EmployVO> list = mapper.searchList(keyword);
			
			System.out.println("검색결과 개수 : "+list.size());
			
			model.addAttribute("list",list);
			model.addAttribute("keyword",keyword);	
		}
		return "/employ/employ";
	}
	
	@RequestMapping("experience")
	public String experienceSearch(Model model,Integer num){
		
		System.out.println("경력 유무 : "+(num==0?"신입":"경력"));
		String exp = "";
		
		if (num==0) {
			exp = "신입";
		}else if (num==1) {
			exp = "경력";
		}
		// 세션 id 정보 불러오기
		HttpSession session = request.getSession();
		String id = (String)session.getAttribute("id");
		
		// 추천 공고 불러오기
		List<EmployVO> pList = mapper.personList(id); 
		model.addAttribute("pList",pList);
		
		// 경력 유무 검색 결과 List
		List<EmployVO> list = mapper.expList(exp);
		model.addAttribute("list",list);
		
		return "/employ/employ";
	}
	

	
		
		
		

}///
