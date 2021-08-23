package com.itsme.letitgo.personal.recruit.jobposting.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.itsme.letitgo.login.model.dto.MemberLoginDTO;
import com.itsme.letitgo.personal.recruit.jobposting.model.dto.BookmarkDTO;
import com.itsme.letitgo.personal.recruit.jobposting.model.dto.SelectApplyingYnDTO;
import com.itsme.letitgo.personal.recruit.jobposting.model.service.SelectJobPostingService;

@WebServlet("/jobposting/bookmark/insert")
public class InsertBookmarkPostingServlet extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int jobPostNo = Integer.parseInt(request.getParameter("jobPostNo"));
		HttpSession session = request.getSession();
		
		MemberLoginDTO comDTO1 = (MemberLoginDTO) session.getAttribute("loginMember");
		//로그인된 멤버 번호
		int inMemNo = comDTO1.getMemNo();
		
		BookmarkDTO bm = new BookmarkDTO();
		bm.setInMemNo(inMemNo);
		bm.setJobPostNo(jobPostNo);
		
		SelectJobPostingService selectJobPostingService = new SelectJobPostingService();
		
		int result = selectJobPostingService.insertBookmark(bm);
		Map<String, Object> jp = selectJobPostingService.selectDetailedJobPosting(jobPostNo);
		
		request.setAttribute("detailedJobPosting", jp.get("detailedJobPosting"));
		request.setAttribute("deteildeJpSkills", jp.get("deteildeJpSkills"));
		
		StringBuilder redirectText = new StringBuilder();
		
		if(result > 0) {
			
			redirectText.append("<script>alert('북마크를 성공적으로 등록했습니다.');</script>");
			
			response.setContentType("text/html; charset=UTF-8");
			PrintWriter out = response.getWriter();
			
			out.print(redirectText.toString());
			out.flush();
			
		} else {
			
			redirectText.append("<script>alert('북마크 등록에 실패했습니다.');</script>");
			
			response.setContentType("text/html; charset=UTF-8");
			PrintWriter out = response.getWriter();
			
			out.print(redirectText.toString());
			out.flush();
			
		}
		
		request.getRequestDispatcher("/WEB-INF/views/recruit/detailedJobPosting.jsp").include(request, response);
	}

}
