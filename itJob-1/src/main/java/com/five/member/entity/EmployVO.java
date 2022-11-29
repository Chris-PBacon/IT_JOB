package com.five.member.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString;

@Data
@AllArgsConstructor
@NoArgsConstructor
@ToString
public class EmployVO {

	private int j_seq;
	private String e_id;
	private String j_title;
	private String j_content;
	private String j_place;
	private String j_type;
	private String j_img;
	private String j_language;
	private String j_exp;
	private String j_date;
	private int jd_seq;
	private String jd_img;
	
}
