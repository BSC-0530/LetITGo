package com.itsme.letitgo.company.payment.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/payment/insert")
public class PaymentServlet extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");
		
		String goodname = request.getParameter("goodname");
		String buyername = request.getParameter("buyername");
		String buyertel = request.getParameter("buyertel");
		String buyeremail = request.getParameter("buyeremail");
		String price = request.getParameter("price");
		String mid = request.getParameter("mid");
		String gopaymethod = request.getParameter("gopaymethod");
		String mKey = request.getParameter("mKey");
		String signature = request.getParameter("signature");
		String oid = request.getParameter("oid");
		String timestamp = request.getParameter("timestamp");
		String version = request.getParameter("version");
		String currency = request.getParameter("currency");
		String acceptmethod = request.getParameter("acceptmethod");
		String returnUrl = request.getParameter("returnUrl");
		String closeUrl = request.getParameter("closeUrl");
		
		

		
	}

}
