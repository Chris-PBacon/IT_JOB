package com.five.member.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

import org.springframework.boot.context.properties.bind.Name;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString;

@Data
@AllArgsConstructor
@NoArgsConstructor
@ToString


@Entity
@Table(name="board")
public class BoardVO {
	
	@Id
	@Column(name="b_seq")
	private Long seq;
	
	@Column(name = "b_title")
	private String title;
	
	@Column(name = "b_content")
	private String content;
	
	@Column(name = "m_id")
	private String id;
	
	@Column(name = "b_date")
	private String date;
	
	@Column(name = "b_count")
	private int count;
	
	@Column(name = "b_type")
	private String type;
	
	
}///
