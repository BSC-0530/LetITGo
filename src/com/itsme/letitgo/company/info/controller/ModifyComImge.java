package com.itsme.letitgo.company.info.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.fileupload.servlet.ServletFileUpload;

import com.itsme.letitgo.admin.info.model.dto.CoMemberAppHistoryDTO;
import com.itsme.letitgo.admin.info.model.service.RequestService;
import com.itsme.letitgo.login.model.dto.MemberLoginDTO;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

@WebServlet("/modify/comImge")
public class ModifyComImge extends HttpServlet {
	
	private String rootLocation;
	private int maxFileSize;
	private String encodingType;
	
	@Override
	public void init() throws ServletException {
		
		ServletContext context = getServletContext();

		rootLocation = context.getInitParameter("upload-location");
		maxFileSize = Integer.parseInt(context.getInitParameter("max-file-size"));
		encodingType = context.getInitParameter("encoding-type");

	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
//		String path = "/WEB-INF/views/member/company/companyMyPageBody.jsp";
//		request.getRequestDispatcher(path).forward(request, response);
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.setCharacterEncoding("UTF-8");
			
		HttpSession session = request.getSession();
		
		 MemberLoginDTO comDTO1 = (MemberLoginDTO) session.getAttribute("loginMember");
		 System.out.println("번호" + comDTO1.getMemNo());
		 //로그인된 멤버 번호
		 int memNo = comDTO1.getMemNo();
		
			if(ServletFileUpload.isMultipartContent(request)) {
			
			MultipartRequest mr = new MultipartRequest(request, rootLocation, maxFileSize, encodingType, new DefaultFileRenamePolicy());
			
			System.out.println("번호확인@@@@@@@@@@@@"+memNo);
			String coLogo = mr.getFilesystemName("coLogo");
			String coLogoOrginal = mr.getOriginalFileName("coLogo");
			String coLogoFullPath = rootLocation + "/" + coLogo;
			
			
			String coRepresentativImage = mr.getFilesystemName("coRepresentativImage");
			String coRepresentativImageOrginal = mr.getOriginalFileName("coRepresentativImage");
			String coRepresentativImageFullPath = rootLocation + "/" + coRepresentativImage;
			
			
			String businessRegistration = mr.getFilesystemName("businessRegistration");
			String businessRegistrationOrginal = mr.getOriginalFileName("businessRegistration");
			String businessRegistrationFullPath = rootLocation + "/" + businessRegistration;
			
			CoMemberAppHistoryDTO logoFile = new CoMemberAppHistoryDTO();
			CoMemberAppHistoryDTO representativImage = new CoMemberAppHistoryDTO();
			CoMemberAppHistoryDTO businessNO = new CoMemberAppHistoryDTO();
			RequestService service = new RequestService();
			int result1 = 0;
			int result2 = 0;
			int result3 = 0;
			
//			System.out.println(coLogoFullPath);
//			System.out.println("coRepresentativImage : " + coRepresentativImage);
//			System.out.println("coRepresentativImageOrginal : " + coRepresentativImageOrginal);
//			System.out.println("coRepresentativImageFullPath : " + coRepresentativImageFullPath);
//			System.out.println("businessRegistration : " + businessRegistration);
//			System.out.println("businessRegistrationOrginal : " + businessRegistrationOrginal);
			if(coLogo != null && coLogoOrginal != null) {
				
				logoFile.setCoMemNo(memNo);
				logoFile.setMemFileName(coLogo);
				logoFile.setMemFileOrignalName(coLogoOrginal);
				logoFile.setMemFilePath(coLogoFullPath);
				
				result1 = service.insertCoLogoAttachment(logoFile);
			} 
			if(coRepresentativImage != null && coRepresentativImageOrginal != null) {
				
				representativImage.setCoMemNo(memNo);
				representativImage.setMemFileName(coRepresentativImage);
				representativImage.setMemFileOrignalName(coRepresentativImageOrginal);
				representativImage.setMemFilePath(coRepresentativImageFullPath);
				
				result2 = service.insertCoRepresentativImageAttachment(representativImage);
			} 
			if(businessRegistration != null && businessRegistrationOrginal != null) {
				
				businessNO.setCoMemNo(memNo);
				businessNO.setMemFileName(businessRegistration);
				businessNO.setMemFileOrignalName(businessRegistrationOrginal);
				businessNO.setMemFilePath(businessRegistrationFullPath);
				
				result3 = service.insertBusinessRegistrationAttachment(businessNO);
			}
			
			response.setCharacterEncoding("UTF-8");
			
			if(result1 > 0 || result2 > 0 || result3 > 0) {
				response.setContentType("text/html; charset=utf-8");
				PrintWriter out = response.getWriter();
				out.println("<script>");
				out.println("alert('성공적으로 이미지 변경 요청을 보넀습니다.');");
				out.println("history.back();");
				out.println("</script>");
				response.sendRedirect("/let/companyTestServlet");
			}
			
		}
	}

}

	
	
	
	
	
	
	
	
	
	
	
	
	