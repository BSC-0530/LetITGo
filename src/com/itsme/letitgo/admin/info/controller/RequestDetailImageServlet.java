package com.itsme.letitgo.admin.info.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.itsme.letitgo.admin.info.model.dto.CoMemberAppHistoryDTO;
import com.itsme.letitgo.admin.info.model.service.RequestService;
import com.itsme.letitgo.company.info.model.dto.FileUploadDTO;

/**
 * Servlet implementation class RequestDetailImageServlet
 */
@WebServlet("/request/detailImage/servlet")
public class RequestDetailImageServlet extends HttpServlet {
       

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int memNo = Integer.parseInt(request.getParameter("memNo"));
		int reqNo = Integer.parseInt(request.getParameter("reqNo"));
		
		 FileUploadDTO logoImage = new RequestService().selectLogoFile(memNo);
		 FileUploadDTO representativeImage = new RequestService().selectRepresentFile(memNo);
		 FileUploadDTO businessRegistration = new RequestService().selectBusinessFile(memNo);
		 
		 
		 //경로만 떼오기
		 String file1 =logoImage.getFilePath();
		 String logoFile = file1.substring(20);
		 
		 String file2 =representativeImage.getFilePath();
		 String repreFile = file2.substring(20);
		 
		 String file3 =businessRegistration.getFilePath();
		 String businFile = file3.substring(20);
		 
		 request.setAttribute("logoFile", logoFile);
		 request.setAttribute("repreFile", repreFile);
		 request.setAttribute("businFile", businFile);
		 
		 CoMemberAppHistoryDTO resLogoImage = new RequestService().reqSelectLogoFile(reqNo);
		 CoMemberAppHistoryDTO resRepresentativeImage = new RequestService().reqSelectRepresentFile(reqNo);
		 CoMemberAppHistoryDTO resBusinessRegistration = new RequestService().reqSelectRepresentFile(reqNo);
		 
		 
		
		 
		 if(resLogoImage != null) {
		 String logoName =  resLogoImage.getMemFileName();
		 String logoNameOrign =  resLogoImage.getMemFileOrignalName();
		 String reqFile1 =resLogoImage.getMemFilePath();
		 String reqLogoFile = reqFile1.substring(20);
		 request.setAttribute("reqLogoFile", reqLogoFile);
		 request.setAttribute("logoName", logoName);
		 request.setAttribute("logoNameOrign", logoNameOrign);
		 
		 }
		 
		 if(resRepresentativeImage != null) {
		 String repreName = resRepresentativeImage.getMemFileName();
		 String repreNameOrgin = resRepresentativeImage.getMemFileOrignalName();
		 String reqFile2 =resRepresentativeImage.getMemFilePath();
		 String reqRepreFile = reqFile2.substring(20);
		 request.setAttribute("reqRepreFile", reqRepreFile);
		 request.setAttribute("repreName", repreName);
		 request.setAttribute("repreNameOrgin", repreNameOrgin);
		 
		 }
		 
		 if(resBusinessRegistration != null) {
		 String businName = resBusinessRegistration.getMemFileName();
		 String businNameOrgin = resBusinessRegistration.getMemFileOrignalName();
		 String reqFile3 =resBusinessRegistration.getMemFilePath();
		 String reqBusinFile = reqFile3.substring(20);
		 request.setAttribute("reqBusinFile", reqBusinFile);
		 request.setAttribute("businNameOrgin", businNameOrgin);
		 request.setAttribute("businName", businName);
		 
		 }
		 
		 request.setAttribute("memNo", memNo);
		 String path="/WEB-INF/views/admin/adminImageRequest.jsp";
		 request.getRequestDispatcher(path).forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int memNo = Integer.parseInt(request.getParameter("memNo"));
		
		
		if(request.getParameter("reqLogoFile") != null) {
			String logoName = request.getParameter("repreFileName");
			String logoOrignName = request.getParameter("logoNameOrign");
			String path1 = request.getParameter("reqLogoFile");
			
			FileUploadDTO file = new FileUploadDTO();
			
			file.setFilePath(path1);
			file.setMemFileName(logoName);
			file.setMemFileOriginalName(logoOrignName);
			file.setMemNo(memNo);
			System.out.println("file확인@@@@@@@@@@@@" + file);
			
			int resultLogo = new RequestService().updateLogoFile(file);
		}
		if(request.getParameter("reqRepreFile") != null) {
			FileUploadDTO file = new FileUploadDTO();
			String path2 = request.getParameter("reqRepreFile");
			file.setFilePath(path2);
			file.setMemNo(memNo);
			int resultRepre = new RequestService().updateRepreFile(file);
		}
		if(request.getParameter("reqBusinFile") != null) {
			FileUploadDTO file = new FileUploadDTO();
			String path3 = request.getParameter("reqBusinFile");
			file.setFilePath(path3);
			file.setMemNo(memNo);
			int resultBusin = new RequestService().updateBusinFile(file);
		}
		
		
		String path="";
		path="/WEB-INF/views/admin/adminRequestComInfo.jsp";
		response.sendRedirect("/let/admin/request/comInfo");
		
	}

}
