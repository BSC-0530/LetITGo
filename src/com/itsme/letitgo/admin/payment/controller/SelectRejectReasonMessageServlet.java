package com.itsme.letitgo.admin.payment.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.itsme.letitgo.admin.payment.model.service.SelectRefundListService;

/* 관리자 -> 환불 요청관리 -> 거절사유 상세보기*/
@WebServlet("/admin/refundHistory/rejectReason/select")
public class SelectRejectReasonMessageServlet extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int payChangeNo = Integer.parseInt(request.getParameter("payChangeNo"));

		SelectRefundListService service = new SelectRefundListService();
		
		/* 결제변경번호를 통해서 환불거절사유를 가져옴. */
		String refundRejectMessage = service.selectRejectReasonMessage(payChangeNo);

		/* request에 조회한 내용들을 key, value 형식으로 담아서 forward 방식으로 해당 페이지로 이동시킴 */
		String path="";
		path = "/WEB-INF/views/admin/refundReasonRejectMessage.jsp";
		
		request.setAttribute("refundRejectMessage", refundRejectMessage);
		request.getRequestDispatcher(path).forward(request, response);
		
	}


}
