package com.five.member.dto;

import java.util.List;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString;

@Data
@NoArgsConstructor
@AllArgsConstructor
@ToString

public class LectureDTO {
	private List<String> l_type;
	private List<String> l_level;
	private List<String> l_language;
	private List<String> l_price;
}
