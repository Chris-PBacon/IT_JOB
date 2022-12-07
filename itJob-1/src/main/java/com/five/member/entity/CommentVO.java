package com.five.member.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString;

@Data
@AllArgsConstructor
@NoArgsConstructor
@ToString
public class CommentVO {
	private int c_seq;
	private int b_seq;
	private String m_id;
	private String c_content;
}
