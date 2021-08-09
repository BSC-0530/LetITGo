package com.itsme.letitgo.login.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.itsme.letitgo.personal.regist.model.mapper.MemberMapper;

public class coNumberCheckCommand implements Command{

	@Override
	public String proRequest(HttpServletRequest request, HttpServletResponse response) throws Exception{
		
		String coNum =request.getParameter("coNum");
		logger.info(logMsg + coNum);
		
		int check = MemberMapper.getInstance().idCheck(coNum);
		logger.info(logMsg + coNum);
		
		request.setAttribute("check", check);
		request.setAttribute("coNum", coNum);
		
		return "/WEB-INF/views/common/coNumberCheck.jsp";
	}
	
}
