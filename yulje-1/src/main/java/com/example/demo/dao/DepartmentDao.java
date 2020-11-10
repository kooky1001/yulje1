package com.example.demo.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.example.demo.db.DepartmentManager;
import com.example.demo.vo.DepartmentVo;

@Repository
public class DepartmentDao {
//	//내과
//	public List<DepartmentVo> findAllGS(){
//		return DepartmentManager.findAllGS();
//	}
//
//	//외과
//	public List<DepartmentVo> findAllIM(){
//		return DepartmentManager.findAllIM();
//	}
//	
//	//일반과
//	public List<DepartmentVo> findAllDept(){
//		return DepartmentManager.findAllDept();
//	}
	
	//전체목록
	public List<DepartmentVo> findAll(){
		return DepartmentManager.findAll();
	}
	
	//가나다순 정렬
	public List<DepartmentVo> findAllSort(){
		return DepartmentManager.findAllSort();
	}
	
	//상세보기
	public DepartmentVo findByNo(int dept_no) {
		return DepartmentManager.findByNoDept(dept_no);
	}
	
	//목록조회만 구현하는중.
}