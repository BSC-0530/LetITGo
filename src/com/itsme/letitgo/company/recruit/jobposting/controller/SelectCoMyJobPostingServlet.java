package com.itsme.letitgo.company.recruit.jobposting.controller;

import java.io.IOException;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.itsme.letitgo.company.recruit.jobposting.model.dto.SelectCoMyJobPostingDTO;
import com.itsme.letitgo.company.recruit.jobposting.model.dto.UseExposureProductDTO;
import com.itsme.letitgo.company.recruit.jobposting.model.service.SelectCoMyJobPostingService;
import com.itsme.letitgo.login.model.dto.MemberLoginDTO;


@WebServlet("/company/jobPostingHistory/select")
public class SelectCoMyJobPostingServlet extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		HttpSession session = request.getSession();

        MemberLoginDTO memberLoginDTO = (MemberLoginDTO) session.getAttribute("loginMember");

        int memNo = memberLoginDTO.getMemNo();
        
		SelectCoMyJobPostingService service = new SelectCoMyJobPostingService();

		// getSession에서 comMemNo 값 가져와서 이용 DTO에 담아서 전달해 coMemNo에 맞는 공고 조회
		SelectCoMyJobPostingDTO selectCoMyJobPostingDTO = new SelectCoMyJobPostingDTO();
		selectCoMyJobPostingDTO.setCoMemNo(memNo);
		
		// 쿼리스트링을 통해 전달받은 공고종류가 null일경우 : 전체조회, null이 아닐경우 kinds라는 변수에 담아준다.
		if( request.getParameter("kinds") != null) {
			request.setAttribute("kinds", request.getParameter("kinds"));
		}
		
		
		Map<String, List<Object>> jp = service.selectMyJobPosting(selectCoMyJobPostingDTO);
		
		request.setAttribute("allJobPosting", jp.get("allJobPosting"));
		request.setAttribute("recruitingJopPosting", jp.get("recruitingJopPosting"));
		request.setAttribute("requestJobPosting", jp.get("requestJobPosting"));
		request.setAttribute("memNo", memNo);

		String path = "/WEB-INF/views/recruit/jobPostingHistory.jsp";
		request.getRequestDispatcher(path).forward(request, response);
		
		
		
	}



}
