package com.kh.login.member.model.dao;

import static com.kh.login.common.JDBCTemplate.close;

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
			pstmt.setString(1, requestMember.getUserId());
			
			rset = pstmt.executeQuery();
			
			String userId ="";
			String password = "";
			String power = "";
			
			if(rset.next()) {
				userId = rset.getString("USER_ID");
				password = rset.getString("USER_PWD");
				power = rset.getString("POWER_CODE");
			}
			

			
			if (requestMember.getUserId().equals(userId) && requestMember.getPassword().equals(password)) {

				if (power.equals("P1")) {
					result = LoginServlet.LOGIN_ADMIN;
				} else if (power.equals("P2")) {
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
			pstmt.setString(1, requestMember.getUserId());
			pstmt.setString(2, requestMember.getPassword());

			rset = pstmt.executeQuery();

			if (rset.next()) {
				loginUser = new Member();

				loginUser.setUserId(rset.getString("USER_ID"));
				loginUser.setPassword(rset.getString("USER_PWD"));
				loginUser.setUserName(rset.getString("USER_NAME"));
				loginUser.setGender(rset.getString("GENDER"));
				loginUser.setAge(rset.getInt("AGE"));
				loginUser.setEmail(rset.getString("EMAIL"));
				loginUser.setPhone(rset.getString("PHONE"));
				loginUser.setAddress(rset.getString("ADDRESS"));
				loginUser.setHobby(rset.getString("HOBBY"));
				loginUser.setPower(rset.getString("POWER_CODE"));
				loginUser.setEnrollDate(rset.getDate("ENROLL_DATE"));
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

}
