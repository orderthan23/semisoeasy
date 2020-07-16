package com.kh.login.space.model.dao;

import java.io.FileReader;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Properties;

import static com.kh.login.common.JDBCTemplate.*;

import com.kh.login.space.model.vo.SpaceReservation;

public class SpaceReservationDao {
	
	private Properties prop = new Properties();
	
	public SpaceReservationDao() {
		
		String propName = SpaceDao.class.getResource("/sql/space/space-query.properties").getPath();
		
		try {
			prop.load(new FileReader(propName));
		} catch (IOException e) {
			e.printStackTrace();
		}
		
	}

	public int insertReservation(Connection con, SpaceReservation requestMember) {
		
		PreparedStatement pstmt = null;
		int result = 0;
		String query = prop.getProperty("insertReser");
		
		try {
			pstmt = con.prepareStatement(query);
			pstmt.setInt(1, requestMember.getGuestNo());
			pstmt.setInt(2, requestMember.getSpaceNo());
			pstmt.setString(3, requestMember.getFixUnfix());
			pstmt.setInt(4, requestMember.getOfficeNo());
			pstmt.setString(5, requestMember.getStartDate());
			pstmt.setString(6, requestMember.getEndDate());
			pstmt.setInt(7, requestMember.getReservPersonCount());
			pstmt.setInt(8, requestMember.getExpectPay());
			pstmt.setString(9, requestMember.getUserName());
			pstmt.setString(10, requestMember.getUserPhone());
			pstmt.setString(11, requestMember.getUserEmail());
			pstmt.setString(12, requestMember.getRequestContent());
			
			result = pstmt.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		
		return result;
	}

}

















