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

/* home -> 결제페이지 -> 열람권상품 결제*/
@WebServlet("/payments/reading/complete")
public class PayReadingRightComplete extends HttpServlet {

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String productName = request.getParameter("productName");
		
		PayCompleteService service = new PayCompleteService();
		
		/* 상품이름으로 상품정보 가져오기 */
		ProductDTO product = service.SelectProduct(productName);
		
		/* 세션에서 값 꺼내오기 */
		HttpSession session = request.getSession();
        MemberLoginDTO dto = (MemberLoginDTO) session.getAttribute("loginMember");
        int memNo = dto.getMemNo();

        /* 결제상품이름과 회원번호 담기 */
        Map<String, Object> map = new HashMap<>();
        map.put("product", product);
        map.put("memNo", memNo);
		
        /* 열람권 결제내역 추가*/
        int paymentHistoryResult = service.insertPaymentReadingRightHistory(map);  
        
        /* 열람권  회원보유상품 추가 */
        int holdingProductResult = service.insertHoldingReadingRightProduct(map);
 
	}

}
