package com.itsme.letitgo.admin.resume.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.itsme.letitgo.admin.resume.model.dto.SkillsCategoryDTO;
import com.itsme.letitgo.admin.resume.service.SkillsCategoryService;

@WebServlet("/skillscategoryinsert")
public class SkillsCategoryInsertServlet extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String path = "경로 지정해주기";
		
		request.getRequestDispatcher(path).forward(request, response);
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");
		
		String name = request.getParameter("name");
		String upperNo = request.getParameter("upperNo");
		
		SkillsCategoryDTO requestSkillsCategory = new SkillsCategoryDTO();
		requestSkillsCategory.setName(name);
		requestSkillsCategory.setUpperNo(upperNo);
		
		//requestSkillsCategory 확인
		System.out.println("skillsCategoryController requestSkillsCategory : " + requestSkillsCategory);
		
		int result = new SkillsCategoryService().skillsCategoryInsert(requestSkillsCategory);
		
		System.out.println("skillsCategoryController result : " + result);
		
		String path = "";
		
		if(result > 0) {
			path = "성공했을때 경로";
			request.setAttribute("성공코드", "skillsCategoryInsert"); //<- skillsCategoryInsert는 DAO쪽, 그럼 mapper쪽으로
		} else {
			path = "실패했을때 경로";
			request.setAttribute("실패코드", "기술 카테고리 등록에 실패하셨습니다.");
		}
		
		request.getRequestDispatcher(path).forward(request, response);
		
	}

}







