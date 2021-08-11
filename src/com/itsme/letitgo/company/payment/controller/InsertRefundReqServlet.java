package com.itsme.letitgo.company.payment.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/refund/request/insert")
public class InsertRefundReqServlet extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int payNo = Integer.parseInt(request.getParameter("payNo"));
		String productName = request.getParameter("productName");
		
		System.out.println(payNo);
		System.out.println(productName);
		
		String path = "/WEB-INF/views/payment/refundRequest.jsp";
		
		request.getRequestDispatcher(path).forward(request, response);
	}

}
