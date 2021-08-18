package com.itsme.letitgo.company.recruit.jobposting.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.itsme.letitgo.login.model.dto.MemberLoginDTO;


@WebServlet("/previewJobPosting")
public class PreviewJobPosting extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
//		HttpSession session = request.getSession();
//
//        MemberLoginDTO memberLoginDTO = (MemberLoginDTO) session.getAttribute("loginMember");
//        
//        
//        String coComName = memberLoginDTO.getCoComName();
//        System.out.println(coComName);
//        
//        String coAddress = memberLoginDTO.getCoAddress();
//        
        
   
		// parameter로 받은 값들을 DB로 전달하기 위해 getParameter로 꺼내 DTO의 필드에 값을 저장하는 과정
		// coMemNo 는 session에 담긴 회원 번호를 가져와야 한다
		request.setCharacterEncoding("UTF-8");
		
		String jobPostTitle = request.getParameter("jobPostTitle");
		String[] getSkills = request.getParameterValues("selectSkills");
		
		ArrayList<Integer> skillsList = new ArrayList<>();
		
		for(String i: getSkills) {
			skillsList.add(Integer.parseInt(i));
			System.out.println("i" + Integer.parseInt(i));
		}
		
		System.out.println(skillsList);
		
		
		
	}

}
