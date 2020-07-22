package com.kh.login.board.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.kh.login.board.model.vo.Qna;
import com.kh.login.member.model.vo.Member;

@WebServlet("/insert.mm")
public class InsertMtoMServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
     public InsertMtoMServlet() {
        super();
    }
	
     protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	 String id = request.getParameter("id");
 		String title = request.getParameter("title");
 		String content = request.getParameter("content");
 		int category = Integer.parseInt(request.getParameter("category"));
 		HttpSession session = request.getSession();
 		Member loginUser = (Member) session.getAttribute("loginUser");
 		
 		int qno = loginUser.getMemberNo(); 
 		String nick = loginUser.getmNick();
 		String nickname = loginUser.getmNick();
     
 		
 		String page = "";
 		Qna qna = new Qna();
 		qna.setQcontent(content);
 		qna.setQmember(qno);
 		qna.setQkind(category);
 		 
     }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
