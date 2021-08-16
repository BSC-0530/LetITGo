package com.itsme.letitgo.personal.recruit.jobposting.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.itsme.letitgo.personal.recruit.jobposting.model.dto.BookmarkDTO;
import com.itsme.letitgo.personal.recruit.jobposting.model.service.SelectJobPostingService;

@WebServlet("/jobposting/bookmark/delete")
public class DeleteBookmarkPostingServlet extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		int jobPostNo = Integer.parseInt(request.getParameter("jobPostNo"));
//		int inMemNo = Integer.parseInt(request.getParameter("inMemNo"));
		int inMemNo = 3;
		
		BookmarkDTO deleteBm = new BookmarkDTO();
		deleteBm.setInMemNo(inMemNo);
		deleteBm.setJobPostNo(jobPostNo);
		
		int result = new SelectJobPostingService().deleteBookmark(deleteBm);
		
		if(result > 0) {
			response.sendRedirect("/let/personal/bookmark/select");
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	}

}
