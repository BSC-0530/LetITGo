package com.itsme.letitgo.company.info.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.itsme.letitgo.company.info.model.dto.CompanyTestDTO;
import com.itsme.letitgo.company.info.model.service.CompanyInfoService;

@WebServlet("/companyTestServlet")
public class companyTestServlet extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String path="/WEB-INF/views/member/company/companyMyPage.jsp";
		
		
		List<CompanyTestDTO> comDTO = new CompanyInfoService().selectedInfoCompany();
		
		System.out.println(comDTO);
		
		request.getRequestDispatcher(path).forward(request, response);
		
	}

}
