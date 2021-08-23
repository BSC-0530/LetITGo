package com.itsme.letitgo.company.info.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.itsme.letitgo.company.info.model.dto.CompanyInfoDTO;

@WebServlet("/coMemInfo/change/servlet")
public class CoMemInfoChangeServlet extends HttpServlet {
       

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		request.setCharacterEncoding("UTF-8");
		String coMemId = request.getParameter("coMemId");
		String email = request.getParameter("email");
		String coMemName = request.getParameter("coMemName");
		String coMemPhone = request.getParameter("coMemPhone");
		String logoFile = request.getParameter("logoFile");
		String repreFile = request.getParameter("repreFile");
		String businFile = request.getParameter("businFile");
		
		
		CompanyInfoDTO coMemDTO = new CompanyInfoDTO();
		coMemDTO.setMemId(coMemId);
		coMemDTO.setMemEmail(email);
		coMemDTO.setMemName(coMemName);
		coMemDTO.setMemPhone(coMemPhone);
		
		System.out.println(email);
		System.out.println(coMemName);
		System.out.println(coMemPhone);
		
		
		String path="";
		request.setAttribute("logoFile", logoFile);
		request.setAttribute("repreFile", repreFile);
		request.setAttribute("businFile", businFile);
		request.setAttribute("coMemDTO", coMemDTO);
		path="/WEB-INF/views/member/company/companyMemInfoChange.jsp";
		request.getRequestDispatcher(path).forward(request, response);
		
		
	}

}
