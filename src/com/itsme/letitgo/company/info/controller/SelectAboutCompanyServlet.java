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
		
		// 기업 정보 dto, 채용중인 공고 정보 리스트
		Map<String, Object> coMemInfo = service.selectCoInfoAndJp(dto);
		
		// 담아온 값을 꺼내서 request영역에 담기
		
		
		String path = "/WEB-INF/views/common/aboutCompany/aboutCompany.jsp";
		
		request.getRequestDispatcher(path).forward(request, response);
		
		
	}

	

}
