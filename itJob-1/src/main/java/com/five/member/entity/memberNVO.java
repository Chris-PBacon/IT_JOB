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

	private int memNomSeq;
	private String memNomName;
	private String memNomId;
	private String memNomPw;
	private String memNomBirth;
	private String memNomEmail;
	private String memNomPhone;
	private String memNomPlace;
	private String memNomType;
	
}
