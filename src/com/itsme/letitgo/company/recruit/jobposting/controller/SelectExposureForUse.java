package com.itsme.letitgo.company.recruit.jobposting.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.itsme.letitgo.company.recruit.jobposting.model.dto.ExposureProductDTO;
import com.itsme.letitgo.company.recruit.jobposting.model.service.SelectCoMyJobPostingService;
import com.itsme.letitgo.login.model.dto.MemberLoginDTO;


@WebServlet("/exposureForuse/select")
public class SelectExposureForUse extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		/* 세션에서 로그인된 회원의 번호 꺼내오기 */
		HttpSession session = request.getSession();

        MemberLoginDTO dto = (MemberLoginDTO) session.getAttribute("loginMember");
        
        int memNo = dto.getMemNo();
		
		int jobPostNo = Integer.parseInt(request.getParameter("jobPostNo"));
		
		request.setAttribute("jobPostNo", jobPostNo);
		
		
		/* 노출권 잔여시간 조회 */
		
		SelectCoMyJobPostingService service = new SelectCoMyJobPostingService();
		
		/* 노출권 잔여시간 조회 */
		List<ExposureProductDTO> exposureProduct = service.selectExposureProduct(memNo);
		
		System.out.println(memNo);
		
		int exposureLeftTime = 0;
		for(int i = 0; i < exposureProduct.size(); i++) {
			exposureLeftTime += exposureProduct.get(i).getExposureTime();
		}
		
		Integer exposureRestHour = null;
		Integer exposureRestMinute = null;
		
		if(exposureLeftTime != 0) {
			
			exposureRestHour = exposureLeftTime / 60 / 60;
			exposureRestMinute = (exposureRestHour % 100) / 100 * 60;
			request.setAttribute("exposureRestHour", exposureRestHour);
			request.setAttribute("exposureRestMinute", exposureRestMinute);
			
		} else {
			
			exposureRestHour = 0;
			exposureRestMinute = 0;
			request.setAttribute("exposureRestHour", exposureRestHour);
			request.setAttribute("exposureRestMinute", exposureRestMinute);			
		}
		
		request.setAttribute("exposureProduct", exposureProduct);
		
		String path = "/WEB-INF/views/recruit/selectExposureForUse.jsp";
		
		request.getRequestDispatcher(path).forward(request, response);
		
		
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		System.out.println(request.getAttribute("productNo"));
		System.out.println(request.getAttribute("jobPostNo"));
	}

}
