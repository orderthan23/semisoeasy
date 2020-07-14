package com.kh.login.member.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kh.login.member.model.vo.Member;

@WebServlet("/updateMember.me")
public class updateMemberServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public updateMemberServlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int kind = Integer.parseInt(request.getParameter("swPassword"));
		String userId = request.getParameter("userId");
		String nickName = request.getParameter("nickName");
		String name = request.getParameter("name");
		String password = request.getParameter("password");//kind가 1이면 사용하지 않음
		String phoneNum = request.getParameter("phoneNum");
		String email = request.getParameter("email");
		System.out.println(kind);
		Member updateMember = new Member();
		System.out.println("id : "+userId);
		System.out.println("nick : "+nickName);
		System.out.println("name : "+name);
		System.out.println("password : "+password);
		System.out.println("phoneNum : "+phoneNum);
		System.out.println("email : "+email);
		
		//비밀번호 수정을 진행하지 않았을때
		if(kind==1) {
			
			updateMember.setmId(userId);
			updateMember.setmNick(nickName);
			updateMember.setmName(name);
		}
		//비밀번호 수정을 했을 때
		else {
			
		}
	
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
