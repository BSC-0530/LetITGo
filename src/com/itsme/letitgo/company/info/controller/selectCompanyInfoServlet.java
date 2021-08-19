package com.itsme.letitgo.company.info.controller;

import java.io.IOException;
import java.util.regex.Pattern;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.itsme.letitgo.company.info.model.dto.CompanyAddInfoDTO;
import com.itsme.letitgo.company.info.model.dto.FileUploadDTO;
import com.itsme.letitgo.company.info.model.service.CompanyInfoService;
import com.itsme.letitgo.login.model.dto.MemberLoginDTO;

@WebServlet("/companyTestServlet")
public class selectCompanyInfoServlet extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		HttpSession session = request.getSession();
		
		 MemberLoginDTO comDTO = (MemberLoginDTO) session.getAttribute("loginMember");
		 System.out.println("번호" + comDTO.getMemNo());
		 //로그인된 멤버 번호
		 int memberNo = comDTO.getMemNo();
		 
//		CompanyAddInfoDTO comDTO = new CompanyInfoService().selectedInfoCompany();
//		System.out.println("ASKDJAKSDAJSDH" + comDTO);
		 
		 FileUploadDTO logoImage = new CompanyInfoService().selectLogoFile(memberNo);
		 FileUploadDTO representativeImage = new CompanyInfoService().selectRepresentFile(memberNo);
		 FileUploadDTO businessRegistration = new CompanyInfoService().selectBusinessFile(memberNo);
		 
		 System.out.println(logoImage);
		 System.out.println(representativeImage);
		 System.out.println(businessRegistration);
		
		String address = comDTO.getCoAddress();
		
		
		request.setAttribute("logoImage", logoImage);
		request.setAttribute("representativeImage", representativeImage);
		request.setAttribute("businessRegistration", businessRegistration);
		request.setAttribute("comDTO", comDTO);
		String path="/WEB-INF/views/member/company/companyMyPage.jsp";
		request.setCharacterEncoding("UTF-8");
		
		request.getRequestDispatcher(path).forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
	}

}
