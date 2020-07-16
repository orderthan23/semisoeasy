package com.kh.login.space.model.dao;

import java.io.FileReader;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Properties;

import com.kh.login.space.model.vo.Image;
import com.kh.login.space.model.vo.SpaceInfo;

import static com.kh.login.common.JDBCTemplate.*;

public class SpaceDao {
	
	private Properties prop = new Properties();
	
	public SpaceDao() {
		String propName = SpaceDao.class.getResource("/sql/space/space-query.properties").getPath();
		
		try {
			prop.load(new FileReader(propName));
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
	
	//SPACE_INF - HOST_NO, SPACE_NAME, SPACE_KIND, SPACE_ADDRESS, SPACE_INTRO, SPACE_LOCATION_FILTER 입력용 메소드
	public int insertSpaceInfo(Connection con, SpaceInfo si) {
		
		PreparedStatement pstmt = null;
		int spaceInfResult = 0;
		
		String query = prop.getProperty("insertSpaceInfo");
		
		try {
			pstmt = con.prepareStatement(query);
			pstmt.setInt(1, si.getHostNo());
			pstmt.setString(2, si.getSpaceName());
			pstmt.setInt(3, si.getSpaceKind());
			pstmt.setString(4, si.getSpaceAddress());
			pstmt.setString(5, si.getSpaceIntro());
			pstmt.setString(6, si.getSpaceLocationFilter());
			
			spaceInfResult = pstmt.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		
		return spaceInfResult;
	}
	
	//SPACE_NO 조회용 메소드
	public int selectSNoCurrval(Connection con) {
		
		Statement stmt = null;
		ResultSet rset = null;
		int sNo = -1;
		
		String query = prop.getProperty("selectSNoCurrval");
		
		try {
			stmt = con.createStatement();
			rset = stmt.executeQuery(query);
			
			if(rset.next()) {
				sNo = rset.getInt("currval");
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(stmt);
			close(rset);
		}
		
		return sNo;
	}
	
	//SPACE_KIND 가 OFFICE인 경우 입력용 메소드
	public int insertOffice(Connection con, SpaceInfo si, String officeNo) {
		
		PreparedStatement pstmt = null;
		int kind1Result = 0;
		
		String query = prop.getProperty("insertOffice");
		
		try {
			pstmt = con.prepareStatement(query);
			pstmt.setInt(1, si.getSpaceNo());
			pstmt.setString(2, officeNo);
			pstmt.setDouble(3, si.getSpaceSize());
			pstmt.setInt(4, si.getSpaceContainCount());
			
			kind1Result = pstmt.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		
		
		return kind1Result;
	}
	
	//SPACE_KIND 가 COWORK인 경우 입력용 메소드
	public int insertCowork(Connection con, SpaceInfo si) {
		
		PreparedStatement pstmt = null;
		int kind2Result = 0;
		
		String query = prop.getProperty("insertCowork");
		
		try {
			pstmt = con.prepareStatement(query);
			pstmt.setInt(1, si.getSpaceNo());
			pstmt.setInt(2, si.getTotalSeat());
			pstmt.setInt(3, si.getMaxReserv());
			pstmt.setInt(4, si.getFixSeat());
			pstmt.setInt(5, si.getUnfixSeat());
			
			kind2Result = pstmt.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		
		return kind2Result;
	}
	
	//CONV_DETAIL 조회용 메소드
	public String selectConvDetail(Connection con, String convName) {
		
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String convNo = "";
		
		String query = prop.getProperty("selectConvDetail");
		
		try {
			pstmt = con.prepareStatement(query);
			pstmt.setString(1, convName);
			
			rset = pstmt.executeQuery();
			
			while(rset.next()) {
				convNo = rset.getString("CONV_NO");
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
			close(rset);
		}
		
		return convNo;
	}
	
	//SPACE_CONV 입력용 메소드
	public int insertSpaceConv(Connection con, int spaceNo, String convNo) {
		
		PreparedStatement pstmt = null;
		int convResult = 0;
		
		String query = prop.getProperty("insertSpaceConv");
		
		try {
			pstmt = con.prepareStatement(query);
			pstmt.setInt(1, spaceNo);
			pstmt.setString(2, convNo);
			
			convResult = pstmt.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		
		return convResult;
	}

	//IMAGE 입력용 메소드
	public int insertSpaceImg(Connection con, Image image) {
		
		PreparedStatement pstmt = null;
		int imgResult = 0;
		
		String query = prop.getProperty("insertSpaceImg");
		
		try {
			pstmt = con.prepareStatement(query);
			pstmt.setString(1, image.getOriginName());
			pstmt.setString(2, image.getFilePath());
			pstmt.setString(3, image.getChangeName());
			pstmt.setInt(4, image.getImgDiv());
			pstmt.setInt(5, image.getSpaceNo());
			pstmt.setInt(6, image.getFileLevel());
			
			imgResult = pstmt.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		
		return imgResult;
	}
	
	//SPACE_NO와 일치하는 공간정보 조회용 메소드
	public SpaceInfo selectCurrentSpaceInfo(Connection con, int sNo) {
		
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		SpaceInfo si = null;
		
		String query = prop.getProperty("selectCurrentSpaceInfo");
		
		try {
			pstmt = con.prepareStatement(query);
			pstmt.setInt(1, sNo);
			
			rset = pstmt.executeQuery();
			
			while(rset.next()) {
				si = new SpaceInfo();
				
				si.setSpaceNo(rset.getInt("SPACE_NO"));
				si.setHostNo(rset.getInt("HOST_NO"));
				si.setSpaceName(rset.getString("SPACE_NAME"));
				si.setSpaceKind(rset.getInt("SPACE_KIND"));
				si.setSpaceAddress(rset.getString("SPACE_ADDRESS"));
				si.setsStatus(rset.getString("S_STATUS"));
				si.setSpaceIntro(rset.getString("SPACE_INTRO"));
				si.setSpacePayPolicy(rset.getString("SPACE_PAY_POLICY"));
				si.setDidDayReserv(rset.getString("DID_DAY_RESERV"));
				si.setDayPay(rset.getInt("DAY_PAY"));
				si.setDidMonthReserv(rset.getString("DID_MONTH_RESERV"));
				si.setMonthPay(rset.getInt("MONTH_PAY"));
				si.setSpaceLocationFilter(rset.getString("SPACE_LOCATION_FILTER"));
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		
		return si;
	}

	//SPACE_INF SPACE_POLICY, DID_DAY_RESERV, DAY_PAY, DID_MONTH_RESERV, MONTH_PAY 입력용 메소드.
	//기존에 있는 공간번호에 작성하기 때문에 UPDATE문을 사용한다.
	public int insertSpaceInfOp(Connection con, SpaceInfo si) {
		
		PreparedStatement pstmt = null;
		int spaceInfOpResult = 0;
		
		String query = prop.getProperty("insertSpaceInfOp");
		try {
			pstmt = con.prepareStatement(query);
			pstmt.setString(1, si.getSpacePayPolicy());
			pstmt.setString(2, si.getDidDayReserv());
			pstmt.setInt(3, si.getDayPay());
			pstmt.setString(4, si.getDidMonthReserv());
			pstmt.setInt(5, si.getMonthPay());
			pstmt.setInt(6, si.getSpaceNo());
			
			spaceInfOpResult = pstmt.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		
		return spaceInfOpResult;
	}

	//SPACE_OPTIME SPACE_NO, DAY, START_TIME, END_TIME, OPEN_CHECK 입력용 메소드
	public int insertSpaceOptime(Connection con, int sNo, int day, int startTime, int endTime, String openCheck) {
		
		PreparedStatement pstmt = null;
		int optimeResult = 0;
		
		String query = prop.getProperty("insertSpaceOptime");
		
		try {
			pstmt = con.prepareStatement(query);
			pstmt.setInt(1, sNo);
			pstmt.setInt(2, day);
			pstmt.setInt(3, startTime);
			pstmt.setInt(4, endTime);
			pstmt.setString(5, openCheck);
			
			optimeResult = pstmt.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		
		return optimeResult;
	}

	//REFUND_POLICY SPACE_NO, DATE_REFUND_RATE, REFUND_DATE 입력용 메소드
	public int insertRefundPolicy(Connection con, int sNo, double rate, int date) {
		
		PreparedStatement pstmt = null;
		int refundResult = 0;
		
		String query = prop.getProperty("insertRefundPolicy");
		
		try {
			pstmt = con.prepareStatement(query);
			pstmt.setInt(1, sNo);
			pstmt.setDouble(2, rate);
			pstmt.setInt(3, date);
			
			refundResult = pstmt.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		
		return refundResult;
	}

	//HOST_INF BSNS_NAME, BSNS_LICENSE_NO, BSNS_TYPE, BSNS_CONDITION, BSNS_EVENT, BSNS_ADDRESS, CAL_EMAIL,
	//CAL_PHONE, CAL_BANK, CAL_ACCT_HOLDER, CAL_ACCT_NO, BSNS_REPRESENT_NAME 입력
	public int insertHostInf(Connection con, SpaceInfo si) {
		
		PreparedStatement pstmt = null;
		int hostInfResult = 0;
		
		String query = prop.getProperty("insertHostInf");
		
		try {
			pstmt = con.prepareStatement(query);
			pstmt.setInt(1, si.getHostNo());
			pstmt.setString(2, si.getBsnsName());
			pstmt.setString(3, si.getBsnsLicenseNo());
			pstmt.setInt(4, si.getBsnsType());
			pstmt.setString(5, si.getBsnsCondition());
			pstmt.setString(6, si.getBsnsEvent());
			pstmt.setString(7, si.getBsnsAddress());
			pstmt.setString(8, si.getCalEmail());
			pstmt.setString(9, si.getCalPhone());
			pstmt.setString(10, si.getCalBank());
			pstmt.setString(11, si.getCalAcctHolder());
			pstmt.setString(12, si.getCalAcctNo());
			pstmt.setString(13, si.getRepresentName());
			
			hostInfResult = pstmt.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		
		return hostInfResult;
	}


	public int insertBusinessImg(Connection con, Image licenseImage) {
		
		PreparedStatement pstmt = null;
		int imgResult = 0;
		
		String query = prop.getProperty("insertBusinessImg");
		
		try {
			pstmt = con.prepareStatement(query);
			pstmt.setString(1, licenseImage.getOriginName());
			pstmt.setString(2, licenseImage.getFilePath());
			pstmt.setString(3, licenseImage.getChangeName());
			pstmt.setInt(4, licenseImage.getImgDiv());
			pstmt.setInt(5, licenseImage.getSpaceNo());
			
			imgResult = pstmt.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		
		return imgResult;
	}

}
