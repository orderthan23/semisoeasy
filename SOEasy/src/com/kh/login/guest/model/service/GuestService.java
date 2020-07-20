package com.kh.login.guest.model.service;

import static com.kh.login.common.JDBCTemplate.close;
import static com.kh.login.common.JDBCTemplate.getConnection;

import java.sql.Connection;
import java.util.ArrayList;

import com.kh.login.guest.model.dao.GuestDao;
import com.kh.login.guest.model.vo.ReserveHistory;

public class GuestService {

	public ArrayList<ReserveHistory> getYourReserveList(int memberNo) {
		Connection con = getConnection();
		ArrayList<ReserveHistory> reserveList = null;
		reserveList = new GuestDao().getYourReserveList(con,memberNo); 
		close(con);
		return reserveList;
	}

	public int getListReserveCount(int memberNo) {
		Connection con = getConnection();
		int reserveListCount = new GuestDao().getReserveListCount(con,memberNo);
		
		return reserveListCount;
	}

}
