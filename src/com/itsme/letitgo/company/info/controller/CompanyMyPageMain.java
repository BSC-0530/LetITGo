package com.itsme.letitgo.company.info.controller;

import java.io.IOException;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.itsme.letitgo.company.payment.model.dto.ExposureLeftTimeDTO;
import com.itsme.letitgo.company.payment.model.dto.ReadingLeftNumDTO;
import com.itsme.letitgo.company.payment.model.service.SelectPaymentHistoryService;
import com.itsme.letitgo.company.recruit.jobposting.model.dto.SelectCoMyJobPostingDTO;
import com.itsme.letitgo.company.recruit.jobposting.model.service.SelectCoMyJobPostingService;
import com.itsme.letitgo.company.scout.model.service.MainScoutListService;
import com.itsme.letitgo.login.model.dto.MemberLoginDTO;


@WebServlet("/company/myPage/main")
public class CompanyMyPageMain extends HttpServlet {
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		SelectPaymentHistoryService selectPaymentHistoryService = new SelectPaymentHistoryService();
		MainScoutListService mainScoutListService = new MainScoutListService();
		
		/* 세션에서 로그인된 회원의 번호 꺼내오기 */
		HttpSession session = request.getSession();
        MemberLoginDTO dto = (MemberLoginDTO) session.getAttribute("loginMember");
        int memNo = dto.getMemNo();
        
		
		/* 보유중인 이력서열람권 조회 */
		List<ReadingLeftNumDTO> BrowsingNum = selectPaymentHistoryService.selectResumeBrowsingNum(memNo);					
		int resumeBrowsingNum = 0;		
		for(int i = 0; i < BrowsingNum.size(); i++) {
			resumeBrowsingNum += BrowsingNum.get(i).getReadingLeftNum();
		}
		
		/* 노출권 사용중인 공고 조회 */
		int exposureUsingPostNum = selectPaymentHistoryService.selectExposureUsingPostNum(memNo);	
		
		/* 노출권 잔여시간 조회 */
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
		//스카우트열람조회
		int simpleOpen = mainScoutListService.selectAllCountSimpeOpen(memNo);
		int deepOpen = mainScoutListService.selectAllCountDeepOpen(memNo);
		int scoutNum = mainScoutListService.selectAllScountNum(memNo);
		System.out.println("@@@@@@@@@@@@@@@@@@@@@@@@");
		System.out.println(simpleOpen);
		System.out.println(deepOpen);
		
		SelectCoMyJobPostingService selectCoMyJobPostingService = new SelectCoMyJobPostingService();

		// getSession에서 comMemNo 값 가져와서 이용 DTO에 담아서 전달해 coMemNo에 맞는 공고 조회
		SelectCoMyJobPostingDTO selectCoMyJobPostingDTO = new SelectCoMyJobPostingDTO();
		selectCoMyJobPostingDTO.setCoMemNo(memNo);
		
		Map<String, List<Object>> jp = selectCoMyJobPostingService.selectMyJobPosting(selectCoMyJobPostingDTO);
		
		
		request.setAttribute("allJobPosting", jp.get("allJobPosting"));
		request.setAttribute("recruitingJopPosting", jp.get("recruitingJopPosting"));
		request.setAttribute("requestJobPosting", jp.get("requestJobPosting"));
		
		
		request.setAttribute("simpleOpen", simpleOpen);
		request.setAttribute("deepOpen", deepOpen);
		request.setAttribute("scoutNum", scoutNum);
		
		request.setAttribute("resumeBrowsingNum", resumeBrowsingNum);
		request.setAttribute("exposureUsingPostNum", exposureUsingPostNum);
		
		String path = "";
		path = "/WEB-INF/views/member/company/companyMyPageMain.jsp";
		request.getRequestDispatcher(path).forward(request, response);
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

}
