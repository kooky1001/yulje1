package com.example.demo.dao;

import java.util.HashMap;
import java.util.List;

import org.springframework.stereotype.Repository;

import com.example.demo.db.BoardManager;
import com.example.demo.vo.NoticeVo;

@Repository
public class NoticeDao {

	public List<NoticeVo> findAllNotice(HashMap map) {
		return BoardManager.findAllNotice(map);
	}
	
	public NoticeVo findByNo(int no) {
		return BoardManager.findByNo(no);
	}
	
	public int getNextNo() {
		return BoardManager.getNextNo();
	}
	
	public int getTotalRecord() {
		return BoardManager.getTotalRecord();
	}
	
	public int updateHit(int no) {
		return BoardManager.updateHit(no);
	}
	
	public int insert(NoticeVo n) {
		return BoardManager.insert(n);
	}
	
}
