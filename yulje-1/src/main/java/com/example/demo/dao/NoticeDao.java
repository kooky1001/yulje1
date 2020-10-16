package com.example.demo.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

import com.bit.action.ListNoticeAction;
import com.bit.db.ConnectionProvider;
import com.bit.vo.NoticeVo;

public class NoticeDao {
	private static NoticeDao dao;
	private NoticeDao() {}
	public static NoticeDao getInstance() {
		if (dao == null) {
			dao = new NoticeDao();
		}
		return dao;
	}
	
	public ArrayList<NoticeVo> findAll(int pageNUM) {
		ArrayList<NoticeVo> list = new ArrayList<NoticeVo>();
		int end =pageNUM * ListNoticeAction.pageSIZE;
		int start = end - (ListNoticeAction.pageSIZE - 1);
		
		String sql = "select no,title,content,regdate,hit,fname from"
				+ "(select rownum n,no,title,content,regdate,hit,fname from"
				+ "(select * from notice order by no desc)) where n between ? and ?";
		try {
			Connection conn = ConnectionProvider.getConnection();
			PreparedStatement pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, start);
			pstmt.setInt(2, end);
			ResultSet rs = pstmt.executeQuery();
			while (rs.next()) {
				list.add(new NoticeVo(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getDate(4), rs.getInt(5), rs.getString(6)));
			}
			ConnectionProvider.close(conn, pstmt, rs);
		} catch (Exception e) {
			// TODO: handle exception
			System.out.println("nolist"+e.getMessage());
		}
		return list;
	}
	
	public NoticeVo findByNo(int no) {
		NoticeVo n = null;
		String sql = "select * from notice where no=?";
		try {
			Connection conn = ConnectionProvider.getConnection();
			PreparedStatement pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, no);
			ResultSet rs = pstmt.executeQuery();
			if (rs.next()) {
				n = new NoticeVo(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getDate(4), rs.getInt(5), rs.getString(6));
			}
			ConnectionProvider.close(conn, pstmt, rs);
		} catch (Exception e) {
			// TODO: handle exception
			System.out.println("nofind:"+e.getMessage());
		}
		return n;
	}
	
	public int getNextNo() {
		int n = 0;
		String sql = "select nvl(max(no),0)+1 from notice";
		try {
			Connection conn = ConnectionProvider.getConnection();
			Statement stmt = conn.createStatement();
			ResultSet rs = stmt.executeQuery(sql);
			if (rs.next()) {
				n = rs.getInt(1);
			}
			ConnectionProvider.close(conn, stmt, rs);
		} catch (Exception e) {
			// TODO: handle exception
			System.out.println("nofind:"+e.getMessage());
		}
		return n;
	}
	
	public int getTotalRecord() {
		int n = 0;
		String sql = "select count(*) from notice";
		try {
			Connection conn = ConnectionProvider.getConnection();
			Statement stmt = conn.createStatement();
			ResultSet rs = stmt.executeQuery(sql);
			if(rs.next()) {
				n = rs.getInt(1);
			}
			ConnectionProvider.close(conn, stmt, rs);
		}catch (Exception e) {
			System.out.println("���ܹ߻�:"+e.getMessage());
		}
		return n;
	}
	
	public void updateHit(int no) {
		String sql = "update notice set hit=hit+1 where no=?";
		try {
			Connection conn = ConnectionProvider.getConnection();
			PreparedStatement pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, no);
			pstmt.executeUpdate();
			ConnectionProvider.close(conn, pstmt, null);
		}catch (Exception e) {
			System.out.println("���ܹ߻�:"+e.getMessage());
		}
	}
	
//	public void updateStep(int b_ref, int b_step) {
//		String sql = "update notice set b_step = b_step +1 "
//				+ "where b_ref=? and b_step>?";
//		try {
//			Connection conn = ConnectionProvider.getConnection();
//			PreparedStatement pstmt = conn.prepareStatement(sql);
//			pstmt.setInt(1, b_ref);
//			pstmt.setInt(2, b_step);
//			pstmt.executeUpdate();	
//			
//			ConnectionProvider.close(conn, pstmt, null);
//		}catch (Exception e) {
//			System.out.println("���ܹ߻�:"+e.getMessage());
//		}
//	}
	
	public int insert(NoticeVo a) {
		int re = -1;
		String sql = "insert into notice values(?,?,?,sysdate,0,?)";
		try {
			Connection conn = ConnectionProvider.getConnection();
			PreparedStatement pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, a.getNo());
			pstmt.setString(2, a.getTitle());
			pstmt.setString(3, a.getContent());
			pstmt.setString(4, a.getFname());
			re = pstmt.executeUpdate();
			ConnectionProvider.close(conn, pstmt, null);
		} catch (Exception e) {
			// TODO: handle exception
			System.out.println("noinsert:"+e.getMessage());
		}
		return re;
	}

}
