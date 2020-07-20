package com.kh.login.board.model.dao;

import java.io.FileReader;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Properties;

import com.kh.login.board.model.vo.Board;
import com.kh.login.host.manageReserve.model.vo.PageInfo;

import static com.kh.login.common.JDBCTemplate.*;

public class BoardDao {

	private Properties prop = new Properties();

	public BoardDao() {
		String fileName = BoardDao.class.getResource("/sql/board/board-query.properties").getPath();
		try {
			prop.load(new FileReader(fileName));
			System.out.println(fileName);
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
//	public ArrayList<Board> selectList(Connection con) {
//		Statement stmt = null;
//		ResultSet rset = null;
//		ArrayList<Board> list = null;
//
//		String query = prop.getProperty("selectList");
//
//		try {
//			stmt = con.createStatement();
//			rset = stmt.executeQuery(query);
//
//			list = new ArrayList<Board>();
//
//			while (rset.next()) {
//				Board b = new Board();
//				b.setNoticeNo(rset.getInt("NOTICE_NO"));
//				b.setnCategory(rset.getInt("N_CATEGORY"));
//				b.setnTitle(rset.getString("N_TITLE"));
//				b.setmNick(rset.getString("M_NICK"));
//				b.setnDate(rset.getDate("N_ENROLL_DATE"));
//				b.setnContent(rset.getString("N_CONTENT"));
//				b.setnStatus(rset.getString("N_STATUS"));
//				
//				list.add(b);
//				System.out.println(b);
//			}
//		} catch (SQLException e) {
//			e.printStackTrace();
//		} finally {
//			close(stmt);
//			close(rset);
//		}
//
//		return list;
//
//	}

	public ArrayList<Board> selectFAQList(Connection con) {
		Statement stmt = null;
		ResultSet rset = null;
		ArrayList<Board> list = null;

		String query = prop.getProperty("selectFAQList");

		try {
			stmt = con.createStatement();
			rset = stmt.executeQuery(query);

			list = new ArrayList<Board>();

			while (rset.next()) {
				Board b = new Board();
				b.setNoticeNo(rset.getInt("NOTICE_NO"));
				b.setnCategory(rset.getInt("N_CATEGORY"));
				b.setnTitle(rset.getString("N_TITLE"));
				b.setmNick(rset.getString("M_NICK"));
				b.setnDate(rset.getDate("N_ENROLL_DATE"));
				b.setnContent(rset.getString("N_CONTENT"));
				b.setnStatus(rset.getString("N_STATUS"));
				
				list.add(b);
				System.out.println(b);
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(stmt);
			close(rset);
		}

		return list;

	}
	
	public int insertBoard(Connection con, Board board) {
		PreparedStatement pstmt = null;
		int result = 0;

		String query = prop.getProperty("insertBoard");

		try {
			pstmt = con.prepareStatement(query);
			pstmt.setInt(1, board.getAdminNo());
			pstmt.setInt(2, board.getnCategory());			
			pstmt.setString(3, board.getnContent());
			pstmt.setString(4, board.getnTitle());
			System.out.println(board.getnContent());
			System.out.println(board.getnTitle());
			result = pstmt.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}

		return result;

	}

	public Board detailBoard(Connection con, int nno) {
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		Board board = null;
		
		String query = prop.getProperty("detailBoard");
		
		try {
			pstmt = con.prepareStatement(query);
			pstmt.setInt(1, nno);
			rset = pstmt.executeQuery();
			
			if(rset.next()) {
				board = new Board();
				
				board.setNoticeNo(rset.getInt("NOTICE_NO"));
				board.setnCategory(rset.getInt("N_CATEGORY"));
				board.setnTitle(rset.getString("N_TITLE"));
				board.setmNick(rset.getString("M_NICK"));
				board.setnDate(rset.getDate("N_ENROLL_DATE"));
				board.setnContent(rset.getString("N_CONTENT"));
				board.setnStatus(rset.getString("N_STATUS"));
				System.out.println("읽어온 공지글 정보 : " + board);
			}
		
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
			close(rset);
		}
		
		return board;
		
	}

	public int updateboard(Connection con, Board requestBoard) {
		PreparedStatement pstmt = null;
		int result = 0;
		
		String query = prop.getProperty("updateBoard");
		
		try {
			pstmt = con.prepareStatement(query);
			pstmt.setString(1, requestBoard.getnTitle());
			pstmt.setInt(2, requestBoard.getnCategory());
			pstmt.setString(3, requestBoard.getnContent());
			pstmt.setInt(4, requestBoard.getNoticeNo());
			
			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		return result;
	}

	public int deleteBoard(Connection con, int nno) {
		PreparedStatement pstmt = null;
		int result = 0;
		
		String query = prop.getProperty("deleteBoard");
		
		try {
			pstmt = con.prepareStatement(query);
			pstmt.setInt(1, nno);
			
			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		
		
		return result;
	}
	public int getListCount(Connection con) {
		Statement stmt = null;
		int listCount = 0;
		ResultSet rset = null;
		
		String query = prop.getProperty("listCount");
		
		try {
			stmt = con.createStatement();
			rset = stmt.executeQuery(query);
			
			if(rset.next()) {
				// 첫번째로 조회된 값 가져오기
				
				listCount = rset.getInt(1);
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(stmt);
			close(rset);
		}
		
		
		return listCount;
	}


	public ArrayList<Board> selectList(Connection con, PageInfo pi) {
	      PreparedStatement pstmt = null;
	      ResultSet rset = null;
	      ArrayList<Board> list = null;
	      
	      String query = prop.getProperty("selectList");
	      
	      try {
	         pstmt = con.prepareStatement(query);

	         int startRow = (pi.getCurrentPage() - 1) * pi.getCurrentPage() + 1;
	         int endRow = startRow + pi.getLimit() -1;
	         
	         pstmt.setInt(1, startRow);
	         pstmt.setInt(2, endRow);
	         
	         
	         rset = pstmt.executeQuery();
	         
	         list = new ArrayList<>(); 
	         
	         while(rset.next()) {
	    		Board b = new Board();
				b.setNoticeNo(rset.getInt("NOTICE_NO"));
				b.setnCategory(rset.getInt("N_CATEGORY"));
				b.setnTitle(rset.getString("N_TITLE"));
				b.setmNick(rset.getString("M_NICK"));
				b.setnDate(rset.getDate("N_ENROLL_DATE"));
				b.setnContent(rset.getString("N_CONTENT"));
				b.setnStatus(rset.getString("N_STATUS"));
				
				list.add(b);
	         }
	         
	         
	      } catch (SQLException e) {
	         e.printStackTrace();
	      } finally {
	         close(rset);
	         close(pstmt);
	      }
	      
	      
	      return list;
	      
	   }

	public ArrayList<Board> selectFAQList(Connection con, PageInfo pi) {

		 PreparedStatement pstmt = null;
	      ResultSet rset = null;
	      ArrayList<Board> list = null;
	      
	      String query = prop.getProperty("selectFAQList");
	      
	      try {
	         pstmt = con.prepareStatement(query);

	         int startRow = (pi.getCurrentPage() - 1) * pi.getCurrentPage() + 1;
	         int endRow = startRow + pi.getLimit() -1;
	         
	         pstmt.setInt(1, startRow);
	         pstmt.setInt(2, endRow);
	         
	         
	         rset = pstmt.executeQuery();
	         
	         list = new ArrayList<>(); 
	         
	         while(rset.next()) {
	    		Board b = new Board();
				b.setNoticeNo(rset.getInt("NOTICE_NO"));
				b.setnCategory(rset.getInt("N_CATEGORY"));
				b.setnTitle(rset.getString("N_TITLE"));
				b.setmNick(rset.getString("M_NICK"));
				b.setnDate(rset.getDate("N_ENROLL_DATE"));
				b.setnContent(rset.getString("N_CONTENT"));
				b.setnStatus(rset.getString("N_STATUS"));
				
				list.add(b);
	         }
	         
	         
	      } catch (SQLException e) {
	         e.printStackTrace();
	      } finally {
	         close(rset);
	         close(pstmt);
	      }
	      
	      
	      return list;
		
	}

	

}
 