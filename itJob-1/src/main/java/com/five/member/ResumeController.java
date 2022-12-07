package com.five.member;

import javax.servlet.http.HttpSession;
import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.condition.RequestConditionHolder;

import com.five.member.entity.ResumeSelfVO;
import com.five.member.entity.ResumeVO;
import com.five.member.entity.memberNVO;
import com.five.member.mapper.ResumeMapper;

@Controller
public class ResumeController {

	@Autowired
	private ResumeMapper mapper;
	private HttpSession session;

	/*
	 * resume의 값이 없으면 insert할 수 있게, 값이 있으면 조회할 수 있게,
	 */

	/* 회원 기본정보 출력해주는 함수 */
	public void resumeLoad(Model model, HttpSession session) {

		String id = (String) session.getAttribute("id");

		memberNVO nvo1 = mapper.memberSelect(id);
		model.addAttribute("nvo", nvo1);

	}

	/* 기본 회원정보 출력하고 이력서 insert할 수 있는 공간 */
	@RequestMapping("/resumeInsertPage.do")
	public String resumeInsertPage(Model model, HttpSession session) {

		resumeLoad(model, session);

		return "/employ/resumeInsert";

	}

	/* 이력서페이지에서 등록 버튼 클릭시 실행 */
	/* 이력서와 자기소개서 insert */
	@RequestMapping("/resumeInsert.do")
	public String resumeInsert(ResumeVO rvo, ResumeSelfVO rsvo, Model model, HttpSession session) {

		// 회원 기본정보 출력
		resumeLoad(model, session);

		// 이력서 insert
		mapper.careerInsert(rvo);
		int resumeSeq = rvo.getR_seq(); // select key로 리턴된 seq를 getter로 가져옴
		rsvo.setR_seq(resumeSeq); // rsvo의 r_seq값을 위에서 리턴 받은 값을 넣음

		// 자기소개서 insert
		mapper.introInsert(rsvo);

		model.addAttribute("rvo", rvo);
		model.addAttribute("rsvo", rsvo);

		return "/employ/resumeShow";
	}

	/* 기본 회원정보 출력하고 이력서 update할 수 있는 공간 */
	@RequestMapping("resumeUpdatePage.do")
	public String resumeUpdatePage( Model model, HttpSession session) {


		resumeLoad(model, session);
		
		String id = (String)session.getAttribute("id");
		
		int rSeq = mapper.selectSeq(id);

		System.out.println("rSeq값:"+rSeq);

		ResumeVO rvo = mapper.careerSelect(rSeq); // 회원 아이디 m_id(파라미터) 통해서 select
		model.addAttribute("rvo", rvo);
		System.out.println("rvo값 :" + rvo);

		// 자기소개서 select
		ResumeSelfVO rsvo = mapper.introSelect(rSeq); // 이력서 번호 r_seq(파라미터) 통해서 select
		model.addAttribute("rsvo", rsvo);
		System.out.println("rsvo값 :" + rsvo);

		return "/employ/resumeUpdate";
	}

	/* 이력서와 자기소개서 update */
	@RequestMapping("/resumeUpdate.do")
	public String resumeUpdate(String testB, Model model, HttpSession session, ResumeVO rvo, ResumeSelfVO rsvo) {

		// 회원 기본정보 출력
		resumeLoad(model, session);

		
		// 이력서 정보 수정 - r_seq 이용
		String id = (String) session.getAttribute("id");
		int rSeq = mapper.selectSeq(id);
		
		rvo.setR_seq(rSeq); // rsvo의 r_seq값을 위에서 리턴 받은 값을 넣음	
		mapper.careerUpdate(rvo);

		
		// 자기소개서 정보 수정 - rm_seq 이용
		rsvo.setR_seq(rSeq);	
		mapper.introUpdate(rsvo);

		model.addAttribute("rvo", rvo);
		model.addAttribute("rsvo", rsvo);

		return "/employ/resumeShow";
	}

	/* 이력서와 자기소개서 select */
	@RequestMapping("/resumeShow.do")
	public String resumeSelect(Model model, HttpSession session) {

		// 회원 기본정보 출력
		resumeLoad(model, session);

		// 이력서 select
		String id = (String) session.getAttribute("id");

		boolean cnt = mapper.bool(id);

		if (cnt) {
			int rSeq = mapper.selectSeq(id);

			System.out.println("rSeq값:"+rSeq);

			ResumeVO rvo = mapper.careerSelect(rSeq); // 회원 아이디 m_id(파라미터) 통해서 select
			model.addAttribute("rvo", rvo);
			System.out.println("rvo값 :" + rvo);

			// 자기소개서 select
			ResumeSelfVO rsvo = mapper.introSelect(rSeq); // 이력서 번호 r_seq(파라미터) 통해서 select
			model.addAttribute("rsvo", rsvo);
			System.out.println("rsvo값 :" + rsvo);

		}

		return "/employ/resumeShow";

	}

}
