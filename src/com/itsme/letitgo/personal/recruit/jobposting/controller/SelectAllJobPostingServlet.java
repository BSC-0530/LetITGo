package com.itsme.letitgo.personal.recruit.jobposting.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.itsme.letitgo.personal.recruit.jobposting.model.dto.SelectRequestJobPostingDTO;
import com.itsme.letitgo.personal.recruit.jobposting.model.service.SelectJobPostingService;


@WebServlet("/member/allJobPosting/select")
public class SelectAllJobPostingServlet extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		SelectJobPostingService service = new SelectJobPostingService();

		Map<String, List<Object>> jp = service.selectAllJobPosting();

		request.setAttribute("jobPostingList", jp.get("jpAndInfo"));
		request.setAttribute("jpSkills", jp.get("jpSkills"));
		request.setAttribute("jobNameList", jp.get("jobNameList"));
		request.setAttribute("skillsList", jp.get("skillsList"));

		String path = "/WEB-INF/views/recruit/jobPostingList.jsp";
		request.getRequestDispatcher(path).forward(request, response);

	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		request.setCharacterEncoding("UTF-8");

		SelectRequestJobPostingDTO dto = new SelectRequestJobPostingDTO();

		int jobNo = Integer.parseInt(request.getParameter("jobNo"));
		System.out.println("@@@@@@@@@@@@@@@@@@@@@@@servlet jobNo : " + jobNo);
		dto.setJobNo(jobNo);
		
		if(request.getParameter("skills") != null) {
			String skillsName = request.getParameter("skills");
			dto.setSkills(skillsName.toLowerCase());
			System.out.println("dto@@@@@@@@@@@@@@@@@@@@@@@@ :" + dto.getSkills());
		}
		int experience = Integer.parseInt(request.getParameter("experience"));
		dto.setExperience(experience);
		System.out.println("@@@@@@@@@@@@@@@@@@@@@@@servlet experience : " + jobNo);

		
		// 이때 지역은 복수 선택이 가능하기 때문에 배열로 꺼내와서 List로 담아준다 
		if(request.getParameterValues("area") != null) {
			String[] areas = request.getParameterValues("area");
			List<String> areaList = new ArrayList<>();
			for(String a : areas) {
				String area[] = a.split("/");
				for(String b : area) {
					areaList.add(b);
				}
			}
			dto.setAreaList(areaList);
		}
		
		SelectJobPostingService service = new SelectJobPostingService();

		Map<String, List<Object>> jp = service.selectOptionJobPosting(dto);

		request.setAttribute("jobPostingList", jp.get("jpAndInfo"));
		request.setAttribute("jpSkills", jp.get("jpSkills"));
		request.setAttribute("jobNameList", jp.get("jobNameList"));
		request.setAttribute("skillsList", jp.get("skillsList"));

		String path = "/WEB-INF/views/recruit/jobPostingList.jsp";
		request.getRequestDispatcher(path).forward(request, response);
	}
}
