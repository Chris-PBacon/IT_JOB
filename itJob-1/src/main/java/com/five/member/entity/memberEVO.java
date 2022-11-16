package com.five.member.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString;

@Data
@AllArgsConstructor
@NoArgsConstructor
@ToString
public class memberEVO {
	
	private String e_id;
	private String e_pw;
	private String e_name;
	private String e_email;
	private String e_phone;
	private String e_place;
	private String e_num;
	
}
