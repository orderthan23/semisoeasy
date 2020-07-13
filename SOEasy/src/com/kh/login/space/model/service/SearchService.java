package com.kh.login.space.model.service;

import java.sql.Connection;
import java.util.ArrayList;

import com.kh.login.space.model.dao.SearchDao;
import com.kh.login.space.model.vo.SpaceInfo;

import static com.kh.login.common.JDBCTemplate.*;

public class SearchService {

	public ArrayList<SpaceInfo> selectList() {
		Connection con = getConnection();
		
		ArrayList<SpaceInfo> list = new SearchDao().selectList(con);
		
		return list;
	}

}
