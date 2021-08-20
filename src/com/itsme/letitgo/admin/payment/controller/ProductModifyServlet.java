package com.itsme.letitgo.admin.payment.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.itsme.letitgo.admin.payment.model.dto.ProductListDTO;
import com.itsme.letitgo.admin.payment.model.service.ProductModifyService;


@WebServlet("/admin/product/update")
public class ProductModifyServlet extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int productNo = Integer.parseInt(request.getParameter("productNo"));
		
		request.setAttribute("productNo", productNo);
		
		String path = "/WEB-INF/views/admin/adminProductModify.jsp";
		
		request.getRequestDispatcher(path).forward(request, response);
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");
		
		int productNo = Integer.parseInt(request.getParameter("productNo"));
		String productName = request.getParameter("productName");
		int productPrice = Integer.parseInt(request.getParameter("productPrice"));
		String productKinds = request.getParameter("productKinds");
		String productStatus = request.getParameter("productStatus");
		
		ProductListDTO productListDTO = new ProductListDTO();
		productListDTO.setProductNo(productNo);
		productListDTO.setProductName(productName);
		productListDTO.setProductPrice(productPrice);
		productListDTO.setProductKinds(productKinds);
		productListDTO.setProductStatus(productStatus);
		
		String path = "";
		
		int result = new ProductModifyService().productModify(productListDTO);
		
		if(result > 0){
			
			response.sendRedirect("/let/admin/product/list");
		}
	}

}
