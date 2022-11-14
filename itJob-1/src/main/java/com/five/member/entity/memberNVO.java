package com.five.member.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString;
@Data
@AllArgsConstructor
@NoArgsConstructor
@ToString

public class memberNVO {

	private int mem_nom_seq;
	private String mem_nom_name;
	private String mem_nom_id;
	private String mem_nom_pw;
	private String mem_nom_birth;
	private String mem_nom_email;
	private String mem_nom_phone;
	private String mem_nom_place;
	private String mem_nom_type;
	
}
