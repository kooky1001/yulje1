package com.example.demo.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

import com.bit.action.ListAdviceAction;
import com.bit.db.ConnectionProvider;
import com.bit.vo.AdviceVo;

public class AdviceDao {
	private static AdviceDao dao;
	private AdviceDao() {}
	public static AdviceDao getInstance() {
		if (dao == null) {
			dao = new AdviceDao();
		}
		return dao;
	}
	
	public ArrayList<AdviceVo> findAll(int pageNUM, int member_no) {
		ArrayList<AdviceVo> list = new ArrayList<AdviceVo>();
		int end =pageNUM * ListAdviceAction.pageSIZE;
		int start = end - (ListAdviceAction.pageSIZE - 1);
		
		String sql = "select no,member_no,title,writer,content,regdate,hit,b_ref,b_level,b_step,fname,category from"
				+ "(select rownum n,no,member_no,title,writer,content,regdate,hit,b_ref,b_level,b_step,fname,category from"
				+ "(select * from advice_board";
				if (member_no != 0) {
					sql += " where b_ref in (select b_ref from advice_board where member_no="+member_no+")";
				}
				
				sql += " order by b_ref desc, b_step)) where n between ? and ?";
		try {
			Connection conn = ConnectionProvider.getConnection();
			PreparedStatement pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, start);
			pstmt.setInt(2, end);
			ResultSet rs = pstmt.executeQuery();
			while (rs.next()) {
				list.add(new AdviceVo(rs.getInt(1), rs.getInt(2), rs.getString(3), rs.getString(4), rs.getString(5), rs.getDate(6), rs.getInt(7), rs.getInt(8), rs.getInt(9), rs.getInt(10), rs.getString(11), rs.getString(12)));
			}
			ConnectionProvider.close(conn, pstmt, rs);
		} catch (Exception e) {
			// TODO: handle exception
			System.out.println("adlist"+e.getMessage());
		}
		return list;
	}
	
	public AdviceVo findByNo(int no) {
		AdviceVo a = null;
		String sql = "select * from advice_board where no=?";
		try {
			Connection conn = ConnectionProvider.getConnection();
			PreparedStatement pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, no);
			ResultSet rs = pstmt.executeQuery();
			if (rs.next()) {
				a = new AdviceVo(rs.getInt(1), rs.getInt(2), rs.getString(3), rs.getString(4), rs.getString(5), rs.getDate(6), rs.getInt(7), rs.getInt(8), rs.getInt(9), rs.getInt(10), rs.getString(11), rs.getString(12));
			}
			ConnectionProvider.close(conn, pstmt, rs);
		} catch (Exception e) {
			// TODO: handle exception
			System.out.println("adfind:"+e.getMessage());
		}
		return a;
	}
	
	public int getNextNo() {
		int n = 0;
		String sql = "select nvl(max(no),0)+1 from advice_board";
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
			System.out.println("adfind:"+e.getMessage());
		}
		return n;
	}
	
	public int getTotalRecord(int member_no) {
		int n = 0;
		String sql = "select count(*) from advice_board";
		if (member_no != 0) {
			sql += " where b_ref in (select b_ref from advice_board where member_no="+member_no+")";
	}
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
		String sql = "update advice_board set hit=hit+1 where no=?";
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
	
	public void updateStep(int b_ref, int b_step) {
		String sql = "update advice_board set b_step = b_step +1 "
				+ "where b_ref=? and b_step>?";
		try {
			Connection conn = ConnectionProvider.getConnection();
			PreparedStatement pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, b_ref);
			pstmt.setInt(2, b_step);
			pstmt.executeUpdate();	
			
			ConnectionProvider.close(conn, pstmt, null);
		}catch (Exception e) {
			System.out.println("���ܹ߻�:"+e.getMessage());
		}
	}
	
	public int insert(AdviceVo a) {
		int re = -1;
		String sql = "insert into advice_board values(?,?,?,?,?,sysdate,0,?,?,?,?,?)";
		try {
			Connection conn = ConnectionProvider.getConnection();
			PreparedStatement pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, a.getNo());
			pstmt.setInt(2, a.getMember_no());
			pstmt.setString(3, a.getTitle());
			pstmt.setString(4, a.getWriter());
			pstmt.setString(5, a.getContent());
			pstmt.setInt(6, a.getB_ref());
			pstmt.setInt(7, a.getB_level());
			pstmt.setInt(8, a.getB_step());
			pstmt.setString(9, a.getFname());
			pstmt.setString(10, a.getCategory());
			re = pstmt.executeUpdate();
			ConnectionProvider.close(conn, pstmt, null);
		} catch (Exception e) {
			// TODO: handle exception
			System.out.println("adinsert:"+e.getMessage());
		}
		return re;
	}
	
	public int update(AdviceVo a, int member_no) {
		int re = -1;
		String sql = "update advice_board set title=?, content=?, fname=?, category=? where no=? and member_no=?";
		try {
			Connection conn = ConnectionProvider.getConnection();
			PreparedStatement pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, a.getTitle());
			pstmt.setString(2, a.getContent());
			pstmt.setString(3, a.getFname());
			pstmt.setString(4, a.getCategory());
			pstmt.setInt(5, a.getNo());
			pstmt.setInt(6, member_no);
			re = pstmt.executeUpdate();
			ConnectionProvider.close(conn, pstmt, null);
		} catch (Exception e) {
			// TODO: handle exception
			System.out.println("adupdate:"+e.getMessage());
		}
		return re;
	}
	
	public int delete(int no, int member_no) {
		int re = -1;
		String sql = "delete advice_board where no=? and member_no=?";
		try {
			Connection conn = ConnectionProvider.getConnection();
			PreparedStatement pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, no);
			pstmt.setInt(2, member_no);
			re = pstmt.executeUpdate();
			ConnectionProvider.close(conn, pstmt, null);
		} catch (Exception e) {
			// TODO: handle exception
			System.out.println("addelete:"+e.getMessage());
		}
		return re;
	}
	
}
