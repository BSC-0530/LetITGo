package com.itsme.letitgo.personal.recruit.jobposting.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.itsme.letitgo.common.paging.Pagenation;
import com.itsme.letitgo.common.paging.SelectCriteria;
import com.itsme.letitgo.personal.recruit.jobposting.model.dto.SelectRequestJobPostingDTO;
import com.itsme.letitgo.personal.recruit.jobposting.model.service.SelectJobPostingService;


@WebServlet("/member/allJobPosting/select")
public class SelectAllJobPostingServlet extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		SelectRequestJobPostingDTO dto = new SelectRequestJobPostingDTO();

		SelectJobPostingService service = new SelectJobPostingService();

		String currentPage = request.getParameter("currentPage");
		int pageNo = 1;
		
		if(currentPage != null && !"".equals(currentPage)) {
			pageNo = Integer.parseInt(currentPage);
		}
		
		/* 0보다 작은 숫자값을 입력해도 1페이지를 보여준다 */
		if(pageNo <= 0) {
			pageNo = 1;
		}
		
		String searchCondition = request.getParameter("searchCondition");
		String searchValue = request.getParameter("searchValue");
		
		Map<String, String> searchMap = new HashMap<>();
		searchMap.put("searchCondition", searchCondition);
		searchMap.put("searchValue", searchValue);
		
		/* 전체 게시물 수가 필요하다.
		 * 데이터베이스에서 먼저 전체 게시물 수를 조회해올 것이다.
		 * 검색조건이 있는 경우 검색 조건에 맞는 전체 게시물 수를 조회한다.
		 * */
		int totalCount = service.selectJpTotalCount(searchMap);
				
		/* 한 페이지에 보여 줄 게시물 수 */
		int limit = 10;		//얘도 파라미터로 전달받아도 된다.
		/* 한 번에 보여질 페이징 버튼의 갯수 */
		int buttonAmount = 5;
		
		/* 페이징 처리를 위한 로직 호출 후 페이징 처리에 관한 정보를 담고 있는 인스턴스를 반환받는다. */
		SelectCriteria selectCriteria = null;
		
		if(searchCondition != null && !"".equals(searchCondition)) {
			selectCriteria = Pagenation.getSelectCriteria(pageNo, totalCount, limit, buttonAmount, searchCondition, searchValue);
		} else {
			selectCriteria = Pagenation.getSelectCriteria(pageNo, totalCount, limit, buttonAmount);
		}

		dto.setSelectCriteria(selectCriteria);


		Map<String, List<Object>> jp = service.selectJobPosting(dto);
		
		
		String path = "";
		if(jp != null) {
			path = "/WEB-INF/views/recruit/jobPostingList.jsp";
			request.setAttribute("jobPostingList", jp.get("jpAndInfo"));
			request.setAttribute("jpSkills", jp.get("jpSkills"));
			request.setAttribute("jobNameList", jp.get("jobNameList"));
			request.setAttribute("skillsList", jp.get("skillsList"));
			request.setAttribute("totalCount", totalCount);
			request.setAttribute("selectCriteria", selectCriteria);
			
		} else {
			path = "/WEB-INF/views/common/main/main.jsp";
		}
		
		request.getRequestDispatcher(path).forward(request, response);

	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		request.setCharacterEncoding("UTF-8");
		

		SelectRequestJobPostingDTO dto = new SelectRequestJobPostingDTO();

		SelectJobPostingService service = new SelectJobPostingService();
		
		// 페이징 시작
		String currentPage = request.getParameter("currentPage");
		int pageNo = 1;
		
		if(currentPage != null && !"".equals(currentPage)) {
			pageNo = Integer.parseInt(currentPage);
		}
		
		/* 0보다 작은 숫자값을 입력해도 1페이지를 보여준다 */
		if(pageNo <= 0) {
			pageNo = 1;
		}
		
		String searchCondition = request.getParameter("searchCondition");
		String searchValue = request.getParameter("searchValue");
		
		Map<String, String> searchMap = new HashMap<>();
		searchMap.put("searchCondition", searchCondition);
		searchMap.put("searchValue", searchValue);
		
		/* 전체 게시물 수가 필요하다.
		 * 데이터베이스에서 먼저 전체 게시물 수를 조회해올 것이다.
		 * 검색조건이 있는 경우 검색 조건에 맞는 전체 게시물 수를 조회한다.
		 * */
		int totalCount = service.selectJpTotalCount(searchMap);
				
		/* 한 페이지에 보여 줄 게시물 수 */
		int limit = 10;		//얘도 파라미터로 전달받아도 된다.
		/* 한 번에 보여질 페이징 버튼의 갯수 */
		int buttonAmount = 5;
		
		/* 페이징 처리를 위한 로직 호출 후 페이징 처리에 관한 정보를 담고 있는 인스턴스를 반환받는다. */
		SelectCriteria selectCriteria = null;
		
		if(searchCondition != null && !"".equals(searchCondition)) {
			selectCriteria = Pagenation.getSelectCriteria(pageNo, totalCount, limit, buttonAmount, searchCondition, searchValue);
		} else {
			selectCriteria = Pagenation.getSelectCriteria(pageNo, totalCount, limit, buttonAmount);
		}
		// 페이징 끝
		
		if(request.getParameter("skills") != null) {
			String skillsName = request.getParameter("skills");
			dto.setSkills(skillsName.toLowerCase());
			
		}
		if(request.getParameter("experience") != null) {
			int experience = Integer.parseInt(request.getParameter("experience"));
			dto.setExperience(experience);
			
		}
		if (request.getParameter("jobNo") != null) {
			int jobNo = Integer.parseInt(request.getParameter("jobNo"));
			dto.setJobNo(jobNo);
			
		}
		if(request.getParameterValues("area") != null) {
		// 이때 지역은 복수 선택이 가능하기 때문에 배열로 꺼내와서 List로 담아준다 
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
		
		dto.setSelectCriteria(selectCriteria);
		
		Map<String, List<Object>> jp = service.selectJobPosting(dto);

		String path = "";
		if(jp != null) {
			path = "/WEB-INF/views/recruit/jobPostingList.jsp";
			request.setAttribute("jobPostingList", jp.get("jpAndInfo"));
			request.setAttribute("jpSkills", jp.get("jpSkills"));
			request.setAttribute("jobNameList", jp.get("jobNameList"));
			request.setAttribute("skillsList", jp.get("skillsList"));
			request.setAttribute("totalCount", totalCount);
			request.setAttribute("selectCriteria", selectCriteria);
			
		} else {
			path = "/WEB-INF/views/common/main/main.jsp";
		}
		
		request.getRequestDispatcher(path).forward(request, response);
	}
}
