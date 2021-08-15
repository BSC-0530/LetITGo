package com.itsme.letitgo.company.info.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.itsme.letitgo.company.info.model.dto.CompanyAddInfoDTO;
import com.itsme.letitgo.company.info.model.service.CompanyInfoService;

@WebServlet("/companyTestServlet")
public class selectCompanyInfoServlet extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		
		
		CompanyAddInfoDTO comDTO = new CompanyInfoService().selectedInfoCompany();
		
		
//		request.setAttribute("intro", intro);
//		request.setAttribute("coNo", coNo);
//		request.setAttribute("address", address);
//		request.setAttribute("coName", coName);
//		request.setAttribute("ceoName", ceoName);
//		request.setAttribute("secTors", secTors);
//		request.setAttribute("coStatus", coStatus);
//		request.setAttribute("site", site);
		
		System.out.println("ASKDJAKSDAJSDH" + comDTO);
		
		request.setAttribute("comDTO", comDTO);
		String path="/WEB-INF/views/member/company/companyMyPage.jsp";
		request.getRequestDispatcher(path).forward(request, response);
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		
	}

}
