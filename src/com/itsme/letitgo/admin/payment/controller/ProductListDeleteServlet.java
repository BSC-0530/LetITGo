package com.itsme.letitgo.admin.payment.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.itsme.letitgo.admin.payment.model.dto.ProductListDTO;
import com.itsme.letitgo.admin.payment.model.service.ProductModifyService;


@WebServlet("/productList/delete")
public class ProductListDeleteServlet extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");		//UTF-8로 인코딩
		
		int productNo = Integer.parseInt(request.getParameter("productNo"));		//int형인 no를 담아서 가져온다.
		
		ProductListDTO productListDTO = new ProductListDTO();
		productListDTO.setProductNo(productNo);	//DTO에 productNo (no)에 담는다.
		
		System.out.println(productNo);
		
		int result = new ProductModifyService().productDelete(productNo);
		
		System.out.println(result);
		
		String path =""; // 빈 문자열 선언, 성공과 실패시 주소로 간다.
		
		if(result > 0) {
			path = "/WEB-INF/views/admin/adminSuccess.jsp";
			request.setAttribute("successCode", "productListDelete");
		}
		response.sendRedirect("/let/admin/product/list");
	}

}
