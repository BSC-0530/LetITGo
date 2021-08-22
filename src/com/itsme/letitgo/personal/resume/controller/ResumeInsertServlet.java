package com.itsme.letitgo.personal.resume.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.itsme.letitgo.login.model.dto.MemberLoginDTO;
import com.itsme.letitgo.personal.resume.model.dto.InsertResumeDTO;
import com.itsme.letitgo.personal.resume.model.service.ResumeService;

@WebServlet("/resume/insert")
public class ResumeInsertServlet extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.getRequestDispatcher("/WEB-INF/views/resume/insertList.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 
		request.setCharacterEncoding("UTF-8");
		
		HttpSession session = request.getSession();
		
		MemberLoginDTO comDTO1 = (MemberLoginDTO) session.getAttribute("loginMember");
		System.out.println("번호" + comDTO1.getMemNo());
		//로그인된 멤버 번호
		int memberNo = comDTO1.getMemNo();
 
//		-- value 꺼내기
//		---- resume
		Integer jobNo = Integer.parseInt(request.getParameter("jobNo"));
		String resumeTitle = request.getParameter("resumeTitle");
//		---- career
		String carComName = request.getParameter("carComName");
		java.sql.Date carHireDate = java.sql.Date.valueOf(request.getParameter("carHireDate"));
		java.sql.Date carEntDate = java.sql.Date.valueOf(request.getParameter("carEntDate"));
		String carStatus = request.getParameter("carStatus");
		String carDeptName = request.getParameter("carDeptName");
		String carJobName = request.getParameter("carJobName");
		String carWorkField = request.getParameter("carWorkField");
		String projectName = request.getParameter("projectName");
		java.sql.Date projectStartDate = java.sql.Date.valueOf(request.getParameter("projectStartDate"));
		java.sql.Date projectEndDate = java.sql.Date.valueOf(request.getParameter("projectEndDate"));
		String projectContent = request.getParameter("projectContent");
		
//		---- portfolio
		String potKinds = request.getParameter("potKinds");
		String potLinkAddress = request.getParameter("potLinkAddress");
		String potFilePath = request.getParameter("potFilePath");
		String potFileOriginalName = request.getParameter("potFileOriginalName");
		String potFileName = request.getParameter("potFileName");
//		---- introduction
		Integer selfIntroItemNo = Integer.parseInt(request.getParameter("selfIntroItemNo"));
		String selfIntroItemContent = request.getParameter("selfIntroItemContent");
//		---- license
//		Integer licenseNo = Integer.parseInt(request.getParameter("licenseNo"));
		String licenseName = request.getParameter("licenseName");
		String licenseAgency = request.getParameter("licenseAgency");
		java.sql.Date licenseDate = java.sql.Date.valueOf(request.getParameter("licenseDate"));
//		---- education
//		Integer eduNo = Integer.parseInt(request.getParameter("eduNo"));
		String eduName = request.getParameter("eduName");
		String eduAgency = request.getParameter("eduAgency");
		java.sql.Date eduStartDate = java.sql.Date.valueOf(request.getParameter("eduStartDate"));
		java.sql.Date eduEndDate = java.sql.Date.valueOf(request.getParameter("eduEndDate"));
		String eduContent = request.getParameter("eduContent");
//		---- award
//		Integer awdNo = Integer.parseInt(request.getParameter("awdNo"));
		String awdName = request.getParameter("awdName");
		String awdAgency = request.getParameter("awdAgency");
		java.sql.Date awdDate = java.sql.Date.valueOf(request.getParameter("awdDate"));
		String awdContent = request.getParameter("awdContent");
//		---- skills
		String skillsName = request.getParameter("inputSkill");
		
		InsertResumeDTO ir = new InsertResumeDTO();
		
//		ir.setResumeNo(resumeNo);
		ir.setInMemNo(memberNo);
//		ir.setResumeWriteDate(resumeWriteDate);
//		ir.setResumeScoutStatus(resumeScoutStatus);
		ir.setJobNo(jobNo);
		ir.setResumeTitle(resumeTitle);
//		ir.setCarNo(carNo);
		ir.setCarComName(carComName);
		ir.setCarHireDate(carHireDate);
		ir.setCarEntDate(carEntDate);
		ir.setCarStatus(carStatus);
		ir.setCarDeptName(carDeptName);
		ir.setCarJobName(carJobName);
		ir.setCarWorkField(carWorkField);
		ir.setProjectName(projectName);
		ir.setProjectStartDate(projectStartDate);
		ir.setProjectEndDate(projectEndDate);
		ir.setProjectContent(projectContent);
//		ir.setPotNo(potNo);
		ir.setPotKinds(potKinds);
		ir.setPotLinkAddress(potLinkAddress);
		ir.setPotFilePath(potFilePath);
		ir.setPotFileOriginalName(potFileOriginalName);
		ir.setPotFileName(potFileName);
		ir.setSelfIntroItemNo(selfIntroItemNo);
		ir.setSelfIntroItemContent(selfIntroItemContent);
//		ir.setLicenseNo(licenseNo);
		ir.setLicenseName(licenseName);
		ir.setLicenseAgency(licenseAgency);
		ir.setLicenseDate(licenseDate);
//		ir.setEduNo(eduNo);
		ir.setEduName(eduName);
		ir.setEduAgency(eduAgency);
		ir.setEduStartDate(eduStartDate);
		ir.setEduEndDate(eduEndDate);
		ir.setEduContent(eduContent);
//		ir.setAwdNo(awdNo);
		ir.setAwdName(awdName);
		ir.setAwdAgency(awdAgency);
		ir.setAwdDate(awdDate);
		ir.setAwdContent(awdContent);
		
		List<InsertResumeDTO> irList = new ArrayList<>();
		irList.add(ir);
		System.out.println("req irList : " + irList);
		
		int resumeNo = new ResumeService().insertResume(ir);
		
		System.out.println("resumeNo : " + resumeNo);
		
		ir.setResumeNo(resumeNo);
		irList.add(ir);
		System.out.println("selected irList : " + irList);
		
		int result = new ResumeService().insertDetailResume(ir);
		
		
		
		String path = "";
		
		if(result > 0) {
			
			path = "/WEB-INF/views/resume/resumeList.jsp";
		}
		response.setCharacterEncoding("UTF-8");
		response.sendRedirect("/let/resume/list");
		
	}

}
