package com.itsme.letitgo.company.info.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.itsme.letitgo.company.info.model.dto.CompanyAddInfoDTO;

@WebServlet("/company/info/change/servlet")
public class CompanyInfoChangeServlet extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");
//		
		
		CompanyAddInfoDTO comDTO = new CompanyAddInfoDTO();
		int coMemNo = Integer.parseInt(request.getParameter("coMemNo"));
		String coNo = request.getParameter("coNo");
		String webSite = request.getParameter("webSite");
		String coComName = request.getParameter("coComName");
		String coCeoName = request.getParameter("coCeoName");
		String secTors = request.getParameter("secTors");
		String coStatus = request.getParameter("coStatus");
		String address = request.getParameter("address");
		String intro = request.getParameter("intro");
		String coPhone = request.getParameter("coPhone");
		String coPax = request.getParameter("coPax");
		
		comDTO.setCoMemNo(coMemNo);
		comDTO.setCoNo(coNo);
		comDTO.setCoComName(coComName);
		comDTO.setWebSite(webSite);
		comDTO.setCoCeoName(coCeoName);
		comDTO.setCoSectors(secTors);
		comDTO.setCoStatus(coStatus);
		comDTO.setCoAddress(address);
		comDTO.setCoIntro(intro);
		comDTO.setCoPhone(coPhone);
		comDTO.setCoPax(coPax);
		
		
		String path="";
		path="/WEB-INF/views/member/company/companyInfoChangePage.jsp";
		request.setAttribute("comDTO", comDTO);
		request.getRequestDispatcher(path).forward(request, response);
	}

}