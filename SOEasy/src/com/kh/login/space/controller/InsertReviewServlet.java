package com.kh.login.space.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kh.login.member.model.vo.Member;
import com.kh.login.space.model.service.ReviewService;
import com.kh.login.space.model.vo.Review;
import com.kh.login.space.model.vo.SpaceInfo;

/**
 * Servlet implementation class InsertReviewServlet
 */
@WebServlet("/insertReview")
public class InsertReviewServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public InsertReviewServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		Member loginUser = (Member)request.getSession().getAttribute("loginUser");
		SpaceInfo space = new SpaceInfo();
		
		//reviewNo는 시퀀스로 주기
		//int reviewNo = 
		int spaceNo = space.getSpaceNo();
		int memberNo = loginUser.getMemberNo();
		String reviewContent = request.getParameter("reviewContent");
		int rPoint = Integer.parseInt(request.getParameter("rPoint"));
		String enrollDate = "SYSDATE";
		
		Review requestMember = new Review();
		//requestMember.setReviewNo(reviewNo);
		requestMember.setSpaceNo(spaceNo);
		requestMember.setMemberNo(memberNo);
		requestMember.setReviewContent(reviewContent);
		requestMember.setrPoint(rPoint); //별점 어케 가져옴
		requestMember.setEnrollDate(enrollDate);
		
		int result = new ReviewService().insertReview(requestMember);
		
		String page = "";
		if(result > 0) {
			page = "/views/common/successPage.jsp";
			request.setAttribute("successCode", "insertReview");
			request.getRequestDispatcher(page).forward(request, response);
		} else {
			page = "/views/common/errorPage.jsp";
			request.setAttribute("msg", "리뷰 등록 실패");
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
