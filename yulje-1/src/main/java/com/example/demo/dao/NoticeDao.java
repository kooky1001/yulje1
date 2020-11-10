package com.example.demo.dao;

import java.util.HashMap;
import java.util.List;

import org.springframework.stereotype.Repository;

import com.example.demo.db.NoticeManager;
import com.example.demo.vo.NoticeVo;

@Repository
public class NoticeDao {

	public List<NoticeVo> findAllNotice(HashMap map) {
		return NoticeManager.findAllNotice(map);
	}
	
	public NoticeVo findByNo(int no) {
		return NoticeManager.findByNo(no);
	}
	
	public int getNextNo() {
		return NoticeManager.getNextNo();
	}
	
	public int getTotalRecord() {
		return NoticeManager.getTotalRecord();
	}
	
	public int updateHit(int no) {
		return NoticeManager.updateHit(no);
	}
	
	public int insert(NoticeVo n) {
		return NoticeManager.insert(n);
	}
	
}
