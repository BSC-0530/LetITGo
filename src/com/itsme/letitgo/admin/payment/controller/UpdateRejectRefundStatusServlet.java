package com.itsme.letitgo.admin.payment.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.itsme.letitgo.admin.payment.model.service.UpdateRefundStatusService;

@WebServlet("/admin/refund/reject/update")
public class UpdateRejectRefundStatusServlet extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		int payChangeNo = Integer.parseInt(request.getParameter("payChangeNo"));
		int payNo = Integer.parseInt(request.getParameter("payNo"));
		
		UpdateRefundStatusService service = new UpdateRefundStatusService();
		
		int result1 = service.updateRefundRejectStatus(payChangeNo);
		int result2 = service.updateRefundRejectStatus2(payNo);
		
		System.out.println(payChangeNo);
		System.out.println(payNo);
		
		StringBuilder redirectText = new StringBuilder();
		
		if(result1 > 0 && result2 > 0) {
			redirectText.append("<script>alert('환불요청을 거절하셨습니다.'); location.href='../../refund/select';</script>");
		} else {
			redirectText.append("<script>alert('환불요청거절에 실패하셨습니다.'); location.href='../../refund/select';</script>");
		}
		 									
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();
		
		out.print(redirectText.toString());
		out.flush();
		out.close();
		
	}


}
