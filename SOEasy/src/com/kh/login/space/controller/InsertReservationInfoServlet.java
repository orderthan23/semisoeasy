package com.kh.login.space.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kh.login.member.model.vo.Member;
import com.kh.login.space.model.service.SpaceReservationService;
import com.kh.login.space.model.vo.SpaceReservation;

/**
 * Servlet implementation class InsertReservationInfoServlet
 */
@WebServlet("/insertReservationInfo")
public class InsertReservationInfoServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public InsertReservationInfoServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		//vo에서 int형으로 선언해준것들은 파싱해줌
		Member loginUser = (Member)request.getSession().getAttribute("loginUser");
		int guestNo = loginUser.getMemberNo();
		int spaceNo = 100;
		String fixUnfix = request.getParameter("fixUnfix");
		int officeNo = Integer.parseInt(request.getParameter("officeNo"));
		String startDate = request.getParameter("startDate");
		String endDate = request.getParameter("endDate");
		int reservPersonCount = Integer.parseInt(request.getParameter("reservPersonCount"));
		String didHostOk = request.getParameter("didHostOk");
		int reservStatus = Integer.parseInt(request.getParameter("reservStatus"));
		String didReview = request.getParameter("didReview");
		String reservDate = request.getParameter("reservDate"); //SYSDATE
		int expectPay = Integer.parseInt(request.getParameter("expectPay"));

		SpaceReservation requestMember = new SpaceReservation();
		requestMember.setGuestNo(guestNo);
		requestMember.setSpaceNo(officeNo);
		requestMember.setFixUnfix(fixUnfix);
		requestMember.setOfficeNo(officeNo);
		requestMember.setStartDate(startDate);
		requestMember.setEndDate(endDate);
		requestMember.setReservPersonCount(reservPersonCount);
		requestMember.setDidHostOk(didHostOk);
		requestMember.setReservStatus(reservStatus);
		requestMember.setDidReview(didReview);
		//reservDate는 쿼리문에서 SYSDATE로 넣을거기 때문에 여기서 전달 X
		requestMember.setExpectPay(expectPay);
		
		int result = new SpaceReservationService().insertReservation(requestMember);
		
		String page = "";
		if(result > 0) {
			page = "/views/common/successPage.jsp";
			request.setAttribute("successCode", "insertReservationInfo");
			request.getRequestDispatcher(page).forward(request, response);
		} else {
			page = "/views/common/errorPage.jsp";
			request.setAttribute("msg", "예약정보 insert 실패");
			request.getRequestDispatcher(page).forward(request, response);
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
