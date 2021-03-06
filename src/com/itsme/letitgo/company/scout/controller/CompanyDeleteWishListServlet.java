package com.itsme.letitgo.company.scout.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.itsme.letitgo.company.scout.model.service.MainScoutListService;

@WebServlet("/company/scout/wish/delete")
public class CompanyDeleteWishListServlet extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		int resumeNo = Integer.parseInt(request.getParameter("resumeNo"));
		
		int result = new MainScoutListService().deleteWishList(resumeNo);
		
		if(result > 0) {
			response.sendRedirect("/let/company/scout/wish/select");
		}
	}

}
