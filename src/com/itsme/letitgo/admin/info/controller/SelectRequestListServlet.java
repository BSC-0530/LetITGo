package com.itsme.letitgo.admin.info.controller;

import java.io.IOException;
import java.sql.Date;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.itsme.letitgo.admin.info.model.dto.InsertRequestDTO;
import com.itsme.letitgo.admin.info.model.service.RequestService;


@WebServlet("/info/requestList")
public class SelectRequestListServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		List<InsertRequestDTO> insertRequestDTO = new RequestService().selectedInfoJoin();
		
		int coReqNo = insertRequestDTO.get(0).getCoReqNo();
		int coMemNo = insertRequestDTO.get(0).getCoMemNo();
		String coAnsKinds = insertRequestDTO.get(0).getCoAnsKinds();
		Date coReqDate = insertRequestDTO.get(0).getCoReqDate();
		Date coAnsDate = insertRequestDTO.get(0).getCoAnsDate();
		String coReqKinds = insertRequestDTO.get(0).getCoReqKinds();
		String coRejectReason = insertRequestDTO.get(0).getCoRejectReason();
		
		request.setAttribute("CoReqNo", coReqNo);
		request.setAttribute("coMemNo", coMemNo);
		request.setAttribute("coAnsKinds", coAnsKinds);
		request.setAttribute("coReqDate", coReqDate);
		request.setAttribute("coAnsDate", coAnsDate);
		request.setAttribute("coReqKinds", coReqKinds);
		request.setAttribute("coRejectReason", coRejectReason);
		
		String path ="";
		request.getRequestDispatcher(path).forward(request, response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
	}

}
