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

public class BoardDao {

		private	Properties prop = new Properties();
		
		public BoardDao() {
			String fileName = BoardDao.class.getResource("/sql/board/board-query.properties").getPath();
			
			try {
				prop.load(new FileReader(fileName));
			} catch(IOException e) {
				e.printStackTrace();
			}
		}
		public ArrayList<Board> selectList(Connection con) {
			Statement stmt = null;
			ResultSet rset = null;
			ArrayList<Board> list = null;
			
			String query = prop.getProperty("selectList");
			
			try {
				stmt = con.createStatement();
				rset = stmt.executeQuery(query);
				
				list = new ArrayList<Board>();
				
				while(rset.next()) {
					Board b = new Board();
					b.setNoticeNo("NOTICE_NO");
					b.setAdminNo("ADMIN_NO");
					b.setnCategory("N_CATEGORY");
					b.setnDate("N_ENROLL_DATE");
					b.setnContent("N_CONTENT");
					b.setnStatus("N_STATUS");
					
					list.add(b);
				}
			} catch (SQLException e) {
				e.printStackTrace();
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
			} catch (SQLException e) {
				e.printStackTrace();
			}
			
			
			
			return result;
			
		
		
		}

		

}
