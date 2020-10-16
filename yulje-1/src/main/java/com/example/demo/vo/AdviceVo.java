package com.example.demo.vo;

import java.sql.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class AdviceVo {
	private int no;
	private int member_no;
	private String title;
	private String writer;
	private String content;
	private Date regdate;
	private int hit;
	private int b_ref;
	private int b_level;
	private int b_step;
	private String fname;
	private String category;
}
