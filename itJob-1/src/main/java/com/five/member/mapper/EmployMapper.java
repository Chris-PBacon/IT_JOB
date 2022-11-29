package com.five.member.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.mybatis.spring.annotation.MapperScan;

import com.five.member.entity.EmployVO;
import com.five.member.entity.memberEVO;
import com.five.member.entity.memberNVO;

@Mapper
public interface EmployMapper {

	// EmployVo불러오기
	List<EmployVO> employList();
	
	// 추천 채용공고 List
	List<EmployVO> personList(String id);
	
	// 채용공고 상세 데이터 LIST
	List<EmployVO> detailEmployList(Integer seq);
	
}
