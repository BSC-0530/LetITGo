package com.itsme.letitgo.company.payment.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.itsme.letitgo.company.payment.model.dto.RefundHistoryDTO;
import com.itsme.letitgo.company.payment.model.service.RefundHistoryService;


@WebServlet("/company/refundHistory/select")
public class SelectRefundHistoryServlet extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		RefundHistoryService refundHistoryService = new RefundHistoryService();
		
		List<RefundHistoryDTO> refundHistoryList = refundHistoryService.SelectRefundHistoryList();
		
		for(RefundHistoryDTO rd : refundHistoryList) {
			System.out.println(rd);
		}
		
		String path = "/WEB-INF/views/payment/refundHistory.jsp";

		request.setAttribute("refundHistoryList", refundHistoryList);
		
		request.getRequestDispatcher(path).forward(request, response);
		
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		int refundNo = Integer.parseInt(request.getParameter("refundNo"));
		
		System.out.println(refundNo);
		
	}
}
