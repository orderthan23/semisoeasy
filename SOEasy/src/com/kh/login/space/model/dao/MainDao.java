package com.kh.login.space.model.dao;

import static com.kh.login.common.JDBCTemplate.close;

import java.io.FileNotFoundException;
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
import com.kh.login.member.model.dao.MemberDao;
import com.kh.login.space.model.vo.SpaceInfo;

public class MainDao {
	
	private Properties prop = new Properties();
	
	public MainDao() {
		String fileName = MemberDao.class.getResource("/sql/space/main-query.properties").getPath();
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

	public ArrayList<HashMap<String, Object>> selectAllList(Connection con, PageInfo pi) {
		Statement stmt = null;
		ResultSet rset = null;
		ArrayList<HashMap<String,Object>> spaceList=null;
		HashMap<String, Object>hmap=null;
		String query = prop.getProperty("selectAllList");
		try {
			stmt = con.createStatement();
			rset = stmt.executeQuery(query);
			
			spaceList = new ArrayList<>();
			
			while(rset.next()) {
				hmap = new HashMap<>();
				hmap.put("spaceNo", rset.getInt("SPACE_NO"));
				hmap.put("hostNo", rset.getInt("HOST_NO"));
				hmap.put("spaceName", rset.getString("SPACE_NAME"));
				//String
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
				
			
		
		return spaceList;
	}

	public int getListCount(Connection con) {
		Statement stmt = null;
		int listCount = 0;
		ResultSet rset = null;
		
		String query = prop.getProperty("listCount1");
		
		try {
			stmt = con.createStatement();
			rset = stmt.executeQuery(query);
			
			if(rset.next()) {
				listCount = rset.getInt(1);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			close(stmt);
			close(rset);
		}
		
		return listCount;
		
		
	}
}
