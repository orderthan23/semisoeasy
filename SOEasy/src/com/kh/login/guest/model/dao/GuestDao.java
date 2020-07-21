package com.kh.login.guest.model.dao;

import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Properties;
import static com.kh.login.common.JDBCTemplate.*;
import com.kh.login.guest.model.vo.ReserveHistory;
import com.kh.login.member.model.dao.MemberDao;

public class GuestDao {
	
	private Properties prop = new Properties();

	public GuestDao() {
		String fileName = MemberDao.class.getResource("/sql/guest/guest-query.properties").getPath();

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
	
	//회원번호 와 일치한 회원의 모든 예약 내역을 조회
	public ArrayList<ReserveHistory> getYourReserveList( Connection con, int memberNo) {
		
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		ArrayList<ReserveHistory> reserveList = null;
		String query = prop.getProperty("getYourReserveList");
		
		try {
			pstmt = con.prepareStatement(query);
			pstmt.setInt(1, memberNo);
			pstmt.setInt(2, 1);
			pstmt.setInt(3, 10);
			rset = pstmt.executeQuery();
			reserveList = new ArrayList<>();
			while(rset.next()) {
				ReserveHistory rh = new ReserveHistory();
				rh.setReserveNo(rset.getInt("RESERV_NO"));
				rh.setUserId(rset.getString("M_ID"));
				rh.setSpaceName(rset.getString("SPACE_NAME"));
				rh.setSeatType(rset.getString("FIX_UNFIX"));
				rh.setSeatNo(rset.getInt("OFFICE_NO"));
				rh.setStartUse(rset.getDate("START_DATE"));
				rh.setEndUse(rset.getDate("END_DATE"));
				rh.setPersonCount(rset.getInt("RESERV_PERSON_COUNT"));
				rh.setAcceptStatus(rset.getInt("DID_HOST_OK"));
				rh.setReserveStatus(rset.getInt("RESERV_STATUS"));
				rh.setHasReview(rset.getString("DID_REVIEW"));
				rh.setReserveDate(rset.getDate("RESERV_DATE"));
				rh.setCharge(rset.getInt("EXPECT_PAY"));
				rh.setUserName(rset.getString("USER_NAME"));
				rh.setUserPhone(rset.getString("USER_PHONE"));
				rh.setUserEmail(rset.getString("USER_EMAIL"));
				rh.setPayStatus(rset.getInt("PAYSTATUS"));
				rh.setPayMethod(rset.getString("PAYMETHOD"));
				rh.setSpaceType(rset.getInt("SPACE_KIND"));
				rh.setGuestEmail(rset.getString("M_EMAIL"));
				rh.setGuestName(rset.getString("M_NAME"));
			
				reserveList.add(rh);
				
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			close(pstmt);
			close(rset);
		}
		
		
		return reserveList;
	}

	public int getReserveListCount(Connection con, int memberNo) {
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		int reserveListCount = -1; 
		String query = prop.getProperty("getReserveListCount");
		try {
			pstmt = con.prepareStatement(query);
			pstmt.setInt(1, memberNo);
			rset = pstmt.executeQuery();
			if(rset.next()) {
			reserveListCount = rset.getInt(1);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			close(pstmt);
			close(rset);
		}
		
		
		return reserveListCount;
	}

}
