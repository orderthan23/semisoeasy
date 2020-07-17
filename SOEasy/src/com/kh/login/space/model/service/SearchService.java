package com.kh.login.space.model.service;

import java.sql.Connection;
import java.util.ArrayList;
import java.util.HashMap;

import com.kh.login.space.model.dao.SearchDao;
import com.kh.login.space.model.vo.SpaceInfo;

import static com.kh.login.common.JDBCTemplate.*;

public class SearchService {

	public ArrayList<HashMap<String, Object>> selectList() {
		Connection con = getConnection();
		
		ArrayList<HashMap<String, Object>> list = new SearchDao().selectList(con);
		
		close(con);
		
		return list;
	}


}
