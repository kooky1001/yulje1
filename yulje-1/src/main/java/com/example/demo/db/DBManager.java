package com.example.demo.db;

import java.io.InputStream;
import java.util.List;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import com.example.demo.vo.DoctorVo;

public class DBManager {
	
	private static SqlSessionFactory sqlSessionFactory;
	
	static {
		try {
			String resource = "com/example/demo/db/sqlMapConfig.xml";
			InputStream inputStream = Resources.getResourceAsStream(resource);
			sqlSessionFactory =
			  new SqlSessionFactoryBuilder().build(inputStream);
		} catch (Exception e) {
			// TODO: handle exception
			System.out.println("manager:"+e.getMessage());
		}
	}
	
	public static List<DoctorVo> findAll() {
		List<DoctorVo> list = null;
		SqlSession session = sqlSessionFactory.openSession();
		list = session.selectList("doctor.selectAll");
		session.close();
		return list;
	}
	
	public static DoctorVo findByNo(int doc_no) {
		DoctorVo d = null;
		SqlSession session = sqlSessionFactory.openSession();
		d = session.selectOne("doctor.selectByNo", doc_no);
		session.close();
		return d;
	}
}
