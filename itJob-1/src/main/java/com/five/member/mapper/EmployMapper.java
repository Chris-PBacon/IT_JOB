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
	
	List<EmployVO> employExp();
	
//	List<EmployVO> employNew();
	
	List<EmployVO> employFront();
	
}
