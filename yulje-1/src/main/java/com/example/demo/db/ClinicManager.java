package com.example.demo.db;

import java.io.InputStream;
import java.util.List;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import com.example.demo.vo.ClinicVo;

public class ClinicManager {
	
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
	
	//회원번호로 환자의 진료이력불러오기
	public static List<ClinicVo> findByNoMem(int member_no) {
		List<ClinicVo> list = null;
		SqlSession session = sqlSessionFactory.openSession();
		list = session.selectList("clinic.selectByNoMem", member_no);
		session.close();
		return list;
	}
	
	//진료번호로 진료내역 상세보기
	public static ClinicVo findByNoCli(int cli_no) {
		ClinicVo c = null;
		SqlSession session = sqlSessionFactory.openSession();
		c = session.selectOne("clinic.selectByNoCli", cli_no);
		session.close();
		return c;
	}

}
