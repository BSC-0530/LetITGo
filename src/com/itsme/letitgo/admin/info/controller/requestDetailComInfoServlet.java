package com.itsme.letitgo.admin.info.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.itsme.letitgo.admin.info.model.dto.CoMemberAppHistoryDTO;
import com.itsme.letitgo.admin.info.model.service.RequestService;
import com.itsme.letitgo.company.info.model.dto.CompanyAddInfoDTO;

/**
 * Servlet implementation class requestDetailComInfoServlet
 */
@WebServlet("/request/detailComInfo/servlet")
public class requestDetailComInfoServlet extends HttpServlet {
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int memNo = Integer.parseInt(request.getParameter("memNo"));
		int reqNo = Integer.parseInt(request.getParameter("reqNo"));
		System.out.println("@@" + reqNo);
		System.out.println(memNo);
		
		
		RequestService service = new RequestService();
		
		CompanyAddInfoDTO orginInfo = service.adminDetailPageOrigin(memNo);
		System.out.println("확인 : " + orginInfo);
		
		CoMemberAppHistoryDTO reqInfo = service.adminDetailPageRequest(reqNo);
		System.out.println("dasdsd : " + reqInfo);
		
		
		response.setCharacterEncoding("UTF-8");
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		
		request.setAttribute("orginInfo", orginInfo);
		request.setAttribute("reqInfo", reqInfo);
		String path="/WEB-INF/views/admin/adminRequestDetailComInfo.jsp";
		request.getRequestDispatcher(path).forward(request, response);
		
		
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//수락버튼 누르면 변경해주는거 업데이트 
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
//		response.setContentType("text/html; charset=UTF-8");
		
		int memNo = Integer.parseInt(request.getParameter("reqCoMemNo"));
		String coNo = request.getParameter("reqCoNo");
		String comName = request.getParameter("reqCoComName");
		String ceoName = request.getParameter("reqCoCeoName");
		String sectors = request.getParameter("reqSecTors");
		String coStatus = request.getParameter("reqCoStatus");
		String address = request.getParameter("reqAddress");
		String phone = request.getParameter("reqCoPhone");
		String pax = request.getParameter("reqCoPax");
		String intro = request.getParameter("reqIntro");
		String site = request.getParameter("reqWebSite");
		
		System.out.println("너나오니" + memNo);
		System.out.println(coNo);
		System.out.println(comName);
		System.out.println(ceoName);
		System.out.println(sectors);
		//요청번호
		int coReqNo = Integer.parseInt(request.getParameter("coReqNo"));
		System.out.println("왜수정안대니" + coReqNo);
		
		CompanyAddInfoDTO info = new CompanyAddInfoDTO();
		info.setCoMemNo(memNo);
		info.setCoNo(coNo);
		info.setCoComName(comName);
		info.setCoCeoName(ceoName);
		info.setCoSectors(sectors);
		info.setCoStatus(coStatus);
		info.setCoAddress(address);
		info.setCoPhone(phone);
		info.setCoPax(pax);
		info.setCoIntro(intro);
		info.setWebSite(site);
		System.out.println("!@#!@#!@#!@#" + info);
		
		String path="";
		
		int result = new RequestService().adminAcceptRequestInfo(info);
		int result1 = new RequestService().adminAcceptRequestInfoKinds(coReqNo); 
		if(result > 0 && result1 > 0) {
			path="/WEB-INF/views/admin/adminRequestComInfo.jsp";
			response.sendRedirect("/let/admin/request/comInfo");
			System.out.println("성공@@@@@@");
			
		}else {
			response.sendRedirect("/let/admin/request/comInfo");
			System.out.println("실패@@@@@@");
		}
		
	}

}
