package com.five.member.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
// 이력서 - 자기소개서VO
public class ResumeSelfVO {

	private int rm_seq; 		// 자기소개서 번호
	private int r_seq; 			// 해당 자기소개서의 이력서 번호 
	private String rm_title; 	// 제목
	private String rm_content; // 내용
}
