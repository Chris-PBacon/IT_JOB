package com.five.member.dto;



import java.util.List;

import org.springframework.data.domain.Page;

import com.five.member.entity.BoardVO;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString;



@AllArgsConstructor
@NoArgsConstructor
@ToString
@Data
public class PageDto {

<<<<<<< HEAD
	
=======
>>>>>>> branch 'master' of https://github.com/Chris-PBacon/IT_JOB.git
	private int nowpage;
	private int startpage;
	private int endpage;


	
	
	public PageDto BoardPages (Page<BoardVO> list, PageDto dto) {
		
		int nowpage = list.getPageable().getPageNumber()+1;		
		int startpage = Math.max(nowpage-4,1);
		int endpage = Math.min(nowpage + 5, list.getTotalPages());
		
	
		 	dto.setEndpage(endpage);
			dto.setNowpage(nowpage);
			dto.setStartpage(startpage);
		 
		 return dto;
		
	}


	



    

}//
