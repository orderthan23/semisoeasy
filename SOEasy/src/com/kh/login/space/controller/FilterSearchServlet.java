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
		String search = request.getParameter("filterSearchKeyword");
		String spaceKind= request.getParameter("spaceKind");		//int
		String didHostOk = null;		//int
		String spaceLocationFilter= request.getParameter("location");
		String term = request.getParameter("term");
		String sort = request.getParameter("sort");
		int lowPrice = 0;			//int
		int highPrice = 0;			//int
		
		String lowPriceSort = "S.SPACE_MONTH_PAY DESC, S.SPACE_DAY_PAY DESC"; //이렇게 말고 month_pay랑 day_pay 조인해서 한꺼번에 가격순위 매길 수 없나?
		String highPriceSort = "S.SPACE_MONTH_PAY DESC, S.SPACE_DAY_PAY ASC"; //이렇게 말고 month_pay랑 day_pay 조인해서 한꺼번에 가격순위 매길 수 없나?
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
		
		System.out.println("searchKeyword : " + search);
		System.out.println("location : " + spaceLocationFilter);
		System.out.println("sort : " + sort);
		System.out.println("term : " + term);
		
		
		if(request.getParameter("currentPage") != null) {
			currentPage = Integer.parseInt(request.getParameter("currentPage"));
		}
		
		if(request.getParameter("didHostOk") != null) {
			didHostOk = request.getParameter("didHostOk");
		}
		
		if(request.getParameter("lowPrice") != null) {
			lowPrice = Integer.parseInt(request.getParameter("lowPrice"));
		}
		
		if(request.getParameter("highPrice") != null) {
			highPrice = Integer.parseInt(request.getParameter("highPrice"));
		}
		
		if(request.getParameter("reviewCount") != null) {
			reviewCount = Integer.parseInt(request.getParameter("reviewCount"));
		}
		
		System.out.println("currentPage : " + currentPage);
		System.out.println("spaceKind : " + spaceKind);
		System.out.println("didHostOk : " + didHostOk);
		System.out.println("lowPrice : " + lowPrice);
		System.out.println("highPrice : " + highPrice);
		System.out.println("reviewCount : " + reviewCount);
		
		SearchFilter sf = new SearchFilter(search, spaceKind, didHostOk, spaceLocationFilter, term, lowPrice, highPrice, lowPriceSort, highPriceSort, reviewCount);
		
		limit = 12;
		
		int listCount = new SearchService().getFilterListCount(sf);
		
		maxPage = (int) ((double) listCount / limit + 0.9);
		
		startPage = (((int) ((double) currentPage / 10 + 0.9)) -1) * 10 + 1;
		
		endPage = startPage + 10 - 1;
		
		
		if(maxPage < endPage) {
			endPage = maxPage;
		}

		PageInfo pi = new PageInfo(currentPage, listCount, limit, maxPage, startPage, endPage, 0);
		
		
		
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
