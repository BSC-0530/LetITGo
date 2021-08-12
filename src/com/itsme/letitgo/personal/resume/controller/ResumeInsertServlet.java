package com.itsme.letitgo.personal.resume.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.itsme.letitgo.personal.resume.model.dto.AwardHistoryDTO;
import com.itsme.letitgo.personal.resume.model.dto.CareerHistoryDTO;
import com.itsme.letitgo.personal.resume.model.dto.DetailResumeDTO;
import com.itsme.letitgo.personal.resume.model.dto.EducationHistoryDTO;
import com.itsme.letitgo.personal.resume.model.dto.LicenseHistoryDTO;
import com.itsme.letitgo.personal.resume.model.dto.PortfolioDTO;
import com.itsme.letitgo.personal.resume.model.dto.ResumeDTO;
import com.itsme.letitgo.personal.resume.model.dto.SelfIntroductionContentDTO;
import com.itsme.letitgo.personal.resume.model.service.ResumeService;

@WebServlet("/resume/insert")
public class ResumeInsertServlet extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.getRequestDispatcher("/WEB-INF/views/resume/insertList.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");

//		---------- ResumeDTO -----------
		String resumeTitle = request.getParameter("resumeTitle");
		Integer jobNo = Integer.parseInt(request.getParameter("jobNo"));
		
//		---------- CareerHistoryDTO -------------
		String carComName = request.getParameter("carComName");
		String carDeptName = request.getParameter("carDeptName");
		String carJobName = request.getParameter("carJobName");
		String carWorkField = request.getParameter("carWorkField");
		java.sql.Date carHireDate = java.sql.Date.valueOf(request.getParameter("carHireDate"));
		java.sql.Date carEntDate = java.sql.Date.valueOf(request.getParameter("carEntDate"));
		String projectName = request.getParameter("projectName");
		String projectContent = request.getParameter("projectContent");
		java.sql.Date projectStartDate = java.sql.Date.valueOf(request.getParameter("projectStartDate"));
		java.sql.Date projectEndDate = java.sql.Date.valueOf(request.getParameter("projectEndDate"));
		
//		---------- PortFolioDTO
		String potLinkAddress = request.getParameter("potLinkAddress");
		String potFilePath = request.getParameter("potFilePath");
		
//		---------- SelfIntroDTO
		Integer selfIntroItemNo = Integer.parseInt(request.getParameter("selfIntroItemNo"));
		String selfIntroItemContent = request.getParameter("selfIntroItemContent");
		
//		---------- LicenseDTO
		String licenseName = request.getParameter("licenseName");
		String licenseAgency = request.getParameter("licenseAgency");
		java.sql.Date licenseDate = java.sql.Date.valueOf(request.getParameter("licenseDate"));
		
//		---------- EducationDTO
		String eduName = request.getParameter("eduName");
		String eduAgency = request.getParameter("eduAgency");
		java.sql.Date eduStartDate = java.sql.Date.valueOf(request.getParameter("eduStartDate"));
		java.sql.Date eduEndDate = java.sql.Date.valueOf(request.getParameter("eduEndDate"));
		String eduContent = request.getParameter("eduContent");
		
//		---------- AwardDTO 
		String awdName = request.getParameter("awdName");
		String awdAgency = request.getParameter("awdAgency");
		java.sql.Date awdDate = java.sql.Date.valueOf(request.getParameter("awdDate"));
		String awdContent = request.getParameter("awdContent");
		
		
//		---------- career set
		List<CareerHistoryDTO> carList = new ArrayList<>();
		CareerHistoryDTO car = new CareerHistoryDTO();
		
		car.setCarComName(carComName);
		car.setCarDeptName(carDeptName);
		car.setCarEntDate(carEntDate);
		car.setCarHireDate(carHireDate);
		car.setCarJobName(carJobName);
		car.setCarWorkField(carWorkField);
		car.setProjectContent(projectContent);
		car.setProjectEndDate(projectEndDate);
		car.setProjectStartDate(projectStartDate);
		car.setProjectName(projectName);
		
		carList.add(car);
		
//		----------- resume set
		ResumeDTO resume = new ResumeDTO();
		resume.setJobNo(jobNo);
		resume.setResumeTitle(resumeTitle);
		
//		----------- Portfolio set
		List<PortfolioDTO> potList = new ArrayList<>();
		PortfolioDTO pf = new PortfolioDTO();
		
		pf.setPotLinkAddress(potLinkAddress);
		pf.setPotFilePath(potFilePath);
		
		potList.add(pf);
		
//		----------- SelfIntroCon set
		List<SelfIntroductionContentDTO> sicList = new ArrayList<>();
		SelfIntroductionContentDTO sic = new SelfIntroductionContentDTO();
		
		sic.setSelfIntroItemNo(selfIntroItemNo);
		sic.setSelfIntroItemContent(selfIntroItemContent);
		
		sicList.add(sic);
		
//		----------- Lisence set
		List<LicenseHistoryDTO> lhList = new ArrayList<>();
		LicenseHistoryDTO lh = new LicenseHistoryDTO();
		
		lh.setLicenseName(licenseName);
		lh.setLicenseAgency(licenseAgency);
		lh.setLicenseDate(licenseDate);
		
		lhList.add(lh);
		
//		----------- Education set
		List<EducationHistoryDTO> eduList = new ArrayList<>();
		EducationHistoryDTO edu = new EducationHistoryDTO();
		
		edu.setEduName(eduName);
		edu.setEduAgency(eduAgency);
		edu.setEduStartDate(eduStartDate);
		edu.setEduEndDate(eduEndDate);
		edu.setEduContent(eduContent);
		
		eduList.add(edu);
		
//		----------- Awd set
		List<AwardHistoryDTO> awdList = new ArrayList<>();
		AwardHistoryDTO awd = new AwardHistoryDTO();
		
		awd.setAwdName(awdName);
		awd.setAwdAgency(awdAgency);
		awd.setAwdDate(awdDate);
		awd.setAwdContent(awdContent);
		
		awdList.add(awd);
		
		
//		----------- DetailResume set
		DetailResumeDTO dr = new DetailResumeDTO();
		dr.setResumeTitle(resumeTitle);
		dr.setJobNo(jobNo);
		dr.setCareerHistoryList(carList);
		dr.setAwardHistoryList(awdList);
		dr.setEducationHistoryList(eduList);
		dr.setLicenseHistoryList(lhList);
		dr.setPortFolioList(potList);
		
		
		int result = new ResumeService().insertResume(dr);
		
		System.out.println(result);
		
		String path = "";
		
		if(result > 0) {
			System.out.println("내가 이겼다");
			path = "/WEB-INF/views/resume/resumeList.jsp";
		}
		
		response.sendRedirect("/let/resume/list");
		
	}

}
