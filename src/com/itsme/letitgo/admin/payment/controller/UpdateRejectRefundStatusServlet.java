package com.itsme.letitgo.admin.payment.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.itsme.letitgo.admin.payment.model.service.UpdateRefundStatusService;
import com.itsme.letitgo.admin.recruit.jobposting.model.service.UpdatePostRequestRejectService;

@WebServlet("/admin/refund/reject/update")
public class UpdateRejectRefundStatusServlet extends HttpServlet {
	
	private int payChangeNo;
	private int payNo;
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		payChangeNo = Integer.parseInt(request.getParameter("payChangeNo"));
		payNo = Integer.parseInt(request.getParameter("payNo"));
		
		System.out.println(payChangeNo);
		System.out.println(payNo);
		
		String path = "/WEB-INF/views/admin/adminRefundRejectMessage.jsp";
		
		request.getRequestDispatcher(path).forward(request, response);
		
		
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		request.setCharacterEncoding("UTF-8");
		
		String rejectMessage = request.getParameter("rejectMessage");	
		System.out.println("rejectMessage : " + rejectMessage); 

		UpdateRefundStatusService UpdateRefundStatus = new UpdateRefundStatusService();	
	
		Map<String, Object> map = new HashMap<>();
		map.put("rejectMessage", rejectMessage);
		map.put("payChangeNo", payChangeNo);
		map.put("payNo", payNo);
		
		int result1 = UpdateRefundStatus.updateRefundRejectStatus1(map);		
		int result2 = UpdateRefundStatus.updateRefundRejectStatus2(map);
		
		System.out.println("result1 : " + result1);
		System.out.println("result2 : " + result2);

		StringBuilder redirectText = new StringBuilder();
		
		if(result1 > 0 && result2 > 0) {
			redirectText.append("<script>alert('환불요청을 거절하셨습니다.'); location.href='../../refund/select';</script>");
		} else {
			redirectText.append("<script>alert('환불요청거절을 실패하셨습니다.'); location.href='../../refund/select';</script>");
		}
		 							
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();
		
		out.print(redirectText.toString());
		out.flush();
		out.close();
		
	}
}
