package com.five.member.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.mybatis.spring.annotation.MapperScan;

import com.five.member.entity.LectureReviewVO;
import com.five.member.entity.LectureVO;
import com.five.member.entity.memberEVO;
import com.five.member.entity.memberNVO;

@Mapper
public interface LectureMapper {

	List<LectureVO> selectLecture();

	List<LectureVO> selectIndex(int l_seq);

	LectureVO selectDetail(int l_seq);

	void insertReview(LectureReviewVO vo);

	List<LectureReviewVO> selectReview(int l_seq);

	LectureReviewVO starAvg(int l_seq);

	
}
