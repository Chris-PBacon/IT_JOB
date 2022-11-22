package com.five.member;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.five.member.entity.memberEVO;
import com.five.member.entity.memberNVO;
import com.five.member.mapper.MemberMapper;

@Controller
public class MemberController {

	@Autowired
	private MemberMapper mapper;
	

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
	public String loginE(memberEVO vo, HttpServletRequest request) {

		memberEVO login = mapper.loginE(vo);
		HttpSession session = request.getSession();
		String id = login.getE_id();

		if (id != null) {
			session.setAttribute("id", id);
			return "/main/main";
		} else {
			session.setAttribute("id", null);
			return "/join/logJoinE";
		}

	}

	// 일반회원 회원가입 기능
	@RequestMapping("joinN.do")
	public String joinN(memberNVO vo) {
		mapper.joinN(vo);
		return "/join/logJoinN";
	}

	// 일반회원 로그인 기능

	@RequestMapping("loginN.do")
	public String loginN(memberNVO vo, HttpServletRequest request) {

		System.out.println("일반 로그인 정보 : " + vo);

		memberNVO login = mapper.loginN(vo);

		System.out.println("xml에서 넘어온값" + login);

		HttpSession session = request.getSession();

		String id = login.getM_id();

		if (id != null) {
			session.setAttribute("id", id);
			return "/main/main";
		} else {
			session.setAttribute("id", null);
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
	public String main() {
		return "/main/main";
	}

	

}
