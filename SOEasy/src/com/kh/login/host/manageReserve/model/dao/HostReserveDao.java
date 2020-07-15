package com.kh.login.host.manageReserve.model.dao;

import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Properties;

import com.kh.login.host.manageReserve.model.vo.PageInfo;
import com.kh.login.host.manageReserve.model.vo.PaymentRequest;

import static com.kh.login.common.JDBCTemplate.*;

public class HostReserveDao {
	private Properties prop = new Properties();
	
	public HostReserveDao() {
		String fileName = HostReserveDao.class.getResource("/sql/host/host-query.properties").getPath();
		
		try {
			prop.load(new FileReader(fileName));
		} catch (FileNotFoundException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
	//예약 승인 요청 관리 목록 조회
	public ArrayList<PaymentRequest> selectList(Connection con, PageInfo pi) {
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		ArrayList<PaymentRequest> list = null;
		
		String query = prop.getProperty("selectList");
		
		try {
			pstmt = con.prepareStatement(query);
			
			int startRow = (pi.getCurrentPage() -1) * pi.getLimit() + 1;
			int endRow = startRow + pi.getLimit() -1;
			
			pstmt.setString(1, "WAIT");
			pstmt.setString(2, "2");
			pstmt.setInt(3, 17);
			pstmt.setInt(4, startRow);
			pstmt.setInt(5, endRow);
			
			rset = pstmt.executeQuery();
			
			list = new ArrayList<>();
			
			while(rset.next()) {
				PaymentRequest pr = new PaymentRequest();
				pr.setReserveNo(rset.getInt("RESERV_NO"));
				pr.setGuestId(rset.getString("M_ID"));
				pr.setGuestName(rset.getString("M_NAME"));
				pr.setStartDay(rset.getDate("START_DATE"));
				pr.setEndDay(rset.getDate("END_DATE"));
				pr.setReservePersonCount(rset.getInt("RESERV_PERSON_COUNT"));
				pr.setSpaceName(rset.getString("SPACE_NAME"));
				pr.setOfficeNo(rset.getInt("OFFICE_NO"));
				pr.setExpectPay(rset.getInt("EXPECT_PAY"));
				
				list.add(pr);
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		
		for(Object o : list) {
			System.out.println(o);
		}
		
		return list;
	}

	//예약 승인 리스트 번호 조회
	public int getListCount(Connection con) {
		PreparedStatement pstmt = null;
		int listCount = 0;
		ResultSet rset = null;
		
		String query = prop.getProperty("listCount");
		
		try {
			pstmt = con.prepareStatement(query);
			pstmt.setInt(1, 17);
			
			rset = pstmt.executeQuery(query);
			
			if(rset.next()) {
				listCount = rset.getInt(1);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
			close(rset);
		}
		
		
		return listCount;
	}
	

}
