package com.itsme.letitgo.admin.payment.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.itsme.letitgo.admin.payment.model.dto.ProductListDTO;
import com.itsme.letitgo.admin.payment.model.service.ProductInsertService;


@WebServlet("/admin/product/insert")
public class ProductInsert extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String path ="/WEB-INF/views/admin/adminProductInsert.jsp";
		request.getRequestDispatcher(path).forward(request, response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");			//UTF-8 로 인코딩
		
		String productName = request.getParameter("productName");
		int productPrice = Integer.parseInt(request.getParameter("productPrice"));
		String productKinds = request.getParameter("productKinds");
		String productStatus = request.getParameter("productStatus");
		//view에 있는 text, nubmer name을 담는다
		
		
		ProductListDTO productListDTO = new ProductListDTO();
		productListDTO.setProductName(productName);
		productListDTO.setProductPrice(productPrice);
		productListDTO.setProductKinds(productKinds);
		productListDTO.setProductStatus(productStatus);
		//view에서 담은 값들을 service로 가기위해 담는다.
		
		String path = ""; //주소 담기위해 변수 선언
		
		int result = new ProductInsertService().productInsert(productListDTO);
		
		if(result > 0) {
			path = "/WEB-INF/views/admin/adminProductList.jsp";
			request.getRequestDispatcher(path).forward(request, response);
		}
		
	}

}
