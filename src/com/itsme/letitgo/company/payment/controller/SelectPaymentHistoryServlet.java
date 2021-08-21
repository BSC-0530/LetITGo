package com.itsme.letitgo.company.payment.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.itsme.letitgo.company.payment.model.dto.BrowseUsingHistoryDTO;
import com.itsme.letitgo.company.payment.model.dto.ExposureLeftTimeDTO;
import com.itsme.letitgo.company.payment.model.dto.ExposureUsingHistoryDTO;
import com.itsme.letitgo.company.payment.model.dto.HoldingRequestingSkillsDTO;
import com.itsme.letitgo.company.payment.model.dto.PaymentHistoryDTO;
import com.itsme.letitgo.company.payment.model.dto.ReadingLeftNumDTO;
import com.itsme.letitgo.company.payment.model.service.SelectPaymentHistoryService;
import com.itsme.letitgo.login.model.dto.MemberLoginDTO;

/* Home -> 기업 마이페이지 -> 결제내역 */
@WebServlet("/company/paymentHistory/select")
public class SelectPaymentHistoryServlet extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		SelectPaymentHistoryService selectPaymentHistoryService = new SelectPaymentHistoryService();
		
		/* 세션에서 로그인된 회원의 번호 꺼내오기 */
		HttpSession session = request.getSession();
        MemberLoginDTO dto = (MemberLoginDTO) session.getAttribute("loginMember");
        int memNo = dto.getMemNo();
        
        /* 결제내역 조회 */
		List<PaymentHistoryDTO> paymentHistoryList = selectPaymentHistoryService.selectPaymentHistory(memNo);		
		
		/* 보유중인 이력서열람권 조회 */
		List<ReadingLeftNumDTO> BrowsingNum = selectPaymentHistoryService.selectResumeBrowsingNum(memNo);					
		int resumeBrowsingNum = 0;		
		for(int i = 0; i < BrowsingNum.size(); i++) {
			resumeBrowsingNum += BrowsingNum.get(i).getReadingLeftNum();
		}
		
		/* 노출권 사용중인 공고 조회 */
		int exposureUsingPostNum = selectPaymentHistoryService.selectExposureUsingPostNum(memNo);	
	
		/* 노출권 잔여시간 조회 */
		List<ExposureLeftTimeDTO> exposureRestTime = selectPaymentHistoryService.selectExposureRestTime(memNo);	
		
		int exposureLeftTime = 0;
		for(int i = 0; i < exposureRestTime.size(); i++) {
			exposureLeftTime += exposureRestTime.get(i).getExposureTime();
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
			
		/* 열람권 사용내역 조회 */
		List<BrowseUsingHistoryDTO> paymentBrowseUsingHistroyList = selectPaymentHistoryService.selectBrowseUsingHistroy(memNo);
		
		/* 이력서 내 모든 보유기술 조회*/
		List<HoldingRequestingSkillsDTO> paymentHoldingSkillsList = selectPaymentHistoryService.selectHoldingSkills();
		
		/* 노출권 사용이력 */
		List<ExposureUsingHistoryDTO> paymentExposureUsingHistoryList = selectPaymentHistoryService.selectExposureUsingHistory(memNo);
		
		/* 노촐권 사용중인 공고의 요구기술 */
		List<HoldingRequestingSkillsDTO> paymentrequestingSkillsList = selectPaymentHistoryService.selectRequestingSkills();
			
		String path = "/WEB-INF/views/payment/paymentHistory.jsp";
		
		request.setAttribute("paymentHistoryList", paymentHistoryList);
		request.setAttribute("resumeBrowsingNum", resumeBrowsingNum);
		request.setAttribute("exposureUsingPostNum", exposureUsingPostNum);
		request.setAttribute("paymentBrowseUsingHistroyList", paymentBrowseUsingHistroyList);
		request.setAttribute("paymentHoldingSkillsList", paymentHoldingSkillsList);
		request.setAttribute("paymentExposureUsingHistoryList", paymentExposureUsingHistoryList);
		request.setAttribute("paymentrequestingSkillsList", paymentrequestingSkillsList);
		request.getRequestDispatcher(path).forward(request, response);
	}


}
