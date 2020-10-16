package com.example.demo.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import com.bit.db.ConnectionProvider;
import com.bit.vo.Doc_EducationVo;


public class Doc_EducationDao {
	private static Doc_EducationDao dao;
	private Doc_EducationDao() {
	}
	public static Doc_EducationDao getInstance() {
		if (dao == null) {
			dao = new Doc_EducationDao();
		}
		return dao;
	}
	
	public ArrayList<Doc_EducationVo> findAll(int doc_no){
		ArrayList<Doc_EducationVo> list = new ArrayList<Doc_EducationVo>();
		String sql = "select * from doc_Education where doc_no=? order by edu_sdate desc";
		try {
			Connection conn = ConnectionProvider.getConnection();
			PreparedStatement pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, doc_no);
			ResultSet rs = pstmt.executeQuery();
			while (rs.next()) {
				list.add(new Doc_EducationVo(rs.getInt(1), rs.getDate(2), rs.getDate(3), rs.getString(4), rs.getInt(5)));
			}
			ConnectionProvider.close(conn, pstmt, rs);
		} catch (Exception e) {
			// TODO: handle exception
			System.out.println("edulist:"+e.getMessage());
		}
		return list;
	}
	
	public int insert(Doc_EducationVo e) {
		int re = -1;
		String sql = "insert into doctor values(?,?,?,?,?)";
		try {
			Connection conn = ConnectionProvider.getConnection();
			PreparedStatement pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, e.getEdu_no());
			pstmt.setDate(2, e.getEdu_sdate());
			pstmt.setDate(3, e.getEdu_edate());
			pstmt.setString(4, e.getEdu_content());
			pstmt.setInt(5, e.getDoc_no());
			re = pstmt.executeUpdate();
			ConnectionProvider.close(conn, pstmt, null);
		} catch (Exception ex) {
			// TODO: handle exception
			System.out.println("insertedu"+ex.getMessage());
		}
		return re;
	}
}
