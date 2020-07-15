package com.kh.login.member.model.service;

import static com.kh.login.common.JDBCTemplate.*;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import com.kh.login.host.manageReserve.model.vo.PageInfo;
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
			loginUser.setpType(result);
		}else {
			loginUser.setpType(LoginServlet.LOGIN_FAILED);
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
	public int insertMember(Member requestMember) {
		Connection con = getConnection();
		
		int insertResult=0;
		int insertResult2=0;
		insertResult=new MemberDao().insertMember(con, requestMember);
		if(insertResult > 0) {
			insertResult2= new MemberDao().insertDefaultProfile(con,requestMember);
		}
		
		if(insertResult>0 && insertResult2>0) {
			commit(con);
		}else {
			rollback(con);
		}
		
		close(con);
		
		return insertResult;
	}
	public String findId(String name, String email) {
		Connection con = getConnection();
		
		String resultId = new MemberDao().findId(con,name,email);
		
		close(con);
		
		return resultId;
	}
	public int findPwd(String id, String email) {
		Connection con = getConnection();
		int resultPwd = new MemberDao().findPwd(con,id,email);
		
		close(con);
		
		return resultPwd;
		
		
	}
	public int updatePwd(String password, int memNo) {
		Connection con = getConnection();
		
		int result = new MemberDao().updatePwd(con, password, memNo);
		
		if(result > 0) {
			commit(con);
		} else {
			rollback(con);
		}
		close(con);
		return result;
	}
	
	public int correctPwd(String password, String userId) {
		Connection con = getConnection();
		
		int result = new MemberDao().correctPwd(con, password, userId);
		
		close(con);
		
		return result;
	}
	public int deleteMember(String userId, String password, String reason) {
		Connection con = getConnection();
		
		int result = new MemberDao().deleteMember(con,userId, password, reason);
		
		if(result > 0) {
			commit(con);
		} else {
			rollback(con);
		}
		close(con);
		return result;
		
		
	}
	//비밀번호 프로필 사진 변경을 하지 않은 개인정보 수정 메소드
	public Member updateMember1(Member updateMember) {
		Connection con = getConnection();
		
		int result = 0;
		Member updatingMember = null;
		result = new MemberDao().updateMember1(con,updateMember);
		
		if(result > 0) {
			commit(con);
			updatingMember = new MemberDao().selectOne(con, updateMember);
		} else {
			rollback(con);
		}
		close(con);
		return updatingMember;
	}
	//비밀번호는 변경하지 않고 프로필 사진은 변경한 개인정보 수정 메소드
	public Member updateMember2(Member updateMember) {
		Connection con = getConnection();
		
		int result1 = 0;
		int result2 = 0;
		Member updatingMember = null;
		
		result1 = new MemberDao().updateMember1(con, updateMember);
		if(result1>0) {
			
			result2 = new MemberDao().updateProfile(con,updateMember);
		}
		
		if(result1>0 && result2>0) {
			commit(con);
			updatingMember = new MemberDao().selectOne(con, updateMember);
		}else {
			rollback(con);
		}
		
		
		return updatingMember;
	}
	//비밀번호는 변경하고 프로필 사진은 변경하지 않은 개인정보 수정 메소드
	public Member updateMember3(Member updateMember) {
		Connection con = getConnection();
		Member updatingMember = null;
		int result = 0;
		result = new MemberDao().updateMember2(con, updateMember);
		if(result > 0) {
			commit(con);
			updatingMember = new MemberDao().selectOne(con, updateMember);
		} else {
			rollback(con);
		}
		close(con);
		return updatingMember;
	}
	//비밀번호도 변경하고 프로필 사진도 변경한 개인정보 수정 메소드
	public Member updateMember4(Member updateMember) {
		Connection con = getConnection();
		Member updatingMember = null;
		int result1 = 0;
		int result2 = 0;
		
		
		result1 = new MemberDao().updateMember2(con, updateMember);
		if(result1>0) {
			
			result2 = new MemberDao().updateProfile(con,updateMember);
		}
		
		if(result1>0 && result2>0) {
			commit(con);
			updatingMember = new MemberDao().selectOne(con, updateMember);
		}else {
			rollback(con);
		}
		
		
		return updatingMember;
	}
	public int getListCount() {
		Connection con = getConnection();
		int listCount = new MemberDao().getListCount(con);
		
		close(con);
		
		return listCount;
		
		
	}
	public ArrayList<Member> selectAllList(PageInfo pi) {
		Connection con = getConnection();
		ArrayList<Member> memberList = new MemberDao().selectAllList(con,pi);
		
		close(con);
		
		return memberList;
		
		
	}

}
