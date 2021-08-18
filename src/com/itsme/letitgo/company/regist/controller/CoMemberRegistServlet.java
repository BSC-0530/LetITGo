package com.itsme.letitgo.company.regist.controller;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Map;
import java.util.UUID;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

import com.itsme.letitgo.company.regist.model.dto.CoAttachmentDTO;
import com.itsme.letitgo.company.regist.model.dto.CoMemberDTO;
import com.itsme.letitgo.company.regist.model.service.CoMemberService;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;


@WebServlet("/member/coporateRegist")
public class CoMemberRegistServlet extends HttpServlet {

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

		String path = "/WEB-INF/views/common/register/CoRegister.jsp";

		request.getRequestDispatcher(path).forward(request, response);

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		if(ServletFileUpload.isMultipartContent(request)) {




			MultipartRequest multi = new MultipartRequest(request, rootLocation, maxFileSize, encodingType, new DefaultFileRenamePolicy());

			String memId = multi.getParameter("cmemId");
			String memEmail = multi.getParameter("memEmail");
			String memPwd = multi.getParameter("cmemPwd");
			String memName = multi.getParameter("cmemName");
			String memPhone = multi.getParameter("cmemPhone").replace("-", "");
			String coIntro = multi.getParameter("coIntro");
			String coNo = multi.getParameter("coNo");
			String coComName = multi.getParameter("coComName");
			String coCeoName = multi.getParameter("coCeoName");
			String coAddress =multi.getParameter("address1") + "$" + request.getParameter("address2") + "$" + request.getParameter("zipCode"); 
			String coPhone = multi.getParameter("coPhone").replace("-", "");
			String coPax = multi.getParameter("coPax").replace("-", "");
			String coSectors = multi.getParameter("coSectors");
			String coStatus = multi.getParameter("coStatus");
			String coWebsite = multi.getParameter("coWebsite");

			String coLogo = multi.getFilesystemName("coLogo");
			String coLogoOrginal = multi.getOriginalFileName("coLogo");
			String coLogoFullPath = rootLocation + "/" + coLogo;

			String coRepresentativImage = multi.getFilesystemName("coRepresentativImage");
			String coRepresentativImageOrginal =multi.getOriginalFileName("coRepresentativImage");
			String coRepresentativImageFullPath = rootLocation + "/" + coRepresentativImage;

			String businessRegistration = multi.getFilesystemName("businessRegistration");
			String businessRegistrationOrginal = multi.getOriginalFileName("businessRegistration");
			String businessRegistrationFullPath = rootLocation + "/" + businessRegistration;

			System.out.println("memId : " + memId);
			System.out.println("memEmail : " + memEmail);
			System.out.println("memPwd : " + memPwd);
			System.out.println("memName : " + memName);
			System.out.println("memPhone : " + memPhone);
			System.out.println("coIntro : " + coIntro);
			System.out.println("coNo : " + coNo);
			System.out.println("coComName : " + coComName);
			System.out.println("coCeoName : " + coCeoName);
			System.out.println("coAddress : " + coAddress);
			System.out.println("coPhone : " + coPhone);
			System.out.println("coPax : " + coPax);
			System.out.println("coSectors : " + coSectors);
			System.out.println("coStatus : " + coStatus);
			System.out.println("coLogo : " + coLogo);
			System.out.println("coLogoOrginal : " + coLogoOrginal);
			System.out.println("coLogoFullPath : " + coLogoFullPath);
			System.out.println("coRepresentativImage : " + coRepresentativImage);
			System.out.println("coRepresentativImageOrginal : " + coRepresentativImageOrginal);
			System.out.println("coRepresentativImageFullPath : " + coRepresentativImageFullPath);
			System.out.println("businessRegistration : " + businessRegistration);
			System.out.println("businessRegistrationOrginal : " + businessRegistrationOrginal);
			System.out.println("businessRegistrationFullPath : " + businessRegistrationFullPath);

			CoMemberDTO coMember = new CoMemberDTO();
			coMember.setMemId(memId);
			coMember.setMemEmail(memEmail);
			coMember.setMemPwd(memPwd);
			coMember.setMemName(memName);
			coMember.setMemPhone(memPhone);
			coMember.setCoIntro(coIntro);
			coMember.setCoNo(coNo);
			coMember.setCoComName(coComName);
			coMember.setCoCeoName(coCeoName);
			coMember.setCoAddress(coAddress);
			coMember.setCoPhone(coPhone);
			coMember.setCoPax(coPax);
			coMember.setCoSectors(coSectors);
			coMember.setCoStatus(coStatus);
			coMember.setCoWebsite(coWebsite);
			
			CoMemberService serivce = new CoMemberService();

			Map<String, Object> result = serivce.registCoMember(coMember);

			int memNo = serivce.selectMemNo(coMember.getMemId());
			
			
			
			

			String fileUploadDirectory = rootLocation;
			
			File directory = new File(fileUploadDirectory);
			
			if(!directory.exists()) {
				System.out.println("폴더 생성 : " + directory.mkdirs());
			}

			DiskFileItemFactory fileItemFactory = new DiskFileItemFactory();
			fileItemFactory.setRepository(new File(fileUploadDirectory));
			fileItemFactory.setSizeThreshold(maxFileSize);
			
			ServletFileUpload fileUpload = new ServletFileUpload(fileItemFactory);
			
			
			
			
			
			
			
			CoAttachmentDTO coLogoAttachment = new CoAttachmentDTO();
			coLogoAttachment.setMemNo(memNo);
			coLogoAttachment.setMemFileName(coLogo);
			coLogoAttachment.setMemFileOriginalName(coLogoOrginal);
			coLogoAttachment.setFilePath(coLogoFullPath);

			CoAttachmentDTO coRepresentativImageAttachment = new CoAttachmentDTO();
			coRepresentativImageAttachment.setMemNo(memNo);
			coRepresentativImageAttachment.setMemFileName(coRepresentativImage);
			coRepresentativImageAttachment.setMemFileOriginalName(coRepresentativImageOrginal);
			coRepresentativImageAttachment.setFilePath(coRepresentativImageFullPath);

			CoAttachmentDTO businessRegistrationAttachment = new CoAttachmentDTO();		
			businessRegistrationAttachment.setMemNo(memNo);
			businessRegistrationAttachment.setMemFileName(businessRegistration);
			businessRegistrationAttachment.setMemFileOriginalName(businessRegistrationOrginal);
			businessRegistrationAttachment.setFilePath(businessRegistrationFullPath);

			int result2 = serivce.insertCoLogoAttachment(coLogoAttachment);
			int result3 = serivce.insertCoRepresentativImageAttachment(coRepresentativImageAttachment);
			int result4 = serivce.insertBusinessRegistrationAttachment(businessRegistrationAttachment);

			StringBuilder redirectText = new StringBuilder();

			if((int) result.get("result1") > 0 && (int) result.get("result1") > 0 && result2 > 0 && result3 > 0 && result4 > 0) {
				redirectText.append("<script>alert('회원가입이 완료되었습니다.'); location.href='/let/loginPage';</script>");
			} else {
				redirectText.append("<script>alert('회원가입을 실패하였습니다.'); location.href='/let/loginPage';</script>");
			}

			response.setContentType("text/html; charset=UTF-8");
			PrintWriter out = response.getWriter();

			out.print(redirectText.toString());
			out.flush();
			out.close();



		}
	}
}
