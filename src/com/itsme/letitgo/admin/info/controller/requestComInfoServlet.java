package com.itsme.letitgo.admin.info.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import com.itsme.letitgo.admin.info.model.dto.CoMemberAppHistoryDTO;
import com.itsme.letitgo.admin.info.model.service.RequestService;
import com.itsme.letitgo.company.info.model.dto.CompanyAddInfoDTO;
import com.itsme.letitgo.company.info.model.dto.FileUploadDTO;
import com.itsme.letitgo.company.info.model.service.CompanyInfoService;

@WebServlet("/admin/request/comInfo")
public class requestComInfoServlet extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		RequestService service = new RequestService();
		
		List<CompanyAddInfoDTO> orgin = service.selectedOrgin();
		for(CompanyAddInfoDTO ads :  orgin) {
			System.out.println("왜안뜨냐" + ads);
		}
		//리스트조회화면
		List<CoMemberAppHistoryDTO> reqlist = service.selectedlist();
		for(CoMemberAppHistoryDTO ads :  reqlist) {
			System.out.println(ads);
		}
		
//		
		
		String path="";
		
		response.setCharacterEncoding("UTF-8");
		request.setCharacterEncoding("UTF-8");
//		response.setContentType("text/html; charset=UTF-8");
		
		request.setAttribute("orgin", orgin);
		request.setAttribute("reqlist", reqlist);
		path="/WEB-INF/views/admin/adminRequestComInfo.jsp";
		request.getRequestDispatcher(path).forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
	}

}
