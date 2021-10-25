package com.itsme.letitgo.company.regist.controller;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Map;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletRequestWrapper;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.fileupload.servlet.ServletFileUpload;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;

import com.itsme.letitgo.common.wrapper.EncryptRequestWrapper;
import com.itsme.letitgo.company.regist.model.dto.CoAttachmentDTO;
import com.itsme.letitgo.company.regist.model.dto.CoMemberDTO;
import com.itsme.letitgo.company.regist.model.service.CoMemberService;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

/* home -> 로그인 -> 기업회원가입 */
@WebServlet("/member/coporateRegist")
public class CoMemberRegistServlet extends HttpServlet {

	private String rootLocation;
	private int maxFileSize;
	private String encodingType;
	
	/* web.xml에 있는 정보 가져옴 */
	@Override
	public void init() throws ServletException {

		ServletContext context = getServletContext();

		rootLocation = context.getInitParameter("upload-location");
		maxFileSize = Integer.parseInt(context.getInitParameter("max-file-size"));
		encodingType = context.getInitParameter("encoding-type");

	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		/* forward 방식으로 해당 페이지로 이동시킴 */
		String path = "/WEB-INF/views/common/register/CoRegister.jsp";

		request.getRequestDispatcher(path).forward(request, response);

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		/* 인코딩처리 해줌 */
		if(ServletFileUpload.isMultipartContent(request)) {
			
			/* 파일첨부와 동시에 정보를 받을때 사용 */
			MultipartRequest multi = new MultipartRequest(request, rootLocation, maxFileSize, encodingType, new DefaultFileRenamePolicy());

			/* 사용자가 입력한  정보을 받음 */
			String memId = multi.getParameter("cmemId");
			String memEmail = multi.getParameter("memEmail");
			String memRawPwd = multi.getParameter("cmemPwd");
			String memPwd = new BCryptPasswordEncoder().encode(memRawPwd);
			String memName = multi.getParameter("cmemName");
			String memPhone = multi.getParameter("cmemPhone").replace("-", "");
			String coIntro = multi.getParameter("coIntro");
			String coNo = multi.getParameter("coNo");
			String coComName = multi.getParameter("coComName");
			String coCeoName = multi.getParameter("coCeoName");
			String coAddress =multi.getParameter("address1") + "$" + multi.getParameter("address2") + "$" + multi.getParameter("zipCode"); 
			String coPhone = multi.getParameter("coPhone").replace("-", "");
			String coPax = multi.getParameter("coPax").replace("-", "");
			String coSectors = multi.getParameter("coSectors");
			String coStatus = multi.getParameter("coStatus");
			String coWebsite = multi.getParameter("coWebsite");
			
			/* 파밀명을 저장하면서, 이미 저장된 이름이 있을경우 뒤에 숫자를 붙여서 파일명을 바꾼다. */
			String coLogo = multi.getFilesystemName("coLogo");
			
			/* 실제파일명 */
			String coLogoOrginal = multi.getOriginalFileName("coLogo");
			
			/* 저장경로 설정*/
			String coLogoFullPath = rootLocation + "/" + coLogo;

			String coRepresentativImage = multi.getFilesystemName("coRepresentativImage");
			String coRepresentativImageOrginal =multi.getOriginalFileName("coRepresentativImage");
			String coRepresentativImageFullPath = rootLocation + "/" + coRepresentativImage;

			String businessRegistration = multi.getFilesystemName("businessRegistration");
			String businessRegistrationOrginal = multi.getOriginalFileName("businessRegistration");
			String businessRegistrationFullPath = rootLocation + "/" + businessRegistration;

			/* 회원정보를 DTO에 담는다. */
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
			
			/* 입력된 정보로 기업회원가입 등록 */
			Map<String, Object> result = serivce.registCoMember(coMember);
			
			/* 회원가입된 아이디를 통해 회원번호 조회 */
			int memNo = serivce.selectMemNo(coMember.getMemId());
						
			/* 기업회원가입 승인여부이력 생성 */
			int result1 = serivce.insertRequestAppHistory(memNo);
			
			/* 파일을 저장할 곳을 지정, 없을 경우 생성 */	
			String fileUploadDirectory = rootLocation;
			File directory = new File(fileUploadDirectory);

			if(!directory.exists()) {
				directory.mkdirs();
			}
			
			/* 로고이미지 저장을 위해 DTO에 저장 */
			CoAttachmentDTO coLogoAttachment = new CoAttachmentDTO();
			coLogoAttachment.setMemNo(memNo);
			coLogoAttachment.setMemFileName(coLogo);
			coLogoAttachment.setMemFileOriginalName(coLogoOrginal);
			coLogoAttachment.setFilePath(coLogoFullPath);

			/* 대표이미지 저장을 위해 DTO에 저장 */
			CoAttachmentDTO coRepresentativImageAttachment = new CoAttachmentDTO();
			coRepresentativImageAttachment.setMemNo(memNo);
			coRepresentativImageAttachment.setMemFileName(coRepresentativImage);
			coRepresentativImageAttachment.setMemFileOriginalName(coRepresentativImageOrginal);
			coRepresentativImageAttachment.setFilePath(coRepresentativImageFullPath);

			/* 사업자등록증 저장을 위해 DTO에 저장 */
			CoAttachmentDTO businessRegistrationAttachment = new CoAttachmentDTO();		
			businessRegistrationAttachment.setMemNo(memNo);
			businessRegistrationAttachment.setMemFileName(businessRegistration);
			businessRegistrationAttachment.setMemFileOriginalName(businessRegistrationOrginal);
			businessRegistrationAttachment.setFilePath(businessRegistrationFullPath);

			/* 로고이미지 저장 */
			int result2 = serivce.insertCoLogoAttachment(coLogoAttachment);
			
			/* 대표이미지 저장 */
			int result3 = serivce.insertCoRepresentativImageAttachment(coRepresentativImageAttachment);
			
			/* 사업자등록증 저장 */
			int result4 = serivce.insertBusinessRegistrationAttachment(businessRegistrationAttachment);

			StringBuilder redirectText = new StringBuilder();

			if((int) result.get("result1") > 0 && (int) result.get("result1") > 0 && result1 > 0 &&  result2 > 0 && result3 > 0 && result4 > 0) {
				redirectText.append("<script>alert('회원가입요청을 하였습니다. 관리자 승인 후 이용가능합니다.'); location.href='/let/loginPage';</script>");
			} else {
				redirectText.append("<script>alert('회원가입을 실패하였습니다.'); location.href='/let/loginPage';</script>");

			}

			/* redirect 방식으로 메세지를 보내면서 location.href에 해당하는 페이지로 이동시킴 */
			response.setContentType("text/html; charset=UTF-8");
			PrintWriter out = response.getWriter();

			out.print(redirectText.toString());
			out.flush();
			out.close();



		}
	}
}
