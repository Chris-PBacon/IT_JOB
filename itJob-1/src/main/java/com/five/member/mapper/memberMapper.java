package com.five.member.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.mybatis.spring.annotation.MapperScan;

import com.five.member.entity.memberEVO;
import com.five.member.entity.memberNVO;

@Mapper
public interface memberMapper {

	// 일반회원 회원가입
	void joinN(memberNVO vo);
	// 일반회원 로그인
	List<memberNVO> loginN(memberNVO vo);
	// 기업회원 회원가입
	void joinE(memberEVO vo);
	// 기업회원 로그인
	List<memberEVO> loginE(memberEVO vo);

}
