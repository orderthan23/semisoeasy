package com.kh.login.board.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kh.login.board.model.service.BoardService;
import com.kh.login.board.model.vo.Board;

@WebServlet("/selectList.faq")
public class SelectFAQListServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public SelectFAQListServlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ArrayList<Board> list = new BoardService().selectFAQList();
		
		String page = "";
		if(list != null) {
				page = "views/board/faqboard.jsp";
				request.setAttribute("list", list);
		} else {
				page ="views/common/errorPage.jsp";
				request.setAttribute("msg", "게시판 갱신 실패!");
			
		}
		request.getRequestDispatcher(page).forward(request, response);
	}
		

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		
		doGet(request, response);
	}

}
