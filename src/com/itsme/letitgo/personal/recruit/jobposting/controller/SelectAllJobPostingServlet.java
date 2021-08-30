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

		/* 페이징 처리 */
		int pageNo = 1;
		
		/* 0보다 작은 숫자값을 입력해도 1페이지를 보여준다 */
		if(pageNo <= 0) {
			pageNo = 1;
		}

		/* 전체 게시물 수가 필요하다.
		 * 데이터베이스에서 먼저 전체 게시물 수를 조회해올 것이다.
		 * */
		int totalCount = service.selectJpTotalCount(dto);
				
		/* 한 페이지에 보여 줄 게시물 수 */
		int limit = 10;		
		
		/* 한 번에 보여질 페이징 버튼의 갯수 */
		int buttonAmount = 5;
		
		SelectCriteria selectCriteria = Pagenation.getSelectCriteria(pageNo, totalCount, limit, buttonAmount);
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

		/* 전달받은 값 인코딩 */
		request.setCharacterEncoding("UTF-8");
		
		SelectRequestJobPostingDTO dto = new SelectRequestJobPostingDTO();
		
		/* 
		 * 검색 조건이 있을때 form태그로 전달된 값을 parameter에서 꺼낸다.
		 * 검색을 위해 dto에 담는다.
		 * 결과 조회 후 페이징 처리를 진행 할때 검색 조건을 유지하기 위해서 전달받은 검색 조건을 다시 request 영역에 담아서 jsp쪽으로 전달해준다. */
		if(request.getParameter("skills") != null) {
			String skillsName = request.getParameter("skills");
			dto.setSkills(skillsName.toLowerCase());
			request.setAttribute("skillsName", skillsName);
			
		}
		if(request.getParameter("experience") != "") {
			Integer experience = Integer.parseInt(request.getParameter("experience"));
			dto.setExperience(experience);
			request.setAttribute("experience", experience);
			
		}
		if (request.getParameter("jobNo") != "") {
			Integer jobNo = Integer.parseInt(request.getParameter("jobNo"));
			dto.setJobNo(jobNo);
			request.setAttribute("jobNo", jobNo);
			
		}
		if(request.getParameterValues("area") != null) {
			
			/* 지역은 복수로 선택이 가능하고 ex)전라/광주의 형태로 값이 넘어오기 때문에 배열로 값을 받고 배열에 저장된 값을 향상된 for문을 통해서 꺼낸다. 
			 * 꺼낼때 split을 통해서 값을 잘라주고 그 값을 areaList에 저장한다. */
			String[] areas = request.getParameterValues("area");
			List<String> areaList = new ArrayList<>();
			for(String a : areas) {
				String area[] = a.split("/");
				for(String b : area) {
					areaList.add(b);
				}
			}
			dto.setAreaList(areaList);
			request.setAttribute("areaList", areaList);
		}
		
		String currentPage = request.getParameter("currentPage");
		int pageNo = 1;
		
		if(currentPage != null && !"".equals(currentPage)) {
			pageNo = Integer.parseInt(currentPage);
		}
		
		/* 0보다 작은 숫자값을 입력해도 1페이지를 보여준다 */
		if(pageNo <= 0) {
			pageNo = 1;
		}

		/* 전체 게시물 수가 필요하다.
		 * 데이터베이스에서 먼저 전체 게시물 수를 조회해올 것이다.
		 * 검색조건이 있는 경우 검색 조건에 맞는 전체 게시물 수를 조회한다.
		 * */
		SelectJobPostingService service = new SelectJobPostingService();
		int totalCount = service.selectJpTotalCount(dto);
				
		/* 한 페이지에 보여 줄 게시물 수 */
		int limit = 10;		//얘도 파라미터로 전달받아도 된다.
		/* 한 번에 보여질 페이징 버튼의 갯수 */
		int buttonAmount = 5;
		
		/* 페이징 처리를 위한 로직 호출 후 페이징 처리에 관한 정보를 담고 있는 인스턴스를 반환받는다. */
		
		SelectCriteria selectCriteria = Pagenation.getSelectCriteria(pageNo, totalCount, limit, buttonAmount);
		
		dto.setSelectCriteria(selectCriteria);
		
		/* 검색 조건과 페이징 조건을 dto에 담은 후에 공고에 대한 내용을 조회한다. */
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
