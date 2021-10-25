package com.itsme.letitgo.admin.payment.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.itsme.letitgo.admin.payment.model.dto.AdminRefundHistoryDTO;
import com.itsme.letitgo.admin.payment.model.service.SelectRefundListService;

/* 관리자 -> 환불 요청 관리 */
@WebServlet("/admin/refund/select")
public class SelectRefundListServlet extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		SelectRefundListService service = new SelectRefundListService();
		
		/* 모든 환불내역조회 */
		List<AdminRefundHistoryDTO> refundHistoryList = service.selectRefundList();

		/* request에 조회한 내용들을 key, value 형식으로 담아서 forward 방식으로 해당 페이지로 이동시킴 */
		String path = "/WEB-INF/views/admin/adminRefund.jsp";	
		request.setAttribute("refundHistoryList", refundHistoryList);
		request.getRequestDispatcher(path).forward(request, response);
		
	}

}
