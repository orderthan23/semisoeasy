package com.kh.login.board.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import com.kh.login.member.model.vo.Member;
import com.kh.login.board.model.vo.board;
@WebServlet("/insert.no")
public class InsertNoticeServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public InsertNoticeServlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String title = request.getParameter("title");
		String content = request.getParameter("content");
		int category = Integer.parseInt(request.getParameter("category"));
		HttpSession session = request.getSession();
		Member loginUser = (Member) session.getAttribute("loginUser");
		int mno = loginUser.getMemberNo();
	
		System.out.println("category : " + title );
		System.out.println("content : " + content );
		System.out.println("category : " + mno );
		System.out.println("category : " + category );
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
