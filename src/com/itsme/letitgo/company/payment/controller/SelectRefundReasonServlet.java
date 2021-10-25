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
		
		/* 환불내역 상세보기시 결제변경요청번호를 jsp로부터 받아옴 */
		int payChangeNo = Integer.parseInt(request.getParameter("payChangeNo"));

		RefundHistoryService service = new RefundHistoryService();
		
		/* 결제변경번호를 통해서 변경사유를 가져옴. */
		String refundMessage = service.selectRefundMessage(payChangeNo);

		/* request에 조회한 내용들을 key, value 형식으로 담아서 forward 방식으로 해당 페이지로 이동시킴 */
		String path="";
		path = "/WEB-INF/views/payment/refundReasonMessage.jsp";
		
		request.setAttribute("refundMessage", refundMessage);
		request.getRequestDispatcher(path).forward(request, response);
	}

}
