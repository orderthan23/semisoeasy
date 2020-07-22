package com.kh.login.guest.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONObject;

import jdk.nashorn.internal.parser.JSONParser;

/**
 * Servlet implementation class insertPayHistoryServlet
 */
@WebServlet("/payments/complete")
public class insertPayHistoryServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public insertPayHistoryServlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//org.json.simple.parser.JSONParser jsonparsor = new org.json.simple.parser.JSONParser();
		
		String payNo = request.getParameter("payNo");
		int amount = Integer.parseInt(request.getParameter("amount"));
		int reserveNo = Integer.parseInt(request.getParameter("reserveNo"));
		String methodCode = request.getParameter("methodCode");
		
		System.out.println(payNo);
		System.out.println(amount);
		System.out.println(reserveNo);
		System.out.println(methodCode);
		
		
		
		
		//out.append(imp_uid);
	
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		doGet(request, response);
	}

}
