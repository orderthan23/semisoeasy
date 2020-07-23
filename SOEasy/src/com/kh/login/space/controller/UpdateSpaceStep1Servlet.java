package com.kh.login.space.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Enumeration;
import java.util.HashMap;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.tomcat.util.http.fileupload.servlet.ServletFileUpload;

import com.kh.login.common.SoEasyFileRenamePolicy;
import com.kh.login.member.model.vo.Member;
import com.kh.login.space.model.vo.Image;
import com.kh.login.space.model.vo.QnA;
import com.kh.login.space.model.vo.Review;
import com.kh.login.space.model.vo.SpaceInfo;
import com.oreilly.servlet.MultipartRequest;

/**
 * Servlet implementation class UpdateSpaceStep1Servlet
 */
@WebServlet("/updateSpaceStep1")
public class UpdateSpaceStep1Servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdateSpaceStep1Servlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		if(ServletFileUpload.isMultipartContent(request)) {
			
			Member loginUser = (Member) request.getSession().getAttribute("loginUser");
			String memberId = loginUser.getmId();
			
			ArrayList<HashMap<String,Object>> siList = (ArrayList<HashMap<String,Object>>) request.getSession().getAttribute("siList");
			HashMap<String, Object> hmap = siList.get(0);
			
			SpaceInfo si = (SpaceInfo) hmap.get("spaceInfo");
			
			ArrayList<Image> imgList = (ArrayList<Image>) hmap.get("imgList");
			ArrayList<Review> reviewList = (ArrayList<Review>) hmap.get("reviewList");
			ArrayList<QnA> qnaList = (ArrayList<QnA>) hmap.get("qnaList");
			
			//이미지 파일들 불러오기
			int maxSize = 1024 * 1024 * 20;
			
			String root = request.getSession().getServletContext().getRealPath("/");
			
			String savePath = "/uploadFiles/space";
			String realPath = root + savePath;
			
			MultipartRequest multiRequest = new MultipartRequest(request, realPath, maxSize, "UTF-8", new SoEasyFileRenamePolicy("space" + memberId));
			
			ArrayList<String> allSaveFiles = new ArrayList<>();
			ArrayList<String> allOriginFiles = new ArrayList<>();
			ArrayList<String> updateSaveFiles = new ArrayList<>();
			ArrayList<String> updateOriginFiles = new ArrayList<>();
			ArrayList<String> insertSaveFiles = new ArrayList<>();
			ArrayList<String> insertOriginFiles = new ArrayList<>();
			
			Enumeration<String> files = multiRequest.getFileNames();
			
			while(files.hasMoreElements()) {
				String name = files.nextElement();
				if(multiRequest.getFilesystemName(name) == null) {
					
				} else {
					allSaveFiles.add(multiRequest.getFilesystemName(name));
					allOriginFiles.add(multiRequest.getOriginalFileName(name));
				}
			}
			
			int originFilesLen = imgList.size();
			int updateFilesLen = allSaveFiles.size();
			int insertNum = updateFilesLen - originFilesLen;
			
			for(int i = 0; i < updateFilesLen; i++) {
				if(i < originFilesLen) {
					updateSaveFiles.add(allSaveFiles.get(i));
					updateOriginFiles.add(allOriginFiles.get(i));
				} else {
					insertSaveFiles.add(allSaveFiles.get(i));
					insertOriginFiles.add(allOriginFiles.get(i));
				}
			}
			
			ArrayList<Image> updateImgList = new ArrayList<>();
			ArrayList<Image> insertImgList = new ArrayList<>();
			
			for(int i = 0; i < updateImgList.size(); i++) {
				Image i = new Image();
				
				
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
