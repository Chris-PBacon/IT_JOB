package com.five.member.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString;

@Data
@AllArgsConstructor
@NoArgsConstructor
@ToString
public class LectureReviewVO {

	private int lg_seq;
	private String l_seq;
	private String lg_star;
	private String lg_content;
	private String m_id;
	
	private String review_cnt;
	private String avg_star;
}
