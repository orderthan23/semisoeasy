package com.kh.login.host.manageReserve.model.service;

import java.sql.Connection;
import java.util.ArrayList;

import com.kh.login.host.manageReserve.model.dao.HostReserveDao;
import com.kh.login.host.manageReserve.model.vo.PageInfo;
import com.kh.login.host.manageReserve.model.vo.PaymentRequest;

import static com.kh.login.common.JDBCTemplate.*;

public class HostReserveService {

	public int getListCount() {
		Connection con = getConnection();
		
		int listCount = new HostReserveDao().getListCount(con);
		
		close(con);
		
		return listCount;
	}

	public ArrayList<PaymentRequest> selectList(PageInfo pi) {
		Connection con = getConnection();
		
		ArrayList<PaymentRequest> list = new HostReserveDao().selectList(con, pi);
		
		close(con);
		
		return list;
	}

	
}
