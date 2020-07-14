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
	public int insertSpaceConv(int spaceNo, String convNo) {
		
		
		
		return 0;
	}

	//IMAGE 입력용 메소드
	public int insertSpaceImg(Connection con, ArrayList<Image> fileList) {
		
		return 0;
	}
	
	//SPACE_NO와 일치하는 공간정보 조회용 메소드
	public SpaceInfo selectCurrentSpaceInfo(Connection con, int sNo) {
		
		return null;
	}

}
