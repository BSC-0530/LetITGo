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
		/*pk 값을 담아둔다.*/
		int productNo = Integer.parseInt(request.getParameter("productNo"));
		/*productNo를 등록한다.*/
		request.setAttribute("productNo", productNo);
		
		String path = "/WEB-INF/views/admin/adminProductModify.jsp";
		/*/WEB-INF/views/admin/adminProductModify.jsp 이 주소로 forwarding 한다.*/
		request.getRequestDispatcher(path).forward(request, response);
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		/*UTF-8로 인코딩한다.*/
		request.setCharacterEncoding("UTF-8");
		
		/*클라이언트에서 필요한 정보를 가져온다.*/
		int productNo = Integer.parseInt(request.getParameter("productNo"));
		String productName = request.getParameter("productName");
		int productPrice = Integer.parseInt(request.getParameter("productPrice"));
		String productKinds = request.getParameter("productKinds");
		String productStatus = request.getParameter("productStatus");
		Integer productReadingTicket = Integer.parseInt(request.getParameter("productReadingTicket"));
		String productExposureTime = request.getParameter("productExposureTime");
		
		/*DTO를 생성한다.*/
		ProductListDTO productListDTO = new ProductListDTO();
		/*setter 값에 필요한 정보를 담는다.*/
		productListDTO.setProductNo(productNo);
		productListDTO.setProductName(productName);
		productListDTO.setProductPrice(productPrice);
		productListDTO.setProductKinds(productKinds);
		productListDTO.setProductStatus(productStatus);
		productListDTO.setProductExposureTime(productExposureTime);
		productListDTO.setProductReadingTicket(productReadingTicket);
		
		String path = "";
		
		int result = new ProductModifyService().productModify(productListDTO);
		
		/*성공시 /let/admin/product/list 주소로 간다.*/
		if(result > 0){
			
			response.sendRedirect("/let/admin/product/list");
		}
	}

}
