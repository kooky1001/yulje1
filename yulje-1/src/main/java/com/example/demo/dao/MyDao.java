package com.example.demo.dao;

import org.springframework.stereotype.Repository;

import com.example.demo.db.MyManager;
import com.example.demo.vo.MemberVo;

@Repository
public class MyDao {

	public int updateMember(MemberVo m) {
		return MyManager.updateMember(m);
	}
	
	public MemberVo findByNo(int member_no) {
		return MyManager.findByNo(member_no);
	}
}
