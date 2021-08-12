package com.itsme.letitgo.company.payment.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.itsme.letitgo.company.payment.model.dto.RefundRequestProductDTO;
import com.itsme.letitgo.company.payment.model.service.InsertRefundRequestProductService;

@WebServlet("/refund/request/insert")
public class InsertRefundReqServlet extends HttpServlet {

	private int payNo;
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");
		
		/* 환불요청 클릭 후 결제번호 받아옴 */
		payNo = Integer.parseInt(request.getParameter("payNo"));

		InsertRefundRequestProductService product = new InsertRefundRequestProductService();
		
		/* 결제번호를 통해서 환불할 상품정보를 받아옴 */
		RefundRequestProductDTO refundRequestProduct = product.selectRefundRequestProduct(payNo);
		
		System.out.println(payNo);
		System.out.println(refundRequestProduct);
	
		String path = "/WEB-INF/views/payment/refundRequest.jsp";
		
		request.setAttribute("refundRequestProduct", refundRequestProduct);
		request.getRequestDispatcher(path).forward(request, response);
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");
		
		/* 환불사유 받아옴 */
		String payChangeReason = request.getParameter("refundMessage");		
		System.out.println(payChangeReason);
		
		InsertRefundRequestProductService insertRefundRequestMessageService = new InsertRefundRequestProductService();	
		
		/* 결제번호와 환불사유를 맵으로 묶어서 넘긴다 */
		Map<String, Object> map = new HashMap<>();
		map.put("payChangeReason", payChangeReason);
		map.put("payNo", payNo);
		
		int result = insertRefundRequestMessageService.insertRefundMessage(map);
		
		int result2 = insertRefundRequestMessageService.updatePaymentStatus(map);
		
		
		StringBuilder redirectText = new StringBuilder();
		
		if(result > 0 && result2 > 0) {
			redirectText.append("<script>alert('환불요청이 정상적으로 처리되었습니다.'); location.href='../../company/paymentHistory/select';</script>");
		} else {
			redirectText.append("<script>alert('환불요청에 실패하였습니다.'); location.href='../../company/paymentHistory/select';</script>");
		}
		 
									
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();
		
		out.print(redirectText.toString());
		out.flush();
		out.close();
		
		response.sendRedirect("/let/company/paymentHistory/select");
	}

}