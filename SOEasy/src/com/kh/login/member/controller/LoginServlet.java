package com.kh.login.member.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.kh.login.member.model.service.MemberService;
import com.kh.login.member.model.vo.Member;

@WebServlet("/login")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	// 로그인 처리를 위한 상수 선언
	public static int LOGIN_GUEST = 1;
	public static int LOGIN_HOST = 2;
	public static int LOGIN_ADMIN = 3;
	public static int LOGIN_FAILED = 0;

	public LoginServlet() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// 1. 전송값에 한글이 있을 경우 인코딩 처리 해야함
		request.setCharacterEncoding("UTF-8");

		// 2. 전송 값 꺼내서 변수에 담기
		String userId = request.getParameter("userId");
		String password = request.getParameter("password");

		// 3. 비지니스 로직을 처리할 서비스 클래스의 메소드로 전송할 떄 파라미터가 많으면 vo에 담는다
		Member requestMember = new Member();
		requestMember.setUserId(userId);
		requestMember.setPassword(password);

		// 4. 비지니스 로직을 처리할 서비스 클래스의 메소드 호출
		Member loginUser = new MemberService().loginCheck(requestMember);

		// 5. 받은 결과에 따라 성공/ 실패 페이지 내보내기
		String view = "";
		if (loginUser.getStatus() >= LOGIN_GUEST) {

			HttpSession session = request.getSession();
			session.setAttribute("loginUser", loginUser);
			
			if(loginUser.getStatus()==LOGIN_GUEST) {
				response.sendRedirect("/login/views/main/guestMain.jsp");
			}else if(loginUser.getStatus()==LOGIN_HOST) {
				response.sendRedirect("/login/views/main/hostMain.jsp");
			}else {
				response.sendRedirect("/login/views/main/adminMain.jsp");
			}
			
		} else {
			view = "views/common/errorPage.jsp";
			String msg = "일치하는 정보가 없습니다 다시 로그인 하세요.";

			request.setAttribute("msg", msg);
			RequestDispatcher rd = request.getRequestDispatcher(view);
			rd.forward(request, response);
		}

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

}
