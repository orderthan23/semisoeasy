package com.kh.login.member.model.service;

import static com.kh.login.common.JDBCTemplate.getConnection;

import java.sql.Connection;

import com.kh.login.member.controller.LoginServlet;
import com.kh.login.member.model.dao.MemberDao;
import com.kh.login.member.model.vo.Member;

public class MemberService {

	public Member loginCheck(Member requestMember) {
		Connection con = getConnection();
		
		MemberDao md = new MemberDao();
		int result = md.checkStatus(con,requestMember);
		
		Member loginUser = new Member();
		
		if(result >= LoginServlet.LOGIN_GUEST) {
			loginUser = md.selectOne(con,requestMember);
			loginUser.setStatus(result);
		}else {
			loginUser.setStatus(LoginServlet.LOGIN_FAILED);
		}
	
		
		return loginUser;
	}

}
