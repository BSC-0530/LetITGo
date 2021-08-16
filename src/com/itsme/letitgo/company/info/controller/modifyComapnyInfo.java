package com.itsme.letitgo.company.info.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.itsme.letitgo.company.info.model.dto.CompanyAddInfoDTO;


@WebServlet("/company/modify/info")
public class modifyComapnyInfo extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		
		CompanyAddInfoDTO coAddInfo = new CompanyAddInfoDTO();
		coAddInfo.getCoComName(); //담당자 이름
		coAddInfo.getCoPhone(); //담당자 전화번호
		coAddInfo.getCoCeoName(); //대표자 이름
		coAddInfo.getCoAddress(); //기업주소
		coAddInfo.getCoPax();	//회사 팩스
		coAddInfo.getCoSectors();	//업종
		coAddInfo.getCoStatus();	//업태
		coAddInfo.getCoIntro();
	}

}
