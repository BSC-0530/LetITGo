package com.itsme.letitgo.admin.info.controller;

import java.io.IOException;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.itsme.letitgo.admin.info.model.dto.CompanyJoinDTO;
import com.itsme.letitgo.admin.info.model.service.CompanyDetailService;


@WebServlet("/info/detail")
public class AdminCoJoinDetailServlet extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
//		int coReqNo = Integer.parseInt(request.getParameter("coReqNo"));
//		
//		request.setAttribute("coReqNo", coReqNo);
//		
//		String path="/WEB-INF/views/admin/adminJoinDetail.jsp";
//		
//		request.getRequestDispatcher(path).forward(request, response);
//		
//		System.out.println(coReqNo);
		
		request.setCharacterEncoding("UTF-8");
		
		int coReqNo = Integer.parseInt(request.getParameter("coReqNo"));			//view에 있는 값을  서블릿에 담는다
//		int memNo = Integer.parseInt(request.getParameter("memNo"));
		String id = request.getParameter("id");
		String email = request.getParameter("email");
		String intro = request.getParameter("intro");
		String coNo = request.getParameter("coNo");
		String comName = request.getParameter("comName");
		String ceoName = request.getParameter("ceoName");
		String coAddress = request.getParameter("coAddress");
		String comPhone = request.getParameter("comPhone");
		String fax = request.getParameter("pax");
		String sectors = request.getParameter("sectors");
		String status = request.getParameter("status");
		String website = request.getParameter("website");							//여기까지 
		//view 값을 담아준다
		
		
//		CompanyJoinDTO companyJoinDTO = new CompanyJoinDTO();
//		companyJoinDTO.setCoReqNo(coReqNo);
////		companyJoinDTO.setMemNo(memNo);
//		companyJoinDTO.setId(memberId);
//		companyJoinDTO.setEmail(email);
//		companyJoinDTO.setIntro(intro);
//		companyJoinDTO.setCoNo(coNo);
//		companyJoinDTO.setComName(comName);
//		companyJoinDTO.setCeoName(ceoName);
//		companyJoinDTO.setAddress(coAddress);
//		companyJoinDTO.setPhone(comPhone);
//		companyJoinDTO.setFax(fax);
//		companyJoinDTO.setSectors(sectors);
//		companyJoinDTO.setStatus(status);
//		companyJoinDTO.setWebsite(website);
		//DTO 값을 담는다.
		
		
		
		CompanyDetailService companyDetailService = new CompanyDetailService();
		
		CompanyJoinDTO result = companyDetailService.joinDetail(coReqNo);
		result.setCoReqNo(coReqNo);
		result.setId(id);
		result.setEmail(email);
		result.setIntro(intro);
		result.setCoNo(coNo);
		result.setComName(comName);
		result.setCeoName(ceoName);
		result.setAddress(coAddress);
		result.setPhone(comPhone);
		result.setFax(fax);
		result.setSectors(sectors);
		result.setStatus(status);
		result.setWebsite(website);
		
		String path = "";
		
		request.setAttribute("coReqNo", coReqNo);
		
		 if(result != null) {
			path ="/WEB-INF/views/admin/adminJoinDetail.jsp";
			request.getRequestDispatcher(path).forward(request, response);
			
		 }
		
	}


	
//	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//	
//		request.setCharacterEncoding("UTF-8");
//		
//		int coReqNo = Integer.parseInt(request.getParameter("coReqNo"));			//view에 있는 값을  서블릿에 담는다
//		int memNo = Integer.parseInt(request.getParameter("memNo"));
//		String memberId = request.getParameter("userId");
//		String email = request.getParameter("email");
//		String intro = request.getParameter("intro");
//		String coNo = request.getParameter("coNo");
//		String comName = request.getParameter("comName");
//		String ceoName = request.getParameter("ceoName");
//		String coAddress = request.getParameter("coAddress");
//		String comPhone = request.getParameter("comPhone");
//		String fax = request.getParameter("pax");
//		String sectors = request.getParameter("sectors");
//		String status = request.getParameter("status");
//		String website = request.getParameter("website");							//여기까지 
//		//view 값을 담아준다
//		
//		
//		CompanyJoinDTO companyJoinDTO = new CompanyJoinDTO();
//		companyJoinDTO.setCoReqNo(coReqNo);
//		companyJoinDTO.setMemNo(memNo);
//		companyJoinDTO.setId(memberId);
//		companyJoinDTO.setEmail(email);
//		companyJoinDTO.setIntro(intro);
//		companyJoinDTO.setCoNo(coNo);
//		companyJoinDTO.setComName(comName);
//		companyJoinDTO.setCeoName(ceoName);
//		companyJoinDTO.setAddress(coAddress);
//		companyJoinDTO.setPhone(comPhone);
//		companyJoinDTO.setFax(fax);
//		companyJoinDTO.setSectors(sectors);
//		companyJoinDTO.setStatus(status);
//		companyJoinDTO.setWebsite(website);
//		//DTO 값을 담는다.
//		
//		
//		System.out.println(companyJoinDTO);
//		
//		CompanyDetailService companyDetailService = new CompanyDetailService();
//		//map으로 DTO를 담아간다
//		Map<String, Object> result = companyDetailService.joinDetail(companyJoinDTO);
//		
//		
//		
//		String path = "";
//		
//		 if((int) result.get("result") > 0) {
//			path ="/WEB-INF/views/admin/adminJoinDetail.jsp";
//			request.getRequestDispatcher(path).forward(request, response);
//		 }
//		
//		 	response.sendRedirect("/let/info/requestList");
//		
//	}

}
