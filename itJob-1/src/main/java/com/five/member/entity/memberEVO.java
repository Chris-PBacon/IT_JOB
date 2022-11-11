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
	private int memEntSeq;
	private String memEntName;
	private String memEntId;
	private String memEntPw;
	private String memEntEmail;
	private String memEntPhone;
	private String memEntNum;
	private String memEntPlace;
	
}
