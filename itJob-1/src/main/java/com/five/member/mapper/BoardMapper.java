package com.five.member.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.five.member.entity.BoardVO;

@Mapper
public interface BoardMapper {

	
	// ===비동기 게시판 불러오기
	List<BoardVO> restBoardQnA();

	List<BoardVO> restBoardInfo();

	List<BoardVO> restBoardFree();

}
