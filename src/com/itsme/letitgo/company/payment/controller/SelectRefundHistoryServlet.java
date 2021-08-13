package com.itsme.letitgo.company.payment.controller;

import java.io.IOException;
import java.io.PrintWriter;
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
		
		List<RefundHistoryDTO> refundHistoryList = refundHistoryService.selectRefundHistoryList();
		
		for(RefundHistoryDTO rh : refundHistoryList) {
			System.out.println(rh);
		}
		
		String path = "/WEB-INF/views/payment/refundHistory.jsp";

		request.setAttribute("refundHistoryList", refundHistoryList);
		
		request.getRequestDispatcher(path).forward(request, response);
		
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		int payChangeNo = Integer.parseInt(request.getParameter("refundNo"));
		
		RefundHistoryService refundHistoryService = new RefundHistoryService();
		
		int result = refundHistoryService.updateRefundRequest(payChangeNo);
		
		int result2 = refundHistoryService.updateRefundRequest2(payChangeNo);
				
		System.out.println(result);
		
		StringBuilder redirectText = new StringBuilder();
		
		if(result > 0 && result2 > 0) {
			redirectText.append("<script>alert('환불요청이 정상적으로 취소되었습니다.'); location.href='../../company/refundHistory/select';</script>");
		} else {
			redirectText.append("<script>alert('환불요청취소가 실패하였습니다.'); location.href='../../company/refundHistory/select';</script>");
		}
		 								
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();
		
		out.print(redirectText.toString());
		out.flush();
		out.close();
	}
}
