package com.kh.login.space.model.dao;

import java.io.FileReader;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Properties;

import com.kh.login.space.model.vo.SpaceInfo;

import static com.kh.login.common.JDBCTemplate.*;

public class SearchDao {

	private Properties prop = new Properties();
	
	public SearchDao() {
		String fileName = SearchDao.class.getResource("/sql/space/space-query.properties").getPath();
		
		try {
			prop.load(new FileReader(fileName));
		} catch (IOException e) {
			e.printStackTrace();
		}
	}

	public ArrayList<HashMap<String, Object>> selectList(Connection con) {
		PreparedStatement pstmt = null;
		ArrayList<HashMap<String, Object>> list = null;
		HashMap<String, Object> hmap = null;
		ResultSet rset = null;
		
		
		String query = prop.getProperty("selectSpace");
		
		try {
			pstmt = con.prepareStatement(query);
			rset = pstmt.executeQuery();
			
			list = new ArrayList<> ();
			
			while(rset.next()) {
				hmap = new HashMap<>();
				hmap.put("", rset.getInt(""));
				hmap.put("", rset.getInt(""));
				hmap.put("", rset.getInt(""));
				hmap.put("", rset.getString(""));
				hmap.put("", rset.getString(""));
				hmap.put("", rset.getString(""));
				hmap.put("", rset.getString(""));
			}
			
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			close(pstmt);
			close(rset);
		}
		
		return list;
	}

}
