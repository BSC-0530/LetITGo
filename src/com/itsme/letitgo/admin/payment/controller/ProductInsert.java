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
		/*WEB-INF/views/admin/adminProductInsert.jsp 여기로 forwarding 해준다.*/
		request.getRequestDispatcher(path).forward(request, response);
	}

	
	
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		/*UTF-8로 인코딩 한다.*/
		request.setCharacterEncoding("UTF-8");			
		
		/*클라이언트에서 필요한  정보를 가져온다.*/
		String productName = request.getParameter("productName");
		int productPrice = Integer.parseInt(request.getParameter("productPrice"));
		String productKinds = request.getParameter("productKinds");
		String productStatus = request.getParameter("productStatus");
		Integer productReadingTicket = Integer.parseInt(request.getParameter("productReadingTicket"));
		String productExposureTime = request.getParameter("productExposureTime");
		
		
		/*productListDTO에 setter를 가져온다.*/
		ProductListDTO productListDTO = new ProductListDTO();
		productListDTO.setProductName(productName);
		productListDTO.setProductPrice(productPrice);
		productListDTO.setProductReadingTicket(productReadingTicket);
		productListDTO.setProductKinds(productKinds);
		productListDTO.setProductStatus(productStatus);
		productListDTO.setProductExposureTime(productExposureTime);
		
		
		/*주소 담기위해 변수 선언*/
		String path = ""; 
		
		/*view에서 담은 값들을 service로 가기위해 담는다.*/
		int result = new ProductInsertService().productInsert(productListDTO);
		
		/*성공시 /let/admin/product/list 주소로 간다.*/
		if(result > 0) {

			response.sendRedirect("/let/admin/product/list");
		}
		
	}

}
