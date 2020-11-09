package com.example.demo.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.example.demo.db.ClinicManager;
import com.example.demo.vo.ClinicVo;

@Repository
public class ClinicDao {
	
	public List<ClinicVo> findByNoMem(int member_no) {
		return ClinicManager.findByNoMem(member_no);
	}
	
	public ClinicVo findByNoCli(int cli_no) {
		return ClinicManager.findByNoCli(cli_no);
	}
	
}
