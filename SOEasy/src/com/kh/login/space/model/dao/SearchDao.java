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

import com.kh.login.host.manageReserve.model.vo.PageInfo;
import com.kh.login.space.model.vo.SearchFilter;
import com.kh.login.space.model.vo.SpaceInfo;

import static com.kh.login.common.JDBCTemplate.*;

public class SearchDao {

	private Properties prop = new Properties();
	
	public SearchDao() {
		String fileName = SearchDao.class.getResource("/sql/space/search-query.properties").getPath();
		
		try {
			prop.load(new FileReader(fileName));
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	

	public int getListCount(Connection con, String search) {
		PreparedStatement pstmt = null;
		int listCount = 0;
		ResultSet rset = null;
		
		String query = prop.getProperty("searchListCount");
		System.out.println("search dao list count : " + search);
		
		try {
			pstmt = con.prepareStatement(query);
			pstmt.setString(1, search);
			pstmt.setString(2, search);
			pstmt.setString(3, search);
			pstmt.setString(4, search);
			
			
			rset = pstmt.executeQuery();
			
			if(rset.next()) {
				listCount = rset.getInt(1);
				System.out.println("search list count : " + listCount);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
			close(rset);
		}
		
		
		
		return listCount;
	}


	public ArrayList<HashMap<String, Object>> selectList(Connection con, PageInfo pi, String search) {
		PreparedStatement pstmt = null;
		ArrayList<HashMap<String, Object>> list = null;
		HashMap<String, Object> hmap = null;
		ResultSet rset = null;
		
		
		String query = prop.getProperty("selectSpace");
		
		try {
			pstmt = con.prepareStatement(query);
			System.out.println(pi.getCurrentPage());
			int startRow = (pi.getCurrentPage() -1) * pi.getLimit() + 1;
			int endRow = startRow + pi.getLimit() -1;
			
			pstmt.setString(1, search);
			pstmt.setString(2, search);
			pstmt.setString(3, search);
			pstmt.setString(4, search);
			pstmt.setInt(5, startRow);
			pstmt.setInt(6, endRow);
			
			
			rset = pstmt.executeQuery();
			
			list = new ArrayList<> ();
			
			while(rset.next()) {
				hmap = new HashMap<>();
				hmap.put("spaceNo", rset.getInt("SPACE_NO"));
				hmap.put("hostNo", rset.getInt("HOST_NO"));
				hmap.put("spaceName", rset.getString("SPACE_NAME"));
				hmap.put("spaceKind", rset.getInt("SPACE_KIND"));
				hmap.put("spaceAddress", rset.getString("SPACE_ADDRESS"));
				hmap.put("sStatus", rset.getString("S_STATUS"));
				hmap.put("spaceIntro", rset.getString("SPACE_INTRO"));
				hmap.put("spacePayPolicy", rset.getString("SPACE_SHORT_INTRO"));
				hmap.put("didPayReserve", rset.getString("DID_DAY_RESERV"));
				hmap.put("dayPay", rset.getInt("DAY_PAY"));
				hmap.put("didMonthReserve", rset.getString("DID_MONTH_RESERV"));
				hmap.put("monthPay", rset.getInt("MONTH_PAY"));
				hmap.put("spaceLocationFilter", rset.getString("SPACE_LOCATION_FILTER"));
				hmap.put("imgNo", rset.getInt("IMG_NO"));
				hmap.put("originName", rset.getString("ORIGIN_NAME"));
				hmap.put("filePath", rset.getString("FILE_PATH"));
				hmap.put("changeName", rset.getString("CHANGE_NAME"));
				hmap.put("imgDiv", rset.getInt("IMG_DIV"));
				hmap.put("memberNo", rset.getInt("MEMBER_NO"));
				hmap.put("fileLevel", rset.getInt("FILE_LEVEL"));
				
				list.add(hmap);
			}
			
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
			close(rset);
		}
		
		return list;
	}


	public int getFilterListCount(Connection con, SearchFilter sf) {
		PreparedStatement pstmt = null;
		int listCount = 0;
		ResultSet rset = null;
		
		String query = prop.getProperty("searchFilterListCount");
		System.out.println("search dao list count : " + sf.getSearch());
		
		try {
			pstmt = con.prepareStatement(query);
			
			System.out.println("filter dao 값 들어오나? ========= ");
			System.out.println(sf.getSearch());
			System.out.println(sf.getSpaceKind());
			System.out.println(sf.getSpaceLocationFilter());
			System.out.println(sf.getTerm());
			System.out.println(sf.getLowPrice());
			System.out.println(sf.getHighPrice());
			
			
			pstmt.setString(1, sf.getSearch());
			pstmt.setString(2, sf.getSpaceKind());
			pstmt.setString(3, sf.getSpaceLocationFilter());
			pstmt.setString(4, sf.getTerm());
			pstmt.setInt(5, sf.getLowPrice());
			pstmt.setInt(6, sf.getHighPrice());
			pstmt.setInt(7, sf.getLowPrice());
			pstmt.setInt(8, sf.getHighPrice());
			
			
			rset = pstmt.executeQuery();
			
			
			if(rset.next()) {
				listCount = rset.getInt(1);
				System.out.println("search filter list count : " + listCount);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
			close(rset);
		}
		
		
		
		return listCount;
	}

	public ArrayList<HashMap<String, Object>> filterSelectList(Connection con, PageInfo pi, SearchFilter sf) {
		PreparedStatement pstmt = null;
		ArrayList<HashMap<String, Object>> list = null;
		HashMap<String, Object> hmap = null;
		ResultSet rset = null;
		
		
		
		String query = prop.getProperty("filterSelectSpace");
		
		try {
			pstmt = con.prepareStatement(query);
			System.out.println(pi.getCurrentPage());
			int startRow = (pi.getCurrentPage() -1) * pi.getLimit() + 1;
			int endRow = startRow + pi.getLimit() -1;
			
			System.out.println("filter dao 값 들어오나? ========= ");
			System.out.println(sf.getSearch());
			System.out.println(sf.getSpaceKind());
			System.out.println(sf.getSpaceLocationFilter());
			System.out.println(sf.getTerm());
			System.out.println(sf.getLowPrice());
			System.out.println(sf.getHighPrice());
			
			
			pstmt.setString(1, sf.getSearch());
			pstmt.setString(2, sf.getSpaceKind());
			pstmt.setString(3, sf.getSpaceLocationFilter());
			pstmt.setString(4, sf.getTerm());
			pstmt.setInt(5, sf.getLowPrice());
			pstmt.setInt(6, sf.getHighPrice());
			pstmt.setInt(7, sf.getLowPrice());
			pstmt.setInt(8, sf.getHighPrice());
			pstmt.setInt(9, startRow);
			pstmt.setInt(10, endRow);
			
			
			rset = pstmt.executeQuery();
			
			list = new ArrayList<> ();
			
			while(rset.next()) {
				hmap = new HashMap<>();
				hmap.put("spaceNo", rset.getInt("SPACE_NO"));
				hmap.put("hostNo", rset.getInt("HOST_NO"));
				hmap.put("spaceName", rset.getString("SPACE_NAME"));
				hmap.put("spaceKind", rset.getInt("SPACE_KIND"));
				hmap.put("spaceAddress", rset.getString("SPACE_ADDRESS"));
				hmap.put("sStatus", rset.getString("S_STATUS"));
				hmap.put("spaceIntro", rset.getString("SPACE_INTRO"));
				hmap.put("spacePayPolicy", rset.getString("SPACE_PAY_POLICY"));
				hmap.put("didPayReserve", rset.getString("DID_DAY_RESERV"));
				hmap.put("dayPay", rset.getInt("DAY_PAY"));
				hmap.put("didMonthReserve", rset.getString("DID_MONTH_RESERV"));
				hmap.put("monthPay", rset.getInt("MONTH_PAY"));
				hmap.put("spaceLocationFilter", rset.getString("SPACE_LOCATION_FILTER"));
				hmap.put("imgNo", rset.getInt("IMG_NO"));
				hmap.put("originName", rset.getString("ORIGIN_NAME"));
				hmap.put("filePath", rset.getString("FILE_PATH"));
				hmap.put("changeName", rset.getString("CHANGE_NAME"));
				hmap.put("imgDiv", rset.getInt("IMG_DIV"));
				hmap.put("memberNo", rset.getInt("MEMBER_NO"));
				hmap.put("fileLevel", rset.getInt("FILE_LEVEL"));
				
				list.add(hmap);
			}
			
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
			close(rset);
		}
		
		return list;
	}

}
