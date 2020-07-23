package com.kh.login.host.manageReserve.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kh.login.host.manageReserve.model.service.HostReserveService;
import com.kh.login.host.manageReserve.model.vo.HostReservation;
import com.kh.login.member.model.vo.Member;

/**
 * Servlet implementation class InsertHostReserveServlet
 */
@WebServlet("/insertReserve.ho")
public class InsertHostReserveServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public InsertHostReserveServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("인서트 호스트 직접예약");
		//vo에서 int형으로 선언해준것들은 파싱해줌
		Member loginUser = (Member)request.getSession().getAttribute("loginUser");
		
		//reservNo는 시퀀스로
		int guestNo = loginUser.getMemberNo();
		//int spaceNo = //나중에 이미 등록된 공간정보에서 공간번호 빼와야할듯 ..?
		int spaceNo = 100;
		String fixUnfix = "F"; //
		int officeNo = 1;
//		int officeNo = Integer.parseInt(request.getParameter("officeNo"));
		String startDate = request.getParameter("startDate");
		String endDate = request.getParameter("endDate");
		int reservPersonCount = Integer.parseInt(request.getParameter("reservPersonCount"));
		int didHostOk = 1;
		int reservStatus = 1;
		String didReview = "WAIT";
		String reservDate = "SYSDATE"; //SYSDATE
		int expectPay = 0;
//		int expectPay = Integer.parseInt(request.getParameter("expectPay"));
		String userName = request.getParameter("userName");
		String userPhone = request.getParameter("userPhone");
		String userEmail = request.getParameter("userEmail");
		String requestContent =request.getParameter("requestContent");
		
		System.out.println("guestNo : " + guestNo);
		System.out.println("spaceNo : " + spaceNo);
		System.out.println("fixUnfix : " + fixUnfix);
		System.out.println("officeNo : " + officeNo);
		System.out.println("startDate : " + startDate);
		System.out.println("endDate : " + endDate);
		System.out.println("reservPersonCount : " + reservPersonCount);
		System.out.println("didHostOk : " + didHostOk);
		System.out.println("didReview : " + didReview);
		System.out.println("reservDate : " + reservDate);
		System.out.println("expectPay : " + expectPay);
		System.out.println("userName : " + userName);
		System.out.println("userPhone : " + userPhone);
		System.out.println("userEmail : " + userEmail);
		System.out.println("requestContent : " + requestContent);
		
		
		HostReservation requestMember = new HostReservation();
		requestMember.setGuestNo(guestNo);
		requestMember.setSpaceNo(spaceNo);
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
		requestMember.setUserName(userName);
		requestMember.setUserPhone(userPhone);
		requestMember.setUserEmail(userEmail);
		requestMember.setRequestContent(requestContent);
		
		int result = new HostReserveService().insertHostReserve(requestMember);
		
		String page = "";
		if(result > 0) {
			page = "/views/common/selectHostReserve.jsp";
			request.setAttribute("reserveNo", "insertReservationInfo");
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
