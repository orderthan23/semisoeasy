package com.kh.login.member.model.service;

import static com.kh.login.common.JDBCTemplate.*;

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
	//중복 아이디를 체크하는 메소드
	public int idCheck(String userId) {
		Connection con = getConnection();
		
		int result = new MemberDao().idCheck(con, userId);
		
		close(con);
		
		return result;
		
		
	}
	public int nickCheck(String nickName) {
		Connection con = getConnection();
		
		int result = new MemberDao().nickCheck(con, nickName);
		
		close(con);
		
		return result;
	}
	//같은 이메일로 가입된 회원이 있는지 확인하는 메소드
	public int checkEmail(String email) {
		Connection con = getConnection();
		
		int result = new MemberDao().checkEmail(con,email);
		
		close(con);
		
		return result;
	}
	public int checkYou(String phoneNum, String name) {
		Connection con = getConnection();
		
		int result = new MemberDao().checkYou(con,phoneNum,name);
		
		close(con);
		
		return result;
	}

}
