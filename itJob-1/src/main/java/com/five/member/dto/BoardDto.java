package com.five.member.dto;

import java.util.List;

import javax.persistence.Column;
import javax.persistence.Id;

import com.five.member.entity.BoardVO;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString;

@Data
@AllArgsConstructor
@NoArgsConstructor
@ToString

public class BoardDto {
	
	private int b_seq;

	private String b_title;

	private String b_content;

	private String m_id;

	private String b_date;

	private int b_count;

	private String b_type;
	

	
	
}///
