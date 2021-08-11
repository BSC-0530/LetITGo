package com.itsme.letitgo.personal.recruit.jobposting.controller;

import java.io.IOException;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.itsme.letitgo.personal.recruit.jobposting.model.dto.SelectJobPostingDTO;
import com.itsme.letitgo.personal.recruit.jobposting.model.dto.SelectRequestJobPostingDTO;
import com.itsme.letitgo.personal.recruit.jobposting.model.service.SelectJobPostingService;


@WebServlet("/member/allJobPosting/select")
public class SelectAllJobPostingServlet extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {


		SelectRequestJobPostingDTO requestJobPostingDTO = new SelectRequestJobPostingDTO();



		SelectJobPostingService selectJobPostingService = new SelectJobPostingService();

		Map<String, List<Object>> jp = selectJobPostingService.selectAllJobPosting();


		System.out.println("jpAndInfo : " + jp.get("jpAndInfo"));
		System.out.println("jpSkills : " + jp.get("jpSkills"));
		System.out.println("jobPostingSize : " + jp.get("jpAndInfo").size());


		request.setAttribute("jobPostingList", jp.get("jpAndInfo"));
		request.setAttribute("jpSkills", jp.get("jpSkills"));
		request.setAttribute("jobNameList", jp.get("jobNameList"));
		request.setAttribute("jobPostingSize", jp.get("jpAndInfo").size());



		String path = "/WEB-INF/views/recruit/jobPosting.jsp";
		request.getRequestDispatcher(path).forward(request, response);

	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		if(request.getAttribute("jobName") != null) {
			int jobNo = (int) request.getAttribute("jobNo");
			System.out.println("======================servlet jobName : " + jobNo);
		}
		
		System.out.println(request.getAttribute("seoul"));
	}

}
