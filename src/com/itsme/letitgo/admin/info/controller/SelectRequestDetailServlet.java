package com.itsme.letitgo.admin.info.controller;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.itsme.letitgo.admin.info.model.dto.CompanyJoinDTO;
import com.itsme.letitgo.admin.info.model.dto.InsertRequestDTO;
import com.itsme.letitgo.admin.info.model.service.CompanyDetailService;
import com.itsme.letitgo.admin.info.model.service.RequestService;
import com.itsme.letitgo.company.regist.model.dto.CoMemberDTO;
import com.itsme.letitgo.company.regist.model.service.CoMemberService;

@WebServlet("/info/detail")
public class SelectRequestDetailServlet extends HttpServlet {

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");
		
		String memberId = request.getParameter("userId");
		String email = request.getParameter("email");
		String intro = request.getParameter("intre");
		String coNo = request.getParameter("coNo");
		String comName = request.getParameter("comName");
		String ceoName = request.getParameter("ceoName");
		String coAddress = request.getParameter("coAddress");
		String comPhone = request.getParameter("comPhone");
		String fax = request.getParameter("pax");
		String sectors = request.getParameter("sectors");
		String status = request.getParameter("status");
		String website = request.getParameter("website");
		
		CompanyJoinDTO companyJoinDTO = new CompanyJoinDTO();
		
		companyJoinDTO.setId(memberId);
		companyJoinDTO.setEmail(email);
		companyJoinDTO.setIntro(intro);
		companyJoinDTO.setCoNo(coNo);
		companyJoinDTO.setComName(comName);
		companyJoinDTO.setCeoName(ceoName);
		companyJoinDTO.setAddress(coAddress);
		companyJoinDTO.setFax(fax);
		companyJoinDTO.setSectors(sectors);
		companyJoinDTO.setStatus(status);
		companyJoinDTO.setWebsite(website);
		
		Map<String, Object> result = new CompanyDetailService().detailInfo(companyJoinDTO);
		
		System.out.println(result);
		
		
		String path="/WEB-INF/views/admin/adminJoinDetail.jsp";
		request.getRequestDispatcher(path).forward(request, response);
		
	}
}

