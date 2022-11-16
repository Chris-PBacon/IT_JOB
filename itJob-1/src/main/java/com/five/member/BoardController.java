package com.five.member;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.five.member.entity.BoardVO;
import com.five.member.mapper.BoardMapper;

@Controller
public class BoardController {

	@Autowired
	BoardMapper mapper;

	// 게시판 페이지로 이동
	@RequestMapping("/board.do")
	public String board() {
		return "/board/board";
	}


	// 글쓰기 페이지로 이동
	@RequestMapping("/boardWrite.do")
	public String boardWrite() {
		return "/board/boardWrite";
	}

	// ======= 비동기 : info 리스트 불러오기=======
	@RequestMapping("/restBoardInfo.do")
	public @ResponseBody List<BoardVO> restBoardInfo() {
		
		List<BoardVO> list = mapper.restBoardInfo();
		return list;
	}

	// ======= 비동기 : free 리스트 불러오기=======
	@RequestMapping("/restBoardFree.do")
	public @ResponseBody List<BoardVO> restBoardFree() {

		List<BoardVO> list = mapper.restBoardFree();
		return list;
	}

	// ======= 비동기 : QnA 리스트 불러오기=======
	@RequestMapping("/restBoardQnA.do")
	public @ResponseBody List<BoardVO> restBoardQnA() {

		List<BoardVO> list = mapper.restBoardQnA();
		return list;
	}

	
	
	
}////
