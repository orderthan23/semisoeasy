package com.kh.login.space.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kh.login.member.model.vo.Member;
import com.kh.login.space.model.service.SpaceService;

/**
 * Servlet implementation class DeleteRequestSpaceServlet
 */
@WebServlet("/deleteRequest")
public class DeleteRequestSpaceServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DeleteRequestSpaceServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int sNo = Integer.parseInt(request.getParameter("sNo"));
		Member loginUser = (Member) request.getSession().getAttribute("loginUser");
		int memberNo = loginUser.getMemberNo();
		
		int result = new SpaceService().deleteRequest(sNo);
		
		if(result > 0) {
			response.sendRedirect(request.getContextPath() + "/selectTempSpace?memberNo=" + memberNo);
		} else {
			request.setAttribute("msg", "삭제 요청 실패");
			request.getRequestDispatcher("/views/common/errorPage.jsp").forward(request, response);
		}
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
