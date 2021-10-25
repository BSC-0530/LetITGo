package com.itsme.letitgo.company.payment.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.itsme.letitgo.company.payment.model.dto.ProductDTO;
import com.itsme.letitgo.company.payment.model.service.SelectProductListService;

/* home -> 결제페이지 */
@WebServlet("/productList/select")
public class SelectProductListServlet extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		SelectProductListService selectProductListService = new SelectProductListService();
		
		/* 상품목록 조회 */
		List<ProductDTO> productList = selectProductListService.SelectProductList();

		String path = "/WEB-INF/views/payment/paymentList.jsp";
		
		/* request에 조회한 내용들을 key, value 형식으로 담아서 forward 방식으로 해당 페이지로 이동시킴 */
		request.setAttribute("productList", productList);
		request.getRequestDispatcher(path).forward(request, response);
		
	}

}
