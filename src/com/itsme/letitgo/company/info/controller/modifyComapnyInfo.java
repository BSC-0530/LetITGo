package com.itsme.letitgo.company.info.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.itsme.letitgo.company.info.model.dto.CompanyAddInfoDTO;


@WebServlet("/company/modify/info")
public class modifyComapnyInfo extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.setCharacterEncoding("UTF-8");
		
		String coNo = request.getParameter("requestcoNo");
		String name = request.getParameter("requestComName");
		String ceo = request.getParameter("requestcoCeoName");
		String sectors = request.getParameter("requestcoSectors");
		String status = request.getParameter("requestcoStatus");
		String address = request.getParameter("requestcoAddress");
		String website = request.getParameter("requestWebSite");
		
		CompanyAddInfoDTO coAddInfo = new CompanyAddInfoDTO();
		coAddInfo.setCoNo(coNo);
		coAddInfo.setCoCeoName(name);
		coAddInfo.setCoCeoName(ceo);
		coAddInfo.setCoSectors(sectors);
		coAddInfo.setCoStatus(status);
		coAddInfo.setCoAddress(address);
		coAddInfo.setWebSite(website);
		
		System.out.println("askjdasjkdasjdlads"+coAddInfo);
		
		
		
	}

}
