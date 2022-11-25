package com.five.member;

import java.util.List;
import java.util.function.Function;

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
	public String loginE(memberEVO vo, HttpServletRequest request) {

		memberEVO login = mapper.loginE(vo);
		HttpSession session = request.getSession();
		String id = login.getE_id();
		String num = login.getE_num();

		if (id != null) {
			session.setAttribute("id", id);
			session.setAttribute("num", num);
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

		memberNVO login = mapper.loginN(vo); // >>> xml 에서 일끝나고 나온거야 >>결과물 : N VO

		// ---------------------------

		HttpSession session = request.getSession();

		String id = login.getM_id();
		String num = login.getM_type();

		if (id != null) {
			session.setAttribute("id", id);
			session.setAttribute("num", num);
			return "/main/main";
		} else {
			session.setAttribute("id", null);
			return "/join/logJoinN";
		}

	}////

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

	// ======회원정보 수정 부분 =======

	// N 일반회원 정보수정 페이지 이동
	@RequestMapping("/updateN.do")
	public String updateN(String id, Model model) {

		memberNVO nvo = mapper.updateN(id);
		model.addAttribute("nvo", nvo);
		System.out.println(nvo);
		return "/main/updateN";
	}

	// N 일반회원 정보수정 페이지 이동
	@RequestMapping("/updateE.do")
	public String updateE(String id, Model model) {

		memberEVO evo = mapper.updateE(id);
		model.addAttribute("evo", evo);
		System.out.println(evo);
		return "/main/updateE";
	}

}//////
