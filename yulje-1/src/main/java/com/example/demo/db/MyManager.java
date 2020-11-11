package com.example.demo.db;

import java.io.InputStream;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import com.example.demo.vo.MemberVo;

public class MyManager {

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
	
	//회원정보 수정
	public static int updateMember(MemberVo m) {
		int re = -1;
		SqlSession session = sqlSessionFactory.openSession(true);
		re = session.update("my.updateMember", m);
		session.close();
		return re;
	}
	
	//회원정보 수정을 위하여 회원정보 가져오기
	public static MemberVo findByNo(int member_no) {
		MemberVo m = null;
		SqlSession session = sqlSessionFactory.openSession();
		m = session.selectOne("my.selectByNo", member_no);
		session.close();
		return m;
	}
}
