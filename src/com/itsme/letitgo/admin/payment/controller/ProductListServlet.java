package com.itsme.letitgo.admin.payment.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.itsme.letitgo.admin.payment.model.dto.ProductListDTO;
import com.itsme.letitgo.admin.payment.model.service.ProductListService;


@WebServlet("/admin/product/list")
public class ProductListServlet extends HttpServlet {


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		ProductListService productService = new ProductListService();
		//서비스 생성
		List<ProductListDTO> productList = productService.productList();
		//리스트 생성
		String path = "";	//path 변수 선언
		if(productList != null) {
			path ="/WEB-INF/views/admin/adminProductList.jsp";
			request.setAttribute("productList", productList);
		// product라는 name 속성 값을 value로 지정한다.
		
		}
		request.getRequestDispatcher(path).forward(request, response);
	}

}
