package com.itsme.letitgo.company.info.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.itsme.letitgo.admin.info.model.service.RequestService;
import com.itsme.letitgo.company.info.model.dto.FileUploadDTO;

@WebServlet("/company/image/change")
public class CompanyImageChange extends HttpServlet {
       

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int memNo = Integer.parseInt(request.getParameter("no"));
		
		 FileUploadDTO logoImage = new RequestService().selectLogoFile(memNo);
		 FileUploadDTO representativeImage = new RequestService().selectRepresentFile(memNo);
		 FileUploadDTO businessRegistration = new RequestService().selectBusinessFile(memNo);
		 
		 String file1 =logoImage.getFilePath();
		 String logoFile = file1.substring(20);
		 
		 String file2 =representativeImage.getFilePath();
		 String repreFile = file2.substring(20);
		 
		 String file3 =businessRegistration.getFilePath();
		 String businFile = file3.substring(20);
		 
		 request.setAttribute("memNo", memNo);
		 request.setAttribute("logoFile", logoFile);
		 request.setAttribute("repreFile", repreFile);
		 request.setAttribute("businFile", businFile);
		 String path = "";
		 path = "/WEB-INF/views/member/company/changeImagePage.jsp";
		 request.getRequestDispatcher(path).forward(request, response);
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
	}

}
