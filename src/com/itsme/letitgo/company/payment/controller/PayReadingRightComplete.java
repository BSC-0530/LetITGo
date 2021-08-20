package com.itsme.letitgo.company.payment.controller;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.itsme.letitgo.company.payment.model.dto.ProductDTO;
import com.itsme.letitgo.company.payment.model.service.PayCompleteService;
import com.itsme.letitgo.login.model.dto.MemberLoginDTO;

@WebServlet("/payments/reading/complete")
public class PayReadingRightComplete extends HttpServlet {

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String productName = request.getParameter("productName");
		
		PayCompleteService service = new PayCompleteService();
		
		ProductDTO product = service.SelectProduct(productName);
		
		HttpSession session = request.getSession();
        MemberLoginDTO dto = (MemberLoginDTO) session.getAttribute("loginMember");
        int memNo = dto.getMemNo();

        Map<String, Object> map = new HashMap<>();
        map.put("product", product);
        map.put("memNo", memNo);
		
        int paymentHistoryResult = service.insertPaymentReadingRightHistory(map);     
        int holdingProductResult = service.insertHoldingReadingRightProduct(map);
        
		System.out.println("paymentHistoryResult : " + paymentHistoryResult);
		System.out.println("holdingProductResult : " + holdingProductResult);
		
		
	}

}
