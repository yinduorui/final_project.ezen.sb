package com.helpkitchen.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.helpkitchen.dto.BoardVO;
import com.helpkitchen.dto.MemberVO;

import util.DBConnector;

public class HelpkitchenDAO {

	private HelpkitchenDAO() {
	}

	private static HelpkitchenDAO instance = new HelpkitchenDAO();

	public static HelpkitchenDAO getInstance() {
		return instance;
	}

	public MemberVO getMember(String id) {
		MemberVO mVo = null;
		String sql = "select * from member where m_id=?";
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			conn = DBConnector.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				mVo = new MemberVO();
				mVo.setmNum(rs.getInt("m_num"));
				mVo.setmId(rs.getString("m_id"));
				mVo.setmPassword(rs.getString("m_password"));
				mVo.setmNickName(rs.getString("m_nickname"));
				mVo.setmEmail(rs.getString("m_email"));
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if (rs != null)
					rs.close();
				if (pstmt != null)
					pstmt.close();
				if (conn != null)
					conn.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		return mVo;
	}

	public int emailCheck(String email) {
		int result = -1;
		String sql = "select m_email from member where m_email=?";
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		try {
			conn = DBConnector.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, email);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				result = -1;
			} else {
				result = 1;
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if (rs != null)
					rs.close();
				if (pstmt != null)
					pstmt.close();
				if (conn != null)
					conn.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		return result;
	}

	public int idCheck(String userid) {
		int result = -1;
		String sql = "select m_id from member where m_id=?";
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		try {
			conn = DBConnector.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, userid);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				result = -1;
			} else {
				result = 1;
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if (rs != null)
					rs.close();
				if (pstmt != null)
					pstmt.close();
				if (conn != null)
					conn.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		return result;
	}

	public int insertMember(MemberVO mVo) {
		int result = -1;
		String sql = "insert into member values(sql_member.nextval, ?, ?, ?, ?)";
		Connection con = null;
		PreparedStatement pstmt = null;
		try {
			con = DBConnector.getConnection();
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, mVo.getmId());
			pstmt.setString(2, mVo.getmPassword());
			pstmt.setString(3, mVo.getmNickName());
			pstmt.setString(4, mVo.getmEmail());
			result = pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				DBConnector.close(con, pstmt);
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		return result;

	}

	public int userCheck(String id, String password) {
		int result = -1;
		String sql = "select m_password from member where m_id=?";
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			conn = DBConnector.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();

			if (rs.next()) {
				if (rs.getString("m_password") != null && rs.getString("m_password").equals(password)) {
					result = 1; // 로그인 성공
				} else {
					result = 0; // 비밀번호 틀림
				}
			} else {
				result = -1; // 존재하지 않는 아이디
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if (rs != null)
					rs.close();
				if (pstmt != null)
					pstmt.close();
				if (conn != null)
					conn.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		return result;
	}
	
	public void newPassword(String password, String email) {
		String sql = "UPDATE member SET m_password=? WHERE m_email=?";
		Connection conn = null;
		PreparedStatement pstmt = null;
		try {
			conn = DBConnector.getConnection();
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, password);
			pstmt.setString(2, email);

			pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DBConnector.close(conn, pstmt);
		}

	}

	// 11/23 이민혁 최신순으로 게시글 보기
	public List<BoardVO> selectAllBoards() {
		String sql = "select * from board order by b_num desc";
		
		List<BoardVO> list = new ArrayList<>();
		Connection conn = null;
		Statement stmt = null;
		ResultSet rs = null;
		
		try {
			conn = DBConnector.getConnection();
			stmt = conn.createStatement();
			
			rs = stmt.executeQuery(sql);
			
			while (rs.next()) {
				BoardVO bVo = new BoardVO();
				
				bVo.setbNum(rs.getLong("b_num"));
				bVo.setbNickName(rs.getString("b_nickName"));
				bVo.setbTitle(rs.getString("b_title"));
				bVo.setbContent(rs.getString("b_content"));
				bVo.setbCredat(rs.getString("b_credat"));
				bVo.setbHashTag(rs.getString("b_hashTag"));
				bVo.setbVote(rs.getLong("b_vote"));
				bVo.setbViews(rs.getLong("b_views"));
				bVo.setbImage(rs.getBytes("b_image"));
				
				list.add(bVo);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DBConnector.close(conn, stmt);
		}
		return list;
	}
	
	// 11/29 이민혁 id값 테이블 수정후 id값 받기, 이미지 등록 미구현.
	public int insertBoard(BoardVO bVo) {
		int result = 0;
		String sql = "INSERT INTO board(B_NUM, B_NICKNAME, B_TITLE, B_CONTENT, B_HASHTAG) "
				+ "values(sql_board.nextval, ?, ?, ?, ?)";
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		
		try {
			conn = DBConnector.getConnection();
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, bVo.getbNickName());
			pstmt.setString(2, bVo.getbTitle());
			pstmt.setString(3, bVo.getbContent());
			pstmt.setString(4, bVo.getbHashTag());
			pstmt.executeUpdate();
			result = 1;
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DBConnector.close(conn, pstmt);
		}
		return result;
	}
	
	// 11/23 이민혁
	public void updateViews(String bNum) {
		String sql = "update board set views=views+1 where b_num=?";
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		
		try {
			conn = DBConnector.getConnection();
			
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, bNum);
			
			pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DBConnector.close(conn, pstmt);
		}
	}
	
	// 11/23 게시판 글 상세보기
	public BoardVO selectOneBoardByNum(String bNum) {
		String sql = "select * from board where b_num = ?";
		
		BoardVO bVo = null;
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try {
			conn = DBConnector.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, bNum);
			
			rs = pstmt.executeQuery();
			
			if (rs.next()) {
				bVo = new BoardVO();
				
				bVo.setbNum(rs.getLong("b_num"));
				bVo.setbNickName(rs.getString("b_nickName"));
				bVo.setbTitle(rs.getString("b_title"));
				bVo.setbContent(rs.getString("b_content"));
				bVo.setbCredat(rs.getString("b_credat"));
				bVo.setbHashTag(rs.getString("b_hashTag"));
				bVo.setbVote(rs.getLong("b_vote"));
				bVo.setbViews(rs.getLong("b_views"));
				bVo.setbImage(rs.getBytes("b_image"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DBConnector.close(conn, pstmt, rs);
		}
		return bVo;
	}
	
	// 11/23 이민혁 게시글 수정
	public void updateBoard(BoardVO bVo) {
		String sql = "update board set b_title=?, b_content=?, b_hashTag=?, b_image=? where b_num=?";
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		
		try {
			conn = DBConnector.getConnection();
			
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, bVo.getbTitle());
			pstmt.setString(2, bVo.getbContent());
			pstmt.setString(3, bVo.getbHashTag());
			pstmt.setBytes(4, bVo.getbImage());
			pstmt.setLong(5, bVo.getbNum());
			
			pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DBConnector.close(conn, pstmt);
		}
	}
	
	// 11/23 이민혁 게시글 삭제
	public void deleteBoard(String bNum) {
		String sql = "delete board where b_num=?";
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		
		try {
			conn = DBConnector.getConnection();
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, bNum);
			
			pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DBConnector.close(conn, pstmt);
		}
	}
	
}