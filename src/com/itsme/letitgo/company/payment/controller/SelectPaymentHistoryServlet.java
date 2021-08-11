package com.itsme.letitgo.company.payment.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.itsme.letitgo.company.payment.model.dto.BrowseUsingHistoryDTO;
import com.itsme.letitgo.company.payment.model.dto.ExposureUsingHistoryDTO;
import com.itsme.letitgo.company.payment.model.dto.HoldingRequestingSkillsDTO;
import com.itsme.letitgo.company.payment.model.dto.PaymentHistoryDTO;
import com.itsme.letitgo.company.payment.model.service.SelectPaymentHistoryService;


@WebServlet("/company/paymentHistory/select")
public class SelectPaymentHistoryServlet extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		SelectPaymentHistoryService selectPaymentHistoryService = new SelectPaymentHistoryService();
		
		/* 결제내역 */
		List<PaymentHistoryDTO> paymentHistoryList = selectPaymentHistoryService.SelectPaymentHistory();		
		
		/* 열람권 남은 갯수 */
		int resumeBrowsingNum = selectPaymentHistoryService.SelectResumeBrowsingNum();		
		
		/* 노출중인 공고갯수 */
		int exposureUsingPostNum = selectPaymentHistoryService.SelectExposureUsingPostNum();	
		
		/* 노출권 남은 시간 */
		long exposureRestTime = selectPaymentHistoryService.SelectExposureRestTime();	
		long exposureRestHour = exposureRestTime / 1000 / 60 / 60;
		long exposureRestMinute = exposureRestHour % 60;
		
		/* 열람권 사용이력 */
		List<BrowseUsingHistoryDTO> paymentBrowseUsingHistroyList = selectPaymentHistoryService.SelectBrowseUsingHistroy();
		
		/* 이력서 내 보유기술*/
		List<HoldingRequestingSkillsDTO> paymentHoldingSkillsList = selectPaymentHistoryService.SelectHoldingSkills();
		
		/* 노출권 사용이력 */
		List<ExposureUsingHistoryDTO> paymentExposureUsingHistoryList = selectPaymentHistoryService.SelectExposureUsingHistory();
		
		/* 노촐권 사용중인 공고의 요구기술 */
		List<HoldingRequestingSkillsDTO> paymentrequestingSkillsList = selectPaymentHistoryService.SelectRequestingSkills();
		
		for(PaymentHistoryDTO paymentHistory : paymentHistoryList) {
			System.out.println(paymentHistory);
		}
		System.out.println(resumeBrowsingNum);
		System.out.println(exposureUsingPostNum);
		System.out.println(exposureRestTime);
		System.out.println(exposureRestHour);
		System.out.println(exposureRestMinute);
		
		for(BrowseUsingHistoryDTO BrowseUsingHistroy : paymentBrowseUsingHistroyList) {
			System.out.println(BrowseUsingHistroy);
		}
		
		for(HoldingRequestingSkillsDTO HoldingRequestingSkills : paymentHoldingSkillsList) {
			System.out.println(HoldingRequestingSkills);
		}
		
		for(ExposureUsingHistoryDTO paymentExposureUsingHistory : paymentExposureUsingHistoryList) {
			System.out.println(paymentExposureUsingHistory);
		}
		
		for(HoldingRequestingSkillsDTO paymentrequestingSkills : paymentrequestingSkillsList) {
			System.out.println(paymentrequestingSkills);
		}
		
		String path = "/WEB-INF/views/payment/paymentHistory.jsp";
		
		request.setAttribute("paymentHistoryList", paymentHistoryList);
		request.setAttribute("resumeBrowsingNum", resumeBrowsingNum);
		request.setAttribute("exposureUsingPostNum", exposureUsingPostNum);
		request.setAttribute("exposureRestHour", exposureRestMinute);
		request.setAttribute("exposureRestMinute", exposureRestMinute);
		request.setAttribute("paymentBrowseUsingHistroyList", paymentBrowseUsingHistroyList);
		request.setAttribute("paymentHoldingSkillsList", paymentHoldingSkillsList);
		request.setAttribute("paymentExposureUsingHistoryList", paymentExposureUsingHistoryList);
		request.setAttribute("paymentrequestingSkillsList", paymentrequestingSkillsList);
		request.getRequestDispatcher(path).forward(request, response);
	}


}
