package com.itsme.letitgo.personal.resume.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.itsme.letitgo.personal.resume.model.dto.DetailResumeDTO;
import com.itsme.letitgo.personal.resume.model.dto.InsertResumeDTO;
import com.itsme.letitgo.personal.resume.model.service.ResumeService;

@WebServlet("/resume/update")
public class ResumeUpdateServlet extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		int resumeNo = Integer.parseInt(request.getParameter("selectedUpdateResumeNo"));
		List<DetailResumeDTO> detailResume = new ResumeService().selectDetailResumeList(resumeNo);	
		
		String path = "";
		
		if(detailResume != null) {
			path = "/WEB-INF/views/resume/updateResume.jsp";
			request.setAttribute("detailList", detailResume);
		}
		
		request.getRequestDispatcher(path).forward(request, response);
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");
		InsertResumeDTO ir = new InsertResumeDTO();
		System.out.println("date : " + request.getParameter("projectStartDate"));

//		-- value 꺼내기
//		---- resume
		int resumeNo = Integer.parseInt(request.getParameter("resumeNo"));
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
		// null값이 들어올 수 있기 때문에 if문 처리
		if(request.getParameter("projectStartDate") != "") {
			java.sql.Date projectStartDate = java.sql.Date.valueOf(request.getParameter("projectStartDate"));
			ir.setProjectStartDate(projectStartDate);
		}
		
		if(request.getParameter("projectEndDate") != "") {
			java.sql.Date projectEndDate = java.sql.Date.valueOf(request.getParameter("projectEndDate"));
			ir.setProjectEndDate(projectEndDate);			
		}
		
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
		String licenseName = request.getParameter("licenseName");
		String licenseAgency = request.getParameter("licenseAgency");
		java.sql.Date licenseDate = java.sql.Date.valueOf(request.getParameter("licenseDate"));
		
//		---- education
		String eduName = request.getParameter("eduName");
		String eduAgency = request.getParameter("eduAgency");
		java.sql.Date eduStartDate = java.sql.Date.valueOf(request.getParameter("eduStartDate"));
		java.sql.Date eduEndDate = java.sql.Date.valueOf(request.getParameter("eduEndDate"));
		String eduContent = request.getParameter("eduContent");
		
//		---- award
		String awdName = request.getParameter("awdName");
		String awdAgency = request.getParameter("awdAgency");
		java.sql.Date awdDate = java.sql.Date.valueOf(request.getParameter("awdDate"));
		String awdContent = request.getParameter("awdContent");
		
//		---- resume set
		ir.setResumeNo(resumeNo);
		ir.setJobNo(jobNo);
		ir.setResumeTitle(resumeTitle);
		
//		---- career set
		ir.setCarComName(carComName);
		ir.setCarHireDate(carHireDate);
		ir.setCarEntDate(carEntDate);
		ir.setCarStatus(carStatus);
		ir.setCarDeptName(carDeptName);
		ir.setCarJobName(carJobName);
		ir.setCarWorkField(carWorkField);
		ir.setProjectName(projectName);
		ir.setProjectContent(projectContent);
		
//		---- portfolio set
		ir.setPotKinds(potKinds);
		ir.setPotLinkAddress(potLinkAddress);
		ir.setPotFilePath(potFilePath);
		ir.setPotFileOriginalName(potFileOriginalName);
		ir.setPotFileName(potFileName);
		ir.setSelfIntroItemNo(selfIntroItemNo);
		ir.setSelfIntroItemContent(selfIntroItemContent);
		
//		---- license set
		ir.setLicenseName(licenseName);
		ir.setLicenseAgency(licenseAgency);
		ir.setLicenseDate(licenseDate);
		
//		---- education set
		ir.setEduName(eduName);
		ir.setEduAgency(eduAgency);
		ir.setEduStartDate(eduStartDate);
		ir.setEduEndDate(eduEndDate);
		ir.setEduContent(eduContent);
		
// 		---- award set
		ir.setAwdName(awdName);
		ir.setAwdAgency(awdAgency);
		ir.setAwdDate(awdDate);
		ir.setAwdContent(awdContent);
		
		List<InsertResumeDTO> irList = new ArrayList<>();
		irList.add(ir);
		
		int resultDetail = new ResumeService().updateDetailResume(ir);
		
		int result = resultDetail;
		
		String path = "";
		
		if(result > 1) {
			System.out.println("내가 이겼다");
			path = "/WEB-INF/views/resume/resumeList.jsp";
		}
		response.setCharacterEncoding("UTF-8");
		response.sendRedirect("/let/resume/list");
		
	}
}


