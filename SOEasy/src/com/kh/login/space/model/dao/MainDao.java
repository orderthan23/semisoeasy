package com.kh.login.space.model.dao;

import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.sql.Connection;
import java.util.ArrayList;
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

	public ArrayList<SpaceInfo> selectAllList(Connection con, PageInfo pi) {

		
		return null;
	}

	public int getListCount(Connection con) {
		// TODO Auto-generated method stub
		return 0;
	}
}
