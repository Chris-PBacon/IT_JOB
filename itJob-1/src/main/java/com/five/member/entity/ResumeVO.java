package com.five.member.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class ResumeVO {
	private int r_seq; 			// 이력섭 번호
	private String m_id; 		// 아이디
	private String r_exp; 		// 경력 유무 : 유/무
	private String r_school; 	// 최종학력
	private String r_license; 	// 자격증명 
	private String r_award; 	// 수상경력
	private String r_img;		// 사진 
}
