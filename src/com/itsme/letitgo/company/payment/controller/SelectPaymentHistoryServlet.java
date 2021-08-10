package com.itsme.letitgo.company.payment.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.itsme.letitgo.company.payment.model.dto.PaymentHistoryDTO;
import com.itsme.letitgo.company.payment.model.service.SelectPaymentHistoryService;


@WebServlet("/company/paymentHistory/select")
public class SelectPaymentHistoryServlet extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		SelectPaymentHistoryService selectPaymentHistoryService = new SelectPaymentHistoryService();
		
		List<PaymentHistoryDTO> paymentHistoryList = selectPaymentHistoryService.SelectPaymentHistory();		
		
		int resumeBrowsingNume = selectPaymentHistoryService.SelectResumeBrowsingNum();
		
		
		
		for(PaymentHistoryDTO paymentHistory : paymentHistoryList) {
			System.out.println(paymentHistory);
		}
		System.out.println(resumeBrowsingNume);
		
		String path = "/WEB-INF/views/payment/paymentHistory.jsp";
		
		request.setAttribute("paymentHistoryList", paymentHistoryList);
		request.getRequestDispatcher(path).forward(request, response);
	}


}
