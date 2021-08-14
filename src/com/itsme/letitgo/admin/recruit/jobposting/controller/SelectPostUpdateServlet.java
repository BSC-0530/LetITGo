package com.itsme.letitgo.admin.recruit.jobposting.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.itsme.letitgo.admin.recruit.jobposting.model.dto.PostInsertRuqeustDTO;
import com.itsme.letitgo.admin.recruit.jobposting.model.service.SelectPostRequestService;


@WebServlet("/admin/post/updateRequest/select")
public class SelectPostUpdateServlet extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		SelectPostRequestService service = new SelectPostRequestService();

		List<PostInsertRuqeustDTO> postInsertUpdateList = service.selectPostInsertUpdate();
		
		for(PostInsertRuqeustDTO pird : postInsertUpdateList) {
			System.out.println(pird);
		}
		
		String path = "/WEB-INF/views/admin/adminPostUpdateRequest.jsp";
			
		request.setAttribute("postInsertUpdateList", postInsertUpdateList);
		request.getRequestDispatcher(path).forward(request, response);
		
	}

	
}
