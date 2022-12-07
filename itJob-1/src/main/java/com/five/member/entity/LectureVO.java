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
	private String l_type;
	private String l_language;
	private String l_level;
	
	
	private String avg_star;
	private String review_count;
	
	private String li_video;
	private String li_order;
	private String li_content;
	private int li_seq;
	
	private String lt_seq;
	private String lt_class;
	private String lt_lang;
	private String lt_payment;
	private String lt_field;
	
	
}
