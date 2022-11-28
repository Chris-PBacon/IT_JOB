package com.five.member.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.mybatis.spring.annotation.MapperScan;

import com.five.member.entity.LectureBasketVO;
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

	void insertBasket(LectureBasketVO vo);

	List<LectureVO> selectBasket(LectureBasketVO vo);

	List<LectureVO> selectBasketBasic(String m_id);

	void deleteBasket(LectureBasketVO vo);

	List<LectureVO> myLecture(String m_id);

	


	
}
