package com.example.demo.dao;


import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

import com.bit.db.ConnectionProvider;
import com.bit.vo.DepartmentVo;

public class DepartmentDao {

	public int updateDEPT(DepartmentVo d) {
		int re = -1;

		String sql = "update department set dept_name=?,dept_group=?,dept_explain=? where dept_no=?";

		try {

			Connection conn = ConnectionProvider.getConnection();
			PreparedStatement pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, d.getDept_name());
			pstmt.setString(2, d.getDept_group());
			pstmt.setString(3, d.getDept_explain());
			pstmt.setInt(4, d.getDept_no());

			re = pstmt.executeUpdate();
			ConnectionProvider.close(conn, pstmt, null);

		} catch (Exception e) {
			System.out.println("���ܹ߻�" + e.getMessage());
		}

		return re;
	}

	public int deleteDEPT(int dept_no) {
		int re = -1;
		String sql = "delete department where dept_no=?";
		try {
			Connection conn = ConnectionProvider.getConnection();
			PreparedStatement pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, dept_no);
			re = pstmt.executeUpdate();
			ConnectionProvider.close(conn, pstmt, null);
		} catch (Exception e) {
			// TODO: handle exception
			System.out.println("���ܹ߻�:" + e.getMessage());
		}
		return re;
	}

	public DepartmentVo findByDEPT(int dept_no) {
		DepartmentVo d = null;
		String sql = "select * from department where dept_no=?";
		try {
			Connection conn = ConnectionProvider.getConnection();
			PreparedStatement pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, dept_no);
			ResultSet rs = pstmt.executeQuery();
			if (rs.next()) {
				d = new DepartmentVo(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4),rs.getString(5));
			}
			ConnectionProvider.close(conn, pstmt, rs);
		} catch (Exception e) {
			// TODO: handle exception
			System.out.println("���ܹ߻�:" + e.getMessage());
		}
		return d;
	}

	public ArrayList<DepartmentVo> selectGSDEPT() {
		ArrayList<DepartmentVo> GSlist = new ArrayList<DepartmentVo>();
		String sql = "select * from department where dept_group='�ܰ�'";
		try {
			
			Connection conn = ConnectionProvider.getConnection();
			Statement stmt = conn.createStatement();
			
			ResultSet rs = stmt.executeQuery(sql);
			while (rs.next()) {
				GSlist.add(new DepartmentVo(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4),rs.getString(5)));
			}
			ConnectionProvider.close(conn, stmt, rs);
		} catch (Exception e) {
			// TODO: handle exception
			System.out.println("���ܹ߻�:" + e.getMessage());
		}
		return GSlist;
	}
	
	public ArrayList<DepartmentVo> selectIMDEPT() {
		ArrayList<DepartmentVo> IMlist = new ArrayList<DepartmentVo>();
		String sql = "select * from department where dept_group='����'";
		try {
			
			Connection conn = ConnectionProvider.getConnection();
			Statement stmt = conn.createStatement();
			
			ResultSet rs = stmt.executeQuery(sql);
			while (rs.next()) {
				IMlist.add(new DepartmentVo(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4),rs.getString(5)));
			}
			ConnectionProvider.close(conn, stmt, rs);
		} catch (Exception e) {
			// TODO: handle exception
			System.out.println("���ܹ߻�:" + e.getMessage());
		}
		return IMlist;
	}
	
	
	public ArrayList<DepartmentVo> selectDEPT() {
		ArrayList<DepartmentVo> list = new ArrayList<DepartmentVo>();
		String sql = "select * from department where dept_group='�Ϲݰ�'";
		try {
			
			Connection conn = ConnectionProvider.getConnection();
			Statement stmt = conn.createStatement();
			
			ResultSet rs = stmt.executeQuery(sql);
			while (rs.next()) {
				list.add(new DepartmentVo(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4),rs.getString(5)));
			}
			ConnectionProvider.close(conn, stmt, rs);
		} catch (Exception e) {
			// TODO: handle exception
			System.out.println("���ܹ߻�:" + e.getMessage());
		}
		return list;
	}

	public int insertDEPT(DepartmentVo d) {
		int re = -1;
		try {
			String sql = "insert into department(dept_no,dept_name,dept_group,dept_explain) values(?,?,?,?,?)";
			Connection conn = ConnectionProvider.getConnection();
			PreparedStatement pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, d.getDept_no());
			pstmt.setString(2, d.getDept_name());
			pstmt.setString(3, d.getDept_group());
			pstmt.setString(4, d.getDept_explain());
			pstmt.setInt(5, d.getDept_no());
			re = pstmt.executeUpdate();
			ConnectionProvider.close(conn, pstmt, null);
		} catch (Exception e) {
			// TODO: handle exception
			System.out.println("���ܹ߻�:" + e.getMessage());
		}
		return re;
	}

}
