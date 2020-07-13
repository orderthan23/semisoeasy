package com.kh.login.member.model.dao;

import static com.kh.login.common.JDBCTemplate.*;

import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Properties;

import com.kh.login.member.controller.LoginServlet;
import com.kh.login.member.model.vo.Member;

public class MemberDao {

	private Properties prop = new Properties();

	public MemberDao() {
		String fileName = MemberDao.class.getResource("/sql/member/member-query.properties").getPath();

		try {
			prop.load(new FileReader(fileName));
		} catch (FileNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	public int checkStatus(Connection con, Member requestMember) {
		PreparedStatement pstmt = null;
		int result = LoginServlet.LOGIN_FAILED;
		
		ResultSet rset = null;
		
		String query = prop.getProperty("checkStatus");
		try {
			pstmt = con.prepareStatement(query);
			pstmt.setString(1, requestMember.getmId());
			
			rset = pstmt.executeQuery();
			
			String userId ="";
			String password = "";
			int power = 0;
			
			if(rset.next()) {
				userId = rset.getString("M_ID");
				password = rset.getString("M_PASSWORD");
				power = rset.getInt("P_TYPE");
			}
			

			
			if (requestMember.getmId().equals(userId) && requestMember.getmPassword().equals(password)) {

				if (power==3) {
					result = LoginServlet.LOGIN_ADMIN;
				} else if (power==2) {
					result = LoginServlet.LOGIN_HOST;
				} else {
					result = LoginServlet.LOGIN_GUEST;
				}
			}

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			close(pstmt);
			close(rset);
		}

		return result;
	}

	public Member selectOne(Connection con, Member requestMember) {
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		Member loginUser = null;

		String query = prop.getProperty("selectOne");

		try {
			pstmt = con.prepareStatement(query);
			pstmt.setString(1, requestMember.getmId());
			pstmt.setString(2, requestMember.getmPassword());

			rset = pstmt.executeQuery();

			if (rset.next()) {
				loginUser = new Member();
				loginUser.setMemberNo(rset.getInt("MEMBER_NO"));
				loginUser.setpType(rset.getInt("P_TYPE"));
				loginUser.setmName(rset.getString("M_NAME"));
				loginUser.setmId(rset.getString("M_ID"));
				loginUser.setmNick(rset.getString("M_NICK"));
				loginUser.setmPassword(rset.getString("M_PASSWORD"));
				loginUser.setmPhone(rset.getString("M_PHONE"));
				loginUser.setmEmail(rset.getString("M_EMAIL"));
				loginUser.setEnrollDate(rset.getDate("M_ENROLL_DATE"));
			}

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}

		return loginUser;
	}

	//아이디 중복 체크 하는 메소드
	public int idCheck(Connection con, String userId) {
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		int result = 0;
		
		String query = prop.getProperty("idCheck");
		
		
		try {
			pstmt = con.prepareStatement(query);
			pstmt.setString(1, userId);
			rset = pstmt.executeQuery();
			
			if(rset.next()) {
				result = rset.getInt(1);
			}
		} catch (SQLException e) {

			e.printStackTrace();
		}finally {
			close(rset);
			close(pstmt);
		}
	
		
		return result;
	}

	public int nickCheck(Connection con, String nickName) {
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		int result = 0;
		String query = prop.getProperty("nickCheck");
		try {
			pstmt = con.prepareStatement(query);
			pstmt.setString(1, nickName);
			rset = pstmt.executeQuery();
			if(rset.next()){
				result = rset.getInt(1);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		
		return result;
	}

	public int checkEmail(Connection con, String email) {
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		int result =0;
		String query = prop.getProperty("checkEmail");
		try {
			pstmt = con.prepareStatement(query);
			pstmt.setString(1, email);
			rset = pstmt.executeQuery();
			if(rset.next()){
				result = rset.getInt(1);
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		
		return result;
	
	}

	public int checkYou(Connection con, String phoneNum, String name) {
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		int result =0;
		String query = prop.getProperty("checkYou");
		try {
			pstmt = con.prepareStatement(query);
			pstmt.setString(1, phoneNum);
			pstmt.setString(2, name);
			rset = pstmt.executeQuery();
			if(rset.next()){
				result = rset.getInt(1);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		
		return result;
	}

	public int insertMember(Connection con, Member requestMember) {
		PreparedStatement pstmt = null;
		int insertResult = 0;
		String query = prop.getProperty("insertMember");
		
		try {
			pstmt = con.prepareStatement(query);
			pstmt.setString(1, requestMember.getmName());
			pstmt.setString(2, requestMember.getmId());
			pstmt.setString(3, requestMember.getmNick());
			pstmt.setString(4, requestMember.getmPassword());
			pstmt.setString(5, requestMember.getmPhone());
			pstmt.setString(6, requestMember.getmEmail());
			
			insertResult= pstmt.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		
		return insertResult;
		
	
	}

	public String findId(Connection con, String name, String email) {
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String resultId = null;
		
		String query = prop.getProperty("findId");
		//아직 쿼리 안썼다.
		
		try {
			pstmt = con.prepareStatement(query);
			pstmt.setString(1, name);
			pstmt.setString(2, email);
			rset = pstmt.executeQuery();
			
			if(rset.next()) {
				resultId = rset.getString("M_ID");
			}
		
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			
			close(pstmt);
			close(rset);
		}
		
		return resultId;
	}

	public int findPwd(Connection con, String id, String email) {
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		int resultPwd = 0;
		String query = prop.getProperty("findPwd");
		try {
			pstmt = con.prepareStatement(query);
			pstmt.setString(1, id);
			pstmt.setString(2, email);
			rset = pstmt.executeQuery();
			
			if(rset.next()) {
				resultPwd = rset.getInt("MEMBER_NO");
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		return resultPwd;
	}

	public int updatePwd(Connection con, String password, int memNo) {
		PreparedStatement pstmt = null;
		int result = 0;
		String query = prop.getProperty("updatePwd");
		try {
			pstmt = con.prepareStatement(query);
			pstmt.setString(1, password);
			pstmt.setInt(2, memNo);
			result = pstmt.executeUpdate();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			close(pstmt);
		}
		
		
		return result;
	}

}
