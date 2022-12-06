package com.five.member.mapper;

import org.apache.ibatis.annotations.Mapper;

import com.five.member.entity.ResumeSelfVO;
import com.five.member.entity.ResumeVO;
import com.five.member.entity.memberNVO;

@Mapper
public interface ResumeMapper {
	
	// 기본 회원정보 조회 
	public memberNVO memberSelect(String id);
	
	// 이력서 pk인 시퀀스 찾는 
	public int selectSeq(String id);
	
	// 이력서 정보 기입 
	public void careerInsert(ResumeVO rvo);
	
	// 자기소개서 정보 기입 
	public int introInsert(ResumeSelfVO rsvo);
	
	// 이력서 정보 수정
	public void careerUpdate(ResumeVO rvo);
	
	// 자기소개서 정보 수정 
	public void introUpdate(ResumeSelfVO rsvo);

	// 이력서 조회
	public ResumeVO careerSelect(int rSeq);

	// 자기소개서 조회
	public ResumeSelfVO introSelect(int resumeSeq);

	public boolean bool(String id);


	
}
