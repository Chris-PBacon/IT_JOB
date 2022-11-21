package com.five.member.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString;

@Data
@AllArgsConstructor
@NoArgsConstructor
@ToString
public class LectureVO {

	private int l_seq;
	private String l_title;
	private String l_content;
	private String l_teacher;
	private String l_price;
	private String l_img;
	
	private String li_order;
	private String li_content;
	
}
