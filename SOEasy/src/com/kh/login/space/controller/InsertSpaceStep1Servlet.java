package com.kh.login.space.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Enumeration;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.tomcat.util.http.fileupload.servlet.ServletFileUpload;

import com.kh.login.common.SoEasyFileRenamePolicy;
import com.kh.login.member.model.vo.Member;
import com.oreilly.servlet.MultipartRequest;

/**
 * Servlet implementation class InsertSpaceStep1
 */
@WebServlet("/insertSpaceStep1")
public class InsertSpaceStep1Servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public InsertSpaceStep1Servlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		if(ServletFileUpload.isMultipartContent(request)) {
			
			Member loginUser = (Member) request.getSession().getAttribute("loginUser");
			int memberNo = loginUser.getMemberNo();
			String memberNick = loginUser.getmNick();
			
			int maxSize = 1024 * 1024 * 20;
			
			String root = request.getSession().getServletContext().getRealPath("/");
			
			String savePath = root + "uploadFiles/space";
			
			MultipartRequest multiRequest = new MultipartRequest(request, savePath, maxSize, "UTF-8", new SoEasyFileRenamePolicy(memberNick));
			
			ArrayList<String> saveFiles = new ArrayList<>();
			ArrayList<String> originFiles = new ArrayList<>();
			
			Enumeration<String> files = multiRequest.getFileNames();
			
			while(files.hasMoreElements()) {
				String name = files.nextElement();
				
				saveFiles.add(multiRequest.getFilesystemName(name));
				originFiles.add(multiRequest.getOriginalFileName(name));
			}
			
			String kinds = multiRequest.getParameter("kinds");
			
			double spaceSize = Double.parseDouble(multiRequest.getParameter("space-size"));
			int spaceRoomCount = Integer.parseInt(multiRequest.getParameter("space-room-count"));
			int spaceContainCount = Integer.parseInt(multiRequest.getParameter("space-contain-count"));
			
			int unfixSeat = Integer.parseInt(multiRequest.getParameter("unfix-seat"));
			int fixSeat = Integer.parseInt(multiRequest.getParameter("fix-seat"));
			int totalSeat = unfixSeat + fixSeat;
			int maxReserv = Integer.parseInt(multiRequest.getParameter("max-reserv"));
			
			String spaceName = multiRequest.getParameter("space-name");
			String spaceIntro = multiRequest.getParameter("space-intro");
			String[] spaceTags = multiRequest.getParameterValues("space-tag");
			String[] convs = multiRequest.getParameterValues("conv");
			String spaceAddress = multiRequest.getParameter("space-address");
			
			if(kinds == "office") {
				
			} else {
				
			}
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
