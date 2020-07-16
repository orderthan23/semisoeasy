package com.kh.login.board.model.service;

import java.sql.Connection;
import java.util.ArrayList;
import java.util.Properties;

import com.kh.login.board.model.dao.BoardDao;
import com.kh.login.board.model.vo.Board;
import static com.kh.login.common.JDBCTemplate.*;


public class BoardService {
	
		public ArrayList<Board> selectList() {
			
			Connection con = getConnection();
			
			ArrayList<Board> list = new BoardDao().selectList(con);
			
			close(con);
			
			
		return list;
}
		
		public int insertBoard(Board board) {

			Connection con = getConnection();
			
			int result = new BoardDao().insertBoard(con,board);
			
			if(result > 0) {
				commit(con);
			} else {
				rollback(con);
			}
			close(con);
			return result;
		}

		public Board detailBoard(int nno) {

			Connection con = getConnection();
			
			
			Board board = new BoardDao().detailBoard(con, nno);
			
			if(board != null) {
					commit(con);
			} else {
					rollback(con);
			} 
			close(con);
			
			return board;
		}

		public int updateboard(Board requestBoard) {
			Connection con = getConnection();
			int result = new BoardDao().updateboard(con,requestBoard);
			
			if(result>0) {
				commit(con);
			} else {
				rollback(con);
			}
			close(con);
			
			return result;
		}

		public int deleteBoard(int nno) {
			Connection con = getConnection();
			int result = new BoardDao().deleteBoard(con, nno);
			
			if(result > 0 ) {
				commit(con);
			} else {
				rollback(con);
			}
			close(con);
			
			return result;
		}

	

		

}
