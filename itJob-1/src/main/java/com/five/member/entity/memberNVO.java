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

	
	private String m_id;
	private String m_pw;
	private String m_name;
	private String m_birth;
	private String m_email;
	private String m_phone;
	private String m_place;
	private String m_type;
	
}
