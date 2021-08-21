package com.itsme.letitgo.admin.info.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.itsme.letitgo.admin.info.model.dto.CoMemberAppHistoryDTO;
import com.itsme.letitgo.admin.info.model.service.RequestService;
import com.itsme.letitgo.company.info.model.dto.CompanyAddInfoDTO;
import com.itsme.letitgo.company.info.model.dto.FileUploadDTO;

/**
 * Servlet implementation class requestDetailComInfoServlet
 */
@WebServlet("/request/detailComInfo/servlet")
public class requestDetailComInfoServlet extends HttpServlet {
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int memNo = Integer.parseInt(request.getParameter("memNo"));
		int reqNo = Integer.parseInt(request.getParameter("reqNo"));
		System.out.println("@@" + reqNo);
		System.out.println(memNo);
		
		
		RequestService service = new RequestService();
		
		CompanyAddInfoDTO orginInfo = service.adminDetailPageOrigin(memNo);
		System.out.println("확인 : " + orginInfo);
		//원본사진 조회
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
		
		 CoMemberAppHistoryDTO reqInfo = service.adminDetailPageRequest(reqNo);
		 
		 CoMemberAppHistoryDTO reqLogo = new RequestService().reqSelectLogoFile(reqNo);
		 CoMemberAppHistoryDTO reqRepresentativeImage = new RequestService().reqSelectRepresentFile(reqNo);
		 CoMemberAppHistoryDTO reqBusinessRegistration = new RequestService().eeqSelectBusinessFile(reqNo);
		 
		 
		 if(reqLogo != null) {
		 String reqFile1 =reqLogo.getMemFilePath();
		 String reqLogoFile = reqFile1.substring(20);
		 request.setAttribute("reqLogoFile", reqLogoFile);
		 }
		 if(reqRepresentativeImage != null) {
		 String reqFile2 =reqRepresentativeImage.getMemFilePath();
		 String reqRepreFile = reqFile2.substring(20);
		 request.setAttribute("reqRepreFile", reqRepreFile);
		 }
		 if(reqBusinessRegistration != null) {
		 String reqFile3 =reqBusinessRegistration.getMemFilePath();
		 String reqBusinFile = reqFile3.substring(20);
		 request.setAttribute("reqBusinFile", reqBusinFile);
		 }
		 
		 
		 
		 System.out.println("dasdsd : " + reqInfo);
		response.setCharacterEncoding("UTF-8");
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		//요청 전 원본 페이지 정보
		request.setAttribute("logoImage", logoFile);
		request.setAttribute("representativeImage", repreFile);
		request.setAttribute("businessRegistration", businFile);
		request.setAttribute("orginInfo", orginInfo);
		
		//요청 후 정보
		request.setAttribute("reqInfo", reqInfo);
		String path="/WEB-INF/views/admin/adminRequestDetailComInfo.jsp";
		request.getRequestDispatcher(path).forward(request, response);
		
		
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//수락버튼 누르면 변경해주는거 업데이트 
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
//		response.setContentType("text/html; charset=UTF-8");
		
		int memNo = Integer.parseInt(request.getParameter("reqCoMemNo"));
		String coNo = request.getParameter("reqCoNo");
		String comName = request.getParameter("reqCoComName");
		String ceoName = request.getParameter("reqCoCeoName");
		String sectors = request.getParameter("reqSecTors");
		String coStatus = request.getParameter("reqCoStatus");
		String address = request.getParameter("reqAddress");
		String phone = request.getParameter("reqCoPhone");
		String pax = request.getParameter("reqCoPax");
		String intro = request.getParameter("reqIntro");
		String site = request.getParameter("reqWebSite");
		
//		String path1 = request.getParameter("logoFile");
//		String path2 = request.getParameter("reqRepreFile");
//		String path3 = request.getParameter("reqBusinFile");
//		로고
//		FileUploadDTO file = new FileUploadDTO();
//		file.setFilePath(path1);
//		file.setMemNo(memNo);
//		int resultLogo = new RequestService().updateLogoFile(file);
////		대표이미지
//		FileUploadDTO file2 = new FileUploadDTO();
//		file2.setFilePath(path2);
//		file.setMemNo(memNo);
//		int resultRepre = new RequestService().updateRepreFile(file2);
////		사업자등록증
//		FileUploadDTO file3 = new FileUploadDTO();
//		file3.setFilePath(path3);
//		file.setMemNo(memNo);
//		int resultBusin = new RequestService().updateBusinFile(file3);
		
		//요청번호
		int coReqNo = Integer.parseInt(request.getParameter("coReqNo"));
		System.out.println("왜수정안대니" + coReqNo);
		
		CompanyAddInfoDTO info = new CompanyAddInfoDTO();
		info.setCoMemNo(memNo);
		info.setCoNo(coNo);
		info.setCoComName(comName);
		info.setCoCeoName(ceoName);
		info.setCoSectors(sectors);
		info.setCoStatus(coStatus);
		info.setCoAddress(address);
		info.setCoPhone(phone);
		info.setCoPax(pax);
		info.setCoIntro(intro);
		info.setWebSite(site);
		System.out.println("!@#!@#!@#!@#" + info);
		
		String path="";
		
		int result = new RequestService().adminAcceptRequestInfo(info);
		int result1 = new RequestService().adminAcceptRequestInfoKinds(coReqNo); 
		if(result > 0 && result1 > 0) {
			path="/WEB-INF/views/admin/adminRequestComInfo.jsp";
			response.sendRedirect("/let/admin/request/comInfo");
			System.out.println("성공@@@@@@");
			
		}else {
			response.sendRedirect("/let/admin/request/comInfo");
			System.out.println("실패@@@@@@");
		}
		
	}

}
