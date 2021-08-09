package com.itsme.letitgo.personal.regist.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class idCheckCommand implements Command{

	@Override
	public String proRequest(HttpServletRequest request, HttpServletResponse response) throws Exception {


		String id = request.getParameter("id");
		logger.info(logMsg + id);

		int check = MemberMapper.getInstance().idCheck(id);
		logger.info(logMsg + check); 

		request.setAttribute("check", check);
		request.setAttribute("id", id);

		return "/WEB-INF/views/common/idCheck.jsp";
		
	}
}
