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


@WebServlet("/admin/refund/select")
public class SelectRefundListServlet extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		SelectRefundListService service = new SelectRefundListService();
		
		List<AdminRefundHistoryDTO> refundHistoryList = service.selectRefundList();
		
		for(AdminRefundHistoryDTO arh : refundHistoryList) {
			System.out.println(arh);
		}
		
		String path = "/WEB-INF/views/admin/adminRefund.jsp";
		
		request.setAttribute("refundHistoryList", refundHistoryList);
		request.getRequestDispatcher(path).forward(request, response);
		
	}

}
