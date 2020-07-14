package com.kh.login.space.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kh.login.member.model.vo.Member;
import com.kh.login.space.model.vo.SpaceInfo;

/**
 * Servlet implementation class InsertSpaceStep2Servlet
 */
@WebServlet("/insertSpaceStep2")
public class InsertSpaceStep2Servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public InsertSpaceStep2Servlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		Member loginUser = (Member) request.getAttribute("loginUser");
		SpaceInfo si = (SpaceInfo) request.getAttribute("spaceInfo");
		
		int monthPay = Integer.parseInt(request.getParameter("month-pay"));
		int dayPay = Integer.parseInt(request.getParameter("day-pay"));
		String didDayReserv = "N";
		String didMonthReserv = "N";
		if(monthPay > 0) {
			didMonthReserv = "Y";
		}
		if (dayPay > 0) {
			didDayReserv = "Y";
		}
		String spacePayPolicy = request.getParameter("policy-intro");
		
		//공간 운영시간
		
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
