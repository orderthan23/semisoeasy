package com.kh.login.space.model.service;

import static com.kh.login.common.JDBCTemplate.*;

import java.sql.Connection;

import com.kh.login.space.model.dao.SpaceReservationDao;
import com.kh.login.space.model.vo.SpaceReservation;

public class SpaceReservationService {

	//예약정보 db에 인서트하기
	public int insertReservation(SpaceReservation requestMember) {

		Connection con = getConnection();
		SpaceReservationDao srd = new SpaceReservationDao();
		int result = srd.insertReservation(con, requestMember);
		
		if(result > 0) {
			commit(con);
		} else {
			rollback(con);
		}
		
		close(con);
		
		return result;
	}

}
