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
				
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		
		return si;
	}


	public int insertSpaceInfOp(Connection con, SpaceInfo si) {
		// TODO Auto-generated method stub
		return 0;
	}


	public int insertSpaceOptime(Connection con, int sNo, int day, int startTime, int endTime, String openCheck) {
		// TODO Auto-generated method stub
		return 0;
	}


	public int insertRefundPolicy(Connection con, int sNo, double rate, int date) {
		// TODO Auto-generated method stub
		return 0;
	}

}
