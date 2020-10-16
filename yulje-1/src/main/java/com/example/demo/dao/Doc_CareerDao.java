package com.example.demo.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import com.bit.db.ConnectionProvider;
import com.bit.vo.Doc_CareerVo;

public class Doc_CareerDao {
	private static Doc_CareerDao dao;
	private Doc_CareerDao() {
	}
	public static Doc_CareerDao getInstance() {
		if (dao == null) {
			dao = new Doc_CareerDao();
		}
		return dao;
	}
	
	public ArrayList<Doc_CareerVo> findAll(int doc_no){
		ArrayList<Doc_CareerVo> list = new ArrayList<Doc_CareerVo>();
		String sql = "select * from doc_career where doc_no=? order by car_sdate desc";
		try {
			Connection conn = ConnectionProvider.getConnection();
			PreparedStatement pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, doc_no);
			ResultSet rs = pstmt.executeQuery();
			while (rs.next()) {
				list.add(new Doc_CareerVo(rs.getInt(1), rs.getDate(2), rs.getDate(3), rs.getString(4), rs.getInt(5)));
			}
			ConnectionProvider.close(conn, pstmt, rs);
		} catch (Exception e) {
			// TODO: handle exception
			System.out.println("carlist:"+e.getMessage());
		}
		return list;
	}
	
	public int insert(Doc_CareerVo c) {
		int re = -1;
		String sql = "insert into doctor values(?,?,?,?,?)";
		try {
			Connection conn = ConnectionProvider.getConnection();
			PreparedStatement pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, c.getCar_no());
			pstmt.setDate(2, c.getCar_sdate());
			pstmt.setDate(3, c.getCar_edate());
			pstmt.setString(4, c.getCar_content());
			pstmt.setInt(5, c.getDoc_no());
			re = pstmt.executeUpdate();
			ConnectionProvider.close(conn, pstmt, null);
		} catch (Exception e) {
			// TODO: handle exception
			System.out.println("insertcar"+e.getMessage());
		}
		return re;
	}
}
