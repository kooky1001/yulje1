package com.example.demo.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.example.demo.db.DBManager;
import com.example.demo.vo.DoctorVo;

@Repository
public class DoctorDao {

	public List<DoctorVo> findAll() {
		return DBManager.findAll();
	}
	
	public DoctorVo findByNo(int doc_no) {
		return DBManager.findByNo(doc_no);
	}
}
