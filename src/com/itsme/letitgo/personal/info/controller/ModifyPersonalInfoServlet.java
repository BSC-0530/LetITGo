package com.itsme.letitgo.personal.info.controller;

import java.io.IOException;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.fileupload.servlet.ServletFileUpload;

import com.itsme.letitgo.company.info.model.dto.CompanyAddInfoDTO;
import com.itsme.letitgo.personal.info.model.dto.ModifyMemberDTO;
import com.itsme.letitgo.personal.info.model.service.PersonalInfoService;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;


@WebServlet("/member/personal/modifyinfo")
public class ModifyPersonalInfoServlet extends HttpServlet {
	
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
		
		String path = "/WEB-INF/views/member/personal/modifypersoanlmain.jsp";
		request.getRequestDispatcher(path).forward(request, response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8"); //UTF-8(한글) 로 변환
		
		if(ServletFileUpload.isMultipartContent(request)) {
			
			MultipartRequest mr = new MultipartRequest(request, rootLocation, maxFileSize, encodingType, new DefaultFileRenamePolicy());
			
			String coNo = mr.getParameter("requestcoNo"); System.out.println("멀티리퀘스트 넘버사업자등록번호 " + coNo);
			String comName = mr.getParameter("requestComName");
			String ceoName = mr.getParameter("requestcoCeoName");
			String coSectors = mr.getParameter("requestcoSectors");
			String coStatus = mr.getParameter("requestcoStatus");
			String coAddress = mr.getParameter("requestcoAddress") + mr.getParameter("detailAddress");
			String webStie = mr.getParameter("requestWebSite");
			String contents = mr.getParameter("requestcoIntro");
			
			System.out.println("coNo " + coNo);
			System.out.println("comName " +comName );
			System.out.println(" ceoName" + ceoName);
			System.out.println(" coSectors" + coSectors);
			System.out.println(" coStatus" + coStatus);
			System.out.println("coAddress " + coAddress);
			System.out.println("webStie " + webStie);
			System.out.println(" contents : 나오냐?" + contents);
			System.out.println("mr.getFilesystemName"+ mr.getFilesystemName("coNo"));
			CompanyAddInfoDTO comAd = new CompanyAddInfoDTO();
			
		}
	}

}
