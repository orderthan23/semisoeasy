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
		
		System.out.println(listCount);
		
		return listCount;
	}
	
	public int getRequestCount() {
		Connection con = getConnection();
		
		int requestCount = new HostReserveDao().getRequestCount(con);
		
		close(con);
		
		System.out.println(requestCount);
		
		return requestCount;
	}

	public ArrayList<PaymentRequest> selectList(PageInfo pi) {
		Connection con = getConnection();
		
		ArrayList<PaymentRequest> list = new HostReserveDao().selectList(con, pi);
		
		close(con);
		
		return list;
	}
	
	
	
	
	public ArrayList<PaymentRequest> updateReserveRequest(PageInfo pi, int nno, int rno) {
		Connection con = getConnection();
		
		int result = new HostReserveDao().updateReserveRequest(con, nno, rno);
		
		ArrayList<PaymentRequest> updateList = null;
		
		
		
		if(result > 0) {
			commit(con);
			updateList = new HostReserveDao().selectList(con, pi);
		} else {
			rollback(con);
		}
		
		
		close(con);
		
		return updateList;
	}
	
//	public int updateReserveRequest(int nno, int rno) {
//		Connection con = getConnection();
//		
//		int result = new HostReserveDao().updateReserveRequest(con, nno, rno);
//		
//		int pr = 0;
//		
//		PageInfo pi = new PageInfo();
//		
//		if(result > 0) {
//			commit(con);
//			pr = new HostReserveDao().selectList(con, nno);
//		} else {
//			rollback(con);
//		}
//		
//		System.out.println("upadate service : " + pr);
//		
//		close(con);
//		
//		return pr;
//	}
}




















