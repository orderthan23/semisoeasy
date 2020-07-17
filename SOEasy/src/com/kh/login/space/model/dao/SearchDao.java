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
	

	public int getListCount(Connection con) {
		Statement stmt = null;
		int listCount = 0;
		ResultSet rset = null;
		
		String query = prop.getProperty("listCount");
		
		try {
			stmt = con.createStatement();
			rset = stmt.executeQuery(query);
			
			
			
			if(rset.next()) {
				listCount = rset.getInt(1);
				System.out.println("search list count : " + listCount);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(stmt);
			close(rset);
		}
		
		
		
		return listCount;
	}


	public ArrayList<HashMap<String, Object>> selectList(Connection con, PageInfo pi) {
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
			
			pstmt.setInt(1, startRow);
			pstmt.setInt(2, endRow);
			
			
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
