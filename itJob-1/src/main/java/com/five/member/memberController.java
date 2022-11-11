package com.five.member;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.five.member.entity.memberEVO;
import com.five.member.entity.memberNVO;
import com.five.member.mapper.memberMapper;


@Controller
public class memberController {

	@Autowired
	private memberMapper mapper;
	private HttpSession session;
	
	// 로그아웃 기능
	@RequestMapping("logOutNE.do")
	public String logOutNE(HttpSession session) {
		session.invalidate();
		return "/main/main";
	}
	
	// 기업회원 회원가입 기능
	@RequestMapping("joinE.do")
	public String joinE(memberEVO vo) {
		mapper.joinE(vo);
		return "/join/logJoinE";
	}
	// 기업회원 로그인 기능
	@RequestMapping("loginE.do")
	public String loginE(memberEVO vo, Model model) {
		List<memberEVO> list = mapper.loginE(vo);
		model.addAttribute("list", list);
		return "/main/main";
		
		
	}
	
	// 일반회원 회원가입 기능
	@RequestMapping("joinN.do")
	public String joinN(memberNVO vo) {
		mapper.joinN(vo);
		return "/join/logJoinN";
	}
	
	// 일반회원 로그인 기능
	@RequestMapping("loginN.do")
	public String loginN(memberNVO vo, Model model) {
		List<memberNVO> list = mapper.loginN(vo);
		model.addAttribute("list", list);
		if(list!=null) {
			return "/main/main";
		}else {
			return "/join/logJoinN";
		}
	}
	
	// 기업회원 로그인 양식 페이지로 이동
	@RequestMapping("/logJoinEForm.do")
	public String logJoinEForm() {
		return "/join/logJoinE";
	}
	
	// 일반회원 로그인 양식 페이지로 이동
	@RequestMapping("/logJoinNForm.do")
	public String logJoinNForm() {
		return "/join/logJoinN";
	}
	
	// 개인/기업 회원별로 나뉘는 분기점 페이지로 이동
	@RequestMapping("/selectNE.do")
	public String selectNE() {
		return "/join/selectNE";
	}
	
	// 메인페이지로 이동
	@RequestMapping("/main.do")
	public String main(){
		return "/main/main";
	}
	
	
}
