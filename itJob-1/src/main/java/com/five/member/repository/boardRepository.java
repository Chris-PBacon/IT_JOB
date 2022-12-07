package com.five.member.repository;

import java.util.List;
import java.util.function.Function;

import org.springframework.data.domain.Example;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;
import org.springframework.data.repository.query.FluentQuery.FetchableFluentQuery;
import org.springframework.stereotype.Repository;

import com.five.member.dto.BoardDto;
import com.five.member.entity.BoardVO;


public interface boardRepository extends JpaRepository<BoardVO,Long>, JpaSpecificationExecutor<BoardVO> {
	

	Page<BoardVO> findByType(String type, Pageable pageable);

	Page<BoardVO> findByTypeAndTitleContainingOrIdContaining(String type,String title, String id, Pageable pageable);

	
}
