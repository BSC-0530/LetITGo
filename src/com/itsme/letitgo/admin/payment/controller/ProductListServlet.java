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
		/*서비스 생성*/
		ProductListService productService = new ProductListService();
		
		
		/*ProductListDTO의 리스트 생성*/
		List<ProductListDTO> productList = productService.productList();
	
		/*path 변수 선언 (주소 값을 넣기위해 생성)*/
		String path = "";	
		if(productList != null) {
			path ="/WEB-INF/views/admin/adminProductList.jsp";
			
			/* product라는 name 속성 값을 value로 지정한다.*/
			request.setAttribute("productList", productList);
		}
		
		request.getRequestDispatcher(path).forward(request, response);
	}

}
