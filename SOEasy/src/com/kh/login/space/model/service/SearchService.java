package com.kh.login.space.model.service;

import java.sql.Connection;
import java.util.ArrayList;
import java.util.HashMap;

import com.kh.login.host.manageReserve.model.vo.PageInfo;
import com.kh.login.space.model.dao.SearchDao;
import com.kh.login.space.model.vo.SpaceInfo;

import static com.kh.login.common.JDBCTemplate.*;

public class SearchService {


	public int getListCount() {
		Connection con = getConnection();
		
		int listCount = new SearchDao().getListCount(con);
		
		close(con);
		
		
		return listCount;
	}


	public ArrayList<HashMap<String, Object>> selectList(PageInfo pi) {
		Connection con = getConnection();
		
		ArrayList<HashMap<String, Object>> list = new SearchDao().selectList(con, pi);
		
		close(con);
		
		return list;
	}
	
}
