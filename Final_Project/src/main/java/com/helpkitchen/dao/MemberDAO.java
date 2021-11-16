package com.helpkitchen.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

import com.helpkitchen.dto.MemberVO;




public class MemberDAO {
	private MemberDAO() {
		
	}
	
	private static MemberDAO instance = new MemberDAO();
	public static MemberDAO getInstance() {
		return instance;
	}
	
	public Connection getConnection() throws Exception {
		Connection conn = null;
		Context initContext = new InitialContext();
		Context envContext = (Context) initContext.lookup("java:/comp/env");
		DataSource ds = (DataSource) envContext.lookup("jdbc/myoracle");
		conn = ds.getConnection();
		return conn;
	}
	
	//사용자 인증시 사용하는 메소드
		public int userCheck(String userid, String pwd) {
			int result = -1;
			String sql = "select pwd from member where userid=?";
			Connection conn = null;
			PreparedStatement pstmt = null;
			ResultSet rs = null;
			try {
				conn = getConnection();
				pstmt = conn.prepareStatement(sql);
				pstmt.setString(1, userid);
				rs = pstmt.executeQuery();
				if(rs.next()) {
					if(rs.getString("pwd")!=null && rs.getString("pwd").equals(pwd)) {
						result = 1;
					} else {
						result = 0;
					}
				} else {
					result = -1;
				}
			} catch(Exception e) {
				e.printStackTrace();
			} finally {
				try {
					if(rs != null) rs.close();
					if(pstmt != null) pstmt.close();
					if(conn != null) conn.close();
				} catch(Exception e) {
					e.printStackTrace();
				}
			}
			return result;
		}
		//아이디로 회원 정보 가져오는 메소드
		public MemberVO getMember(String userid) {
			MemberVO mVo = null;
			String sql = "select * from member where userid=?";
			Connection conn = null;
			PreparedStatement pstmt = null;
			ResultSet rs = null;
			try {
				conn = getConnection();
				pstmt = conn.prepareStatement(sql);
				pstmt.setString(1, userid);
				rs = pstmt.executeQuery();
				if(rs.next()) {
					mVo = new MemberVO();
					mVo.setName(rs.getString("name"));
					mVo.setUserid(rs.getString("userid"));
					mVo.setPwd(rs.getString("pwd"));
					mVo.setEmail(rs.getString("email"));
					mVo.setAdmin(rs.getInt("admin"));
				}
			} catch (Exception e) {
				e.printStackTrace();
			} finally {
				try {
					if(rs != null) rs.close();
					if(pstmt != null) pstmt.close();
					if(conn != null) conn.close();
				} catch (Exception e) {
					e.printStackTrace();
				}
			}
			return mVo;
		}
}
