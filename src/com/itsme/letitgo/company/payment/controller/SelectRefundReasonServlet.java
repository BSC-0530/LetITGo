package com.itsme.letitgo.company.payment.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.itsme.letitgo.company.payment.model.dto.RefundHistoryDTO;
import com.itsme.letitgo.company.payment.model.service.RefundHistoryService;

/* home -> 기업 마이페이지 -> 환불내역 -> 상세보기 */
@WebServlet("/company/refundHistory/reason/select")
public class SelectRefundReasonServlet extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int payChangeNo = Integer.parseInt(request.getParameter("payChangeNo"));

		RefundHistoryService service = new RefundHistoryService();
		
		/* 결제변경번호를 통해서 변경사유를 가져옴. */
		String refundMessage = service.selectRefundMessage(payChangeNo);

		String path="";
		path = "/WEB-INF/views/payment/refundReasonMessage.jsp";
		
		request.setAttribute("refundMessage", refundMessage);
		request.getRequestDispatcher(path).forward(request, response);
	}

}
