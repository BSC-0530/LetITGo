package com.itsme.letitgo.admin.payment.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.itsme.letitgo.admin.payment.model.dto.AdminPaymentHistoryDTO;
import com.itsme.letitgo.admin.payment.model.service.SelectPaymentListService;

/* 관리자 -> 결제 내역 조회 */
@WebServlet("/admin/payment/select")
public class SelectPaymentListServlet extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		SelectPaymentListService service = new SelectPaymentListService();
		
		/* 모든 결제내역조회 */
		List<AdminPaymentHistoryDTO> adminPaymentHistory = service.selectPaymentList();

		/* request에 조회한 내용들을 key, value 형식으로 담아서 forward 방식으로 해당 페이지로 이동시킴 */
		String path = "/WEB-INF/views/admin/adminPayment.jsp";
		request.setAttribute("adminPaymentHistory", adminPaymentHistory);
		request.getRequestDispatcher(path).forward(request, response);
		
	}

}
