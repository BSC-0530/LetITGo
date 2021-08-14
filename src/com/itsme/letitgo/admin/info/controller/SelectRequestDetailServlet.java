package com.itsme.letitgo.admin.info.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.itsme.letitgo.admin.info.model.dto.InsertRequestDTO;
import com.itsme.letitgo.admin.info.model.service.RequestService;

@WebServlet("/info/detail")
public class SelectRequestDetailServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");
		
		InsertRequestDTO insertRequestDTO = new InsertRequestDTO();
		
		insertRequestDTO.getCoReqNo();
		insertRequestDTO.getCoMemNo();
		insertRequestDTO.getCoAnsKinds();
		insertRequestDTO.getCoAnsDate();
		insertRequestDTO.getCoReqDate();
		insertRequestDTO.getCoReqKinds();
		insertRequestDTO.getCoRejectReason();
		
		int result = RequestService.detailInfo(insertRequestDTO);
		
		if(result > 0) {
			
		}else {
			
		}
		
	}


}
