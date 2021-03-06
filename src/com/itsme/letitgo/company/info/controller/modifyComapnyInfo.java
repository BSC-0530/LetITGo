package com.itsme.letitgo.company.info.controller;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

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
import com.itsme.letitgo.company.info.model.dto.CompanyAddInfoDTO;
import com.itsme.letitgo.company.info.model.dto.FileUploadDTO;
import com.itsme.letitgo.company.info.model.service.CompanyInfoService;
import com.itsme.letitgo.company.regist.model.service.CoMemberService;
import com.itsme.letitgo.login.model.dto.MemberLoginDTO;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;


@WebServlet("/company/modify/info")
public class modifyComapnyInfo extends HttpServlet {
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
		
		String path = "/WEB-INF/views/member/company/companyMyPageBody.jsp";
		request.getRequestDispatcher(path).forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.setCharacterEncoding("UTF-8");
		
		
		if(ServletFileUpload.isMultipartContent(request)) {
			
			MultipartRequest mr = new MultipartRequest(request, rootLocation, maxFileSize, encodingType, new DefaultFileRenamePolicy());
			
			String coNo = mr.getParameter("requestcoNo"); System.out.println("?????????????????? ??????????????????????????? " + coNo);
			String comName = mr.getParameter("requestComName");
			String ceoName = mr.getParameter("requestcoCeoName");
			String coSectors = mr.getParameter("requestcoSectors");
			String coStatus = mr.getParameter("requestcoStatus");
			String coAddress =mr.getParameter("requestcoAddress") + "$" + mr.getParameter("detailAddress") + "$" + mr.getParameter("zipCode");
			String webStie = mr.getParameter("requestWebSite");
			String contents = mr.getParameter("requestcoIntro");
			String coPhone = mr.getParameter("coPhone");
			String coPax = mr.getParameter("coPax");
			
			//?????? ????????? ????????????  ??????
			
			
			
			//?????? ????????? ??????, ???????????????, ?????????????????? ????????????
			String coLogo = mr.getFilesystemName("coLogo");
			String coLogoOrginal = mr.getOriginalFileName("coLogo");
			String coLogoFullPath = rootLocation + "/" + coLogo;
					
			String coRepresentativImage = mr.getFilesystemName("coRepresentativImage");
			String coRepresentativImageOrginal = mr.getOriginalFileName("coRepresentativImage");
			String coRepresentativImageFullPath = rootLocation + "/" + coRepresentativImage;
			
			String businessRegistration = mr.getFilesystemName("businessRegistration");
			String businessRegistrationOrginal = mr.getOriginalFileName("businessRegistration");
			String businessRegistrationFullPath = rootLocation + "/" + businessRegistration;
			
			//????????? ???????????? ?????? ??????
			HttpSession session = request.getSession();
			MemberLoginDTO comDTO = (MemberLoginDTO) session.getAttribute("loginMember");
			System.out.println("??????" + comDTO.getMemNo());
			int memNo = comDTO.getMemNo();
			
			
			RequestService service = new RequestService();
			CoMemberAppHistoryDTO comAd = new CoMemberAppHistoryDTO();
//			CoMemberAppHistoryDTO logoFile = new CoMemberAppHistoryDTO();
//			CoMemberAppHistoryDTO representativImage = new CoMemberAppHistoryDTO();
//			CoMemberAppHistoryDTO businessNO = new CoMemberAppHistoryDTO();
			//??????
//			int result2 = 0;
//			int result3 = 0;
//			int result4 = 0;
//			int resultinfo = 0;
//			int resultinfo2 = 0;
//			int resultinfo3 = 0;
			
			
			comAd.setCoMemNo(memNo);
			comAd.setCoNo(coNo);
			comAd.setCoComName(comName);
			comAd.setCoCeoName(ceoName);
			comAd.setCoSectors(coSectors);
			comAd.setCoStatus(coStatus);
			comAd.setCoAddress(coAddress);
			comAd.setWebSite(webStie);
			comAd.setCoIntro(contents);
			comAd.setCoPhone(coPhone);
			comAd.setCoPax(coPax);
			
			int result = service.updateRequestAddInfo(comAd);
//????????? ???????????? ?????????  ?????????..??????	
//			if(coLogo != null) {
//				
//				logoFile.setCoMemNo(memNo);
//				logoFile.setMemFileName(coLogo);
//				logoFile.setMemFileOrignalName(coLogoOrginal);
//				logoFile.setMemFilePath(coLogoFullPath);
//				
//				result2 = service.insertCoLogoAttachment(logoFile);
////				resultinfo = service.updateRequestAddInfo(comAd);
//			} 
//			if(coRepresentativImage != null) {
//				
//				representativImage.setCoMemNo(memNo);
//				representativImage.setMemFileName(coRepresentativImage);
//				representativImage.setMemFileOrignalName(coRepresentativImageOrginal);
//				representativImage.setMemFilePath(coRepresentativImageFullPath);
//				result3 = service.insertCoRepresentativImageAttachment(representativImage);
////				resultinfo2 = service.updateRequestAddInfo(comAd);
//			} 
//			if(businessRegistration != null) {
//				
//				businessNO.setCoMemNo(memNo);
//				businessNO.setMemFileName(businessRegistration);
//				businessNO.setMemFileOrignalName(businessRegistrationOrginal);
//				businessNO.setMemFilePath(businessRegistrationFullPath);
//				result4 = service.insertBusinessRegistrationAttachment(businessNO);
////				resultinfo3 = service.updateRequestAddInfo(comAd);
//			}
//			
			
			response.setCharacterEncoding("UTF-8");
			if(result > 0 ) {
				System.out.println("??????");
				response.sendRedirect("/let/companyTestServlet");
			}
			
		}
		
	}
}
			
			
//			request.setAttribute("comAd", comAd);
//			request.setAttribute("logoFile", logoFile);
//			request.setAttribute("representativImage", representativImage);
//			request.setAttribute("businessNO", businessNO);
//			String path="";
//			path="/WEB-INF/views/admin/adminComAddInfoRequest.jsp";
//			request.getRequestDispatcher(path).forward(request, response);
////			