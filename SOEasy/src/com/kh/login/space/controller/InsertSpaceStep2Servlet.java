package com.kh.login.space.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kh.login.member.model.vo.Member;
import com.kh.login.space.model.service.SpaceService;
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
		//월
		String monOpenCheck = request.getParameter("mon-open-check");
		int monStartTime = Integer.parseInt(request.getParameter("mon-start-time"));
		int monEndTime = Integer.parseInt(request.getParameter("mon-end-time"));
		//화
		String tueOpenCheck = request.getParameter("tue-open-check");
		int tueStartTime = Integer.parseInt(request.getParameter("tue-start-time"));
		int tueEndTime = Integer.parseInt(request.getParameter("tue-end-time"));
		//수
		String wedOpenCheck = request.getParameter("wed-open-check");
		int wedStartTime = Integer.parseInt(request.getParameter("wed-start-time"));
		int wedEndTime = Integer.parseInt(request.getParameter("wed-end-time"));
		//목
		String thuOpenCheck = request.getParameter("thu-open-check");
		int thuStartTime = Integer.parseInt(request.getParameter("thu-start-time"));
		int thuEndTime = Integer.parseInt(request.getParameter("thu-end-time"));
		//금
		String friOpenCheck = request.getParameter("fri-open-check");
		int friStartTime = Integer.parseInt(request.getParameter("fri-start-time"));
		int friEndTime = Integer.parseInt(request.getParameter("fri-end-time"));
		//토
		String satOpenCheck = request.getParameter("sat-open-check");
		int satStartTime = Integer.parseInt(request.getParameter("sat-start-time"));
		int satEndTime = Integer.parseInt(request.getParameter("sat-end-time"));
		//일
		String sunOpenCheck = request.getParameter("sun-open-check");
		int sunStartTime = Integer.parseInt(request.getParameter("sun-start-time"));
		int sunEndTime = Integer.parseInt(request.getParameter("sun-end-time"));
		
		//일자별 환불율
		//8일전부터 받기
		double day8 = Double.parseDouble(request.getParameter("day8-rate"));
		double day7 = Double.parseDouble(request.getParameter("day7-rate"));
		double day6 = Double.parseDouble(request.getParameter("day6-rate"));
		double day5 = Double.parseDouble(request.getParameter("day5-rate"));
		double day4 = Double.parseDouble(request.getParameter("day4-rate"));
		double day3 = Double.parseDouble(request.getParameter("day3-rate"));
		double day2 = Double.parseDouble(request.getParameter("day2-rate"));
		double day1 = Double.parseDouble(request.getParameter("day1-rate"));
		double day0 = Double.parseDouble(request.getParameter("day0-rate"));
		
		String[] openChecks = new String[] {monOpenCheck, tueOpenCheck, wedOpenCheck, thuOpenCheck, friOpenCheck, satOpenCheck, sunOpenCheck};
		int[] startTimes = new int[] {monStartTime, tueStartTime, wedStartTime, thuStartTime, friStartTime, satStartTime, sunStartTime};
		int[] endTimes = new int[] {monEndTime, tueEndTime, wedEndTime, thuEndTime, friEndTime, satEndTime, sunEndTime};
		double[] spaceRefundPolicy = new double[] {day0, day1, day2, day3, day4, day5, day6, day7, day8};
		
		//가져온 spaceInfo에 값 집어넣기.
		si.setDidDayReserv(didDayReserv);
		si.setDidMonthReserv(didMonthReserv);
		si.setDayPay(dayPay);
		si.setMonthPay(monthPay);
		si.setSpacePayPolicy(spacePayPolicy);
		si.setStartTimes(startTimes);
		si.setEndTimes(endTimes);
		si.setSpaceRefundPolicy(spaceRefundPolicy);
		
		SpaceInfo returnSi = new SpaceService().insertSpaceStep2(si);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
