package com.itsme.letitgo.admin.payment.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.itsme.letitgo.company.payment.model.service.RefundHistoryService;

/* 관리자 -> 환불요청관리 -> 환불사유상세보기 */
@WebServlet("/admin/refundHistory/reason/select")
public class SelectRefundReasonMessageServlet extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int payChangeNo = Integer.parseInt(request.getParameter("payChangeNo"));

		RefundHistoryService service = new RefundHistoryService();
		
		/* 결제변경번호를 통해서 변경사유를 가져옴. */
		String refundMessage = service.selectRefundMessage(payChangeNo);

		String path="";
		path = "/WEB-INF/views/admin/refundReasonMessage.jsp";
		
		request.setAttribute("refundMessage", refundMessage);
		request.getRequestDispatcher(path).forward(request, response);
		
	}


}
