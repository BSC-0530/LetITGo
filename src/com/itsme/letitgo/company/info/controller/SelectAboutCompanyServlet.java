package com.itsme.letitgo.company.info.controller;

import java.io.IOException;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.itsme.letitgo.company.info.model.dto.CompanyAddInfoDTO;
import com.itsme.letitgo.company.info.model.service.CompanyInfoService;


@WebServlet("/aboutCompany/select")
public class SelectAboutCompanyServlet extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int coMemNo = Integer.parseInt(request.getParameter("coMemNo"));
		
		CompanyAddInfoDTO dto = new CompanyAddInfoDTO();
		dto.setCoMemNo(coMemNo);
		
		CompanyInfoService service = new CompanyInfoService();
		CompanyAddInfoDTO coAddInfoAndJobPosting = service.selectCoInfoAndJp(dto);
		
		/* 조회를 통해 받환받은 기업의 정보와 기업이 진행중인 공고 리스트를  jsp로 전달 */
		request.setAttribute("companyAddInfo", coAddInfoAndJobPosting);
		request.setAttribute("myJobPosting", coAddInfoAndJobPosting.getCoMyJobPostingList());
	
		String path = "/WEB-INF/views/common/aboutCompany/aboutCompany.jsp";
		
		request.getRequestDispatcher(path).forward(request, response);
		
	}

}
