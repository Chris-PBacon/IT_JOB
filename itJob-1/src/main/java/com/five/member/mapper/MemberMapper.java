package com.five.member.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.mybatis.spring.annotation.MapperScan;

import com.five.member.entity.memberEVO;
import com.five.member.entity.memberNVO;

@Mapper
public interface MemberMapper {

	// 일반회원 회원가입
	public void joinN(memberNVO vo);
	
	// 일반회원 로그인
	public memberNVO loginN(memberNVO vo);
	
	// 기업회원 회원가입
	public void joinE(memberEVO vo);
	
	// 기업회원 로그인
	public memberEVO loginE(memberEVO vo);

	// 회원 정보를 꺼내오는 기능
	public memberNVO selectMemberInfo(String m_id);

}
