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
		
		/*UTF-8로 인코딩 하는 코드*/
		request.setCharacterEncoding("UTF-8");		
		
		/*클라이언트에서 필요한 productNo 정보를 가져온다.*/
		int productNo = Integer.parseInt(request.getParameter("productNo"));		
		
		/*DTO 생성*/
		ProductListDTO productListDTO = new ProductListDTO();
		/*DTO에 prductNo를  담는다.*/
		productListDTO.setProductNo(productNo);	
		/*ProductModifyService에 productDelete(productNo)메소드를 만든다.*/
		int result = new ProductModifyService().productDelete(productNo);
		
		/*빈 문자열 선언, 성공과 실패시 주소로 간다.*/
		String path ="";
		
		/*성공 실패 여부 
		 * result가 성공일 경우 /let/admin/product/list 주소로 간다.*/
		if(result > 0) {
			path = "/WEB-INF/views/admin/adminSuccess.jsp";
			request.setAttribute("successCode", "productListDelete");
		}
		response.sendRedirect("/let/admin/product/list");
	}

}
