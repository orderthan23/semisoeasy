package com.kh.login.space.controller;

import java.io.IOException;
import java.sql.Date;
import java.util.ArrayList;
import java.util.HashMap;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kh.login.host.manageReserve.model.vo.PageInfo;
import com.kh.login.space.model.service.SearchService;
import com.kh.login.space.model.vo.SearchFilter;

/**
 * Servlet implementation class FilterSearchServlet
 */
@WebServlet("/select.fi")
public class FilterSearchServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public FilterSearchServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String search = request.getParameter("search");
		int spaceKind= 0;		//int
		int didHostOk = 0;		//int
		String spaceLocationFilter= request.getParameter("location");
		int term = 0;
		String sort = request.getParameter("sort");
		int rowPrice = 0;			//int
		int highPrice = 0;		//int
		
		String rowPriceSort = "S.SPACE_MONTH_PAY DESC, S.SPACE_DAY_PAY DESC"; //이렇게 말고 month_pay랑 day_pay 조인해서 한꺼번에 가격순위 매길 수 없나?
		String highPriceSort = "S.SPACE_MONTH_PAY DESC, S.SPACE_DAY_PAY DESC"; //이렇게 말고 month_pay랑 day_pay 조인해서 한꺼번에 가격순위 매길 수 없나?
		int reviewCount = 0;
		String reviewQuery = "S.SPACE_MONTH_PAY DESC, S.SPACE_DAY_PAY DESC"; //이렇게 말고 month_pay랑 day_pay 조인해서 한꺼번에 가격순위 매길 수 없나?
		
		String root = request.getRequestURI();
		String url = PageInfo.customQString(request.getQueryString(), 2);
		
		
		int currentPage = 0;
		int limit;
		int maxPage;
		int startPage;
		int endPage;
		
		
		
		
		

//		int cut = spaceLoactionFilter.indexOf(",");
//		realFilter = spaceLocationFilter.substring(int cut);
		
		System.out.println("search : " + search);
		System.out.println("spaceKind : " + spaceKind);
		System.out.println("location : " + spaceLocationFilter);
		System.out.println("sort : " + sort);
		System.out.println("term : " + term);
		
		
		
		
		
		
		
		if(request.getParameter("currentPage") != null) {
			currentPage = Integer.parseInt(request.getParameter("currentPage"));
		}
		
		if(request.getParameter("spaceKind") != null) {
			spaceKind= Integer.parseInt(request.getParameter("spaceKind"));
		}
		
		if(request.getParameter("didHostOk") != null) {
			didHostOk = Integer.parseInt(request.getParameter("didHostOk"));
		}
		
		if(request.getParameter("rowPrice") != null) {
			rowPrice = Integer.parseInt(request.getParameter("rowPrice"));
		}
		
		if(request.getParameter("highPrice") != null) {
			highPrice = Integer.parseInt(request.getParameter("highPrice"));
		}
		
		if(request.getParameter("term") != null) {
			term = Integer.parseInt(request.getParameter("term"));
		}
		
		if(request.getParameter("reviewCount") != null) {
			reviewCount = Integer.parseInt(request.getParameter("reviewCount"));
		}
		
		
		limit = 12;
		
		int listCount = new SearchService().getListCount();
		
		maxPage = (int) ((double) listCount / limit + 0.9);
		
		startPage = (((int) ((double) currentPage / 10 + 0.9)) -1) * 10 + 1;
		
		endPage = startPage + 10 - 1;
		
		
		if(maxPage < endPage) {
			endPage = maxPage;
		}

		PageInfo pi = new PageInfo(currentPage, listCount, limit, maxPage, startPage, endPage, 0);
		
		SearchFilter sf = new SearchFilter(search, spaceKind, didHostOk, spaceLocationFilter, term, rowPrice, highPrice, rowPriceSort, highPriceSort, reviewCount);
		
		ArrayList<HashMap<String, Object>> list = new SearchService().filterSelectList(pi, search, sf);
		
		String page = "";
		if(search != null) {
			page = "/views/space/search1.jsp";
			request.setAttribute("list", list);
			request.setAttribute("search", search);
			request.setAttribute("pi", pi);
			request.setAttribute("root", root);
			request.setAttribute("url", url);
		} else {
			page = "/views/common/errorPage.jsp";
			request.setAttribute("msg", "공간 검색 실패!");
		}
		
		request.getRequestDispatcher(page).forward(request, response);
		
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
