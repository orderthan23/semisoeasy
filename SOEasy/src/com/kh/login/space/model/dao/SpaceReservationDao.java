package com.kh.login.space.model.dao;

import java.io.FileReader;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Properties;

import static com.kh.login.common.JDBCTemplate.*;

import com.kh.login.space.model.vo.SpaceInfo;
import com.kh.login.space.model.vo.SpaceReservation;

public class SpaceReservationDao {
	
	private Properties prop = new Properties();
	
	public SpaceReservationDao() {
		
		String propName = SpaceDao.class.getResource("/sql/space/spaceReserv-query.properties").getPath();
		
		try {
			prop.load(new FileReader(propName));
		} catch (IOException e) {
			e.printStackTrace();
		}
		
	}

	public int insertReservationCowork(Connection con, SpaceReservation requestMember, SpaceInfo si) {
		
		PreparedStatement pstmt = null;
		int result = 0;
		String query = prop.getProperty("insertReservCo");
		
		try {
			pstmt = con.prepareStatement(query);
			
			pstmt.setInt(1, requestMember.getGuestNo());
			pstmt.setInt(2, si.getSpaceNo());
			pstmt.setString(3, requestMember.getFixUnfix());
			pstmt.setString(4, requestMember.getStartDate());
			pstmt.setString(5, requestMember.getEndDate());
			pstmt.setInt(6, requestMember.getReservPersonCount());
			pstmt.setInt(7, requestMember.getExpectPay());
			pstmt.setString(8, requestMember.getUserName());
			pstmt.setString(9, requestMember.getUserPhone());
			pstmt.setString(10, requestMember.getUserEmail());
			pstmt.setString(11, requestMember.getRequestContent());
			
			result = pstmt.executeUpdate();
			 
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		
		return result;
	}

	public int insertReservationIndepen(Connection con, SpaceReservation requestMember, SpaceInfo si) {
		
		PreparedStatement pstmt = null;
		int result = 0;
		
		String query = prop.getProperty("insertReservIdepen");
		
		try {
			pstmt = con.prepareStatement(query);
//			1 INT guestNo
//			2 int  spaceNo
//			3 num officeNo
//			4        startDate
//			5        endDate
//			6 num  예약인원
//			7 num  결제예상금액
//			8 str    사용자명
//			9 str    사용자연락처
//			10 str  사용자 이메일
//			11 str  사용자 요청사항
			
			pstmt.setInt(1, requestMember.getGuestNo());
			pstmt.setInt(2, si.getSpaceNo());
			//pstmt.setString(3, si.getOfficeNo());
			
			
			result = pstmt.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		
		return result;
	}
	
	public ArrayList<SpaceReservation> selectAllMyReser(Connection con, int guestNo) {

		PreparedStatement pstmt = null;
		ResultSet rset = null;
		ArrayList<SpaceReservation> returnList = null;
		
		String query = prop.getProperty("selectMyReserv");
		
		try {
			pstmt = con.prepareStatement(query);
			pstmt.setInt(1, guestNo);
			rset = pstmt.executeQuery();
			
			returnList = new ArrayList<>();
			
			while(rset.next()) {
				
				SpaceReservation sr = new SpaceReservation();
				
				
				//returnList.add(sr);
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
			close(rset);
		}
		
		return returnList;
	}

}

















