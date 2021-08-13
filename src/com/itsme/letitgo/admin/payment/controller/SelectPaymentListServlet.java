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


@WebServlet("/admin/payment/select")
public class SelectPaymentListServlet extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		SelectPaymentListService service = new SelectPaymentListService();
		
		List<AdminPaymentHistoryDTO> adminPaymentHistory = service.selectPaymentList();
		
		for(AdminPaymentHistoryDTO aph : adminPaymentHistory) {
			System.out.println(aph);
		}
	
		String path = "/WEB-INF/views/admin/adminPayment.jsp";
		request.setAttribute("adminPaymentHistory", adminPaymentHistory);
		request.getRequestDispatcher(path).forward(request, response);
		
	}

}
