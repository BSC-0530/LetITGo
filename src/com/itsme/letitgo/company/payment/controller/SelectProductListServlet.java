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

@WebServlet("/payment/mainPage")
public class SelectProductListServlet extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		SelectProductListService selectProductListService = new SelectProductListService();
		
		List<ProductDTO> productList = selectProductListService.SelectProductList();
		
		for(ProductDTO product : productList) {
			System.out.println(product);
		}
		
		String path = "/WEB-INF/views/payment.jsp";
		
		request.getRequestDispatcher(path).forward(request, response);
		
	}

	

}
