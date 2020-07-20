package com.kh.login.host.manageReserve.model.dao;

import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Properties;

import com.kh.jsp.notice.model.vo.Notice;
import com.kh.login.host.manageReserve.model.vo.HostReserve;
import com.kh.login.host.manageReserve.model.vo.PageInfo;
import com.kh.login.host.manageReserve.model.vo.PaymentRequest;

import static com.kh.jsp.common.JDBCTemplate.close;
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

	//예약 승인 리스트 번호 조회
	public int getListCount(Connection con) {
		PreparedStatement pstmt = null;
		int listCount = 0;
		ResultSet rset = null;

		String query = prop.getProperty("listCount");
		System.out.println(query);

		try {
			pstmt = con.prepareStatement(query);
			pstmt.setInt(1, 17);

			rset = pstmt.executeQuery();

			if(rset.next()) {
				listCount = rset.getInt(1);
			}
			System.out.println("Dao ListCount : " + listCount);
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
			close(rset);
		}
		

		return listCount;
	}

	//예약대기 리스트 카운트
	public int getRequestCount(Connection con) {
		PreparedStatement pstmt = null;
		int requestCount = 0;
		ResultSet rset = null;

		String query = prop.getProperty("requestCount");

		try {
			pstmt = con.prepareStatement(query);
			pstmt.setInt(1, 1);
			pstmt.setInt(2, 1);

			rset = pstmt.executeQuery();

			if(rset.next()) {
				requestCount = rset.getInt(1);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
			close(rset);
		}
		System.out.println("Dao requestCount : " + requestCount);

		return requestCount;
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

			pstmt.setInt(1, 1);
			pstmt.setInt(2, 2);
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
				pr.setDidHostOk(rset.getInt("DID_HOST_OK"));

				list.add(pr);
			}

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}


		return list;
	}

	//호스트 예약승인 여부 업데이트
	public int updateReserveRequest(Connection con, int nno, int rno) {
		PreparedStatement pstmt = null;
		int result = 0;
		
		String query = prop.getProperty("updateReserveRequest");
		System.out.println("dao nno : " + nno);
		System.out.println("dao rno : " + rno);
		
		try {
			pstmt = con.prepareStatement(query);
			pstmt.setInt(1, nno);
			pstmt.setInt(2, rno);
			
			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		
		System.out.println("update dao : " + result);
		
		
		return result;
	}

	public ArrayList<HostReserve> selectHostReserve(Connection con, int hostNo, int spaceNo) {
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		HostReserve  hostReserve = null;
		
		String query = prop.getProperty("selectHostReserve");
		
		try {
			pstmt = con.prepareStatement(query);
			pstmt.setInt(1, hostNo);
			
			rset = pstmt.executeQuery();
			
			if(rset.next()) {
				hostReserve = new HostReserve();
				
				hostReserve.setSpaceNo(rset.getInt("SPACE_NO"));
				hostReserve.setReserveNo(rset.getInt("RESERV_NO"));
				hostReserve.setOfficeNo(rset.getString("OFFICE_NO"));
				hostReserve.setSpaceName(rset.getString("SPACE_NO"));
				hostReserve.setSpaceKind(rset.getInt("SPACE_KIND"));
//				hostReserve.setDidDayReserve(rset.getString("DID_DAY_RESERV"));
//				hostReserve.setDidMonthReserve(rset.getString("DID_MONTH_RESERV"));
				hostReserve.setDidHostOk(rset.getInt("DID_HOST_OK"));
				hostReserve.setReservePersonCount(rset.getInt("RESERV_PERSON_COUNT"));
				hostReserve.setReserveStatus(rset.getInt("RESERV_STATUS"));
				hostReserve.setStartDay(rset.getDate("START_DATE"));
				hostReserve.setEndDay(rset.getDate("END_DATE"));
				hostReserve.setReserveDate(rset.getDate("RESERV_DATE"));
				hostReserve.setUserName(rset.getString("USER_NAME"));
				
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
			close(rset);
		}
		return hostReserve;
	}


	//호스트 예약 승인 버튼 눌렀을 때 결과 불러오기
	
	
	
	


}











