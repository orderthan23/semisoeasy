package com.kh.login.admin.model.dao;

import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Properties;

import com.kh.login.member.model.vo.RecoverMember;

import static com.kh.login.common.JDBCTemplate.*;

public class AdminDao {
	 private Properties prop = new Properties();
	public AdminDao() {
		String fileName = AdminDao.class.getResource("/sql/admin/admin-query.properties").getPath();
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
		
		
		
	
	
	
	public int getImageCount(Connection con) {
		Statement stmt = null;
		int imageCount = -1;
		ResultSet rset = null;
		String query = prop.getProperty("getImageCount");
		
		try {
			stmt= con.createStatement();
			rset = stmt.executeQuery(query);
			
			if(rset.next()) {
				imageCount = rset.getInt(1);
			}
		} catch (SQLException e) {

			e.printStackTrace();
		} finally {
			close(stmt);
			close(rset);
		}
		
		return imageCount;
	}






	public int getHostCount(Connection con) {
		int hostCount = -1;
		Statement stmt = null;
		ResultSet rset = null;
		String query = prop.getProperty("getHostCount");
		try {
			stmt = con.createStatement();
			rset = stmt.executeQuery(query);
			if(rset.next()) {
				hostCount = rset.getInt(1);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			close(stmt);
			close(rset);
		}
		
		return hostCount;
	}






	public int getNewSpaceCount(Connection con) {
		int newSpaceCount = -1;
		Statement stmt = null;
		ResultSet rset = null;
		String query = prop.getProperty("getNewSpaceCount");
		
		try {
			stmt = con.createStatement();
			rset = stmt.executeQuery(query);
			
			if(rset.next()) {
				newSpaceCount = rset.getInt(1);
				
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			close(stmt);
			close(rset);
		}
		
		
		
		return newSpaceCount;
	}






	public int getNewMembersCount(Connection con) {
		int newMembersCount = -1;
		Statement stmt = null;
		ResultSet rset = null;
		String query = prop.getProperty("getNewMembersCount");
		
		try {
			stmt = con.createStatement();
			rset = stmt.executeQuery(query);
			
			if(rset.next()) {
				newMembersCount = rset.getInt(1);
			}

			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			close(stmt);
			close(rset);
		}
		
		return newMembersCount;
	}






	public String getTodaysBenefit(Connection con) {
		//환불건만 가득 있으면 수익이 음수가 나올 수 있기 떄문에 문자열 형으로 받아서 null처리하여 에러를 구분후
		//나중에 파싱한 결과값을 집어넣는다.
		
		String getTodaysBenefit = "10000";
		
		return getTodaysBenefit;
	}






	public ArrayList<RecoverMember> getLatestRecoverList(Connection con) {
		Statement stmt = null;
		ResultSet rset = null;
		ArrayList<RecoverMember> recoverList = null;
		
		String query = prop.getProperty("getLatestRecoverList");
		
		try {
			stmt = con.createStatement();
			rset = stmt.executeQuery(query);
			recoverList = new ArrayList<RecoverMember>();
			while(rset.next()) {
				RecoverMember m = new RecoverMember();
				m.setrNum(rset.getInt("RESTORE_NO"));
				m.setMemberNo(rset.getInt("MEMBER_NO"));
				m.setUserId(rset.getString("M_ID"));
				m.setDropReason(rset.getString("M_DROP_REASON"));
				m.setEmail(rset.getString("RESTORE_EMAIL"));
				m.setRequestDate(rset.getDate("RESTORE_REQUEST_DATE"));
				m.setrStatus(rset.getInt("RESTORE_STATUS"));
				recoverList.add(m);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(stmt);
			close(rset);
		}
		
		
		return recoverList;
	}

}
