package com.itsme.letitgo.company.scout.controller;

import java.io.IOException;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.itsme.letitgo.company.scout.model.dto.CandidateRegistrationDTO;
import com.itsme.letitgo.company.scout.model.dto.ResumeReadingHistoryDTO;
import com.itsme.letitgo.company.scout.model.service.MainScoutListService;
import com.itsme.letitgo.login.model.dto.MemberLoginDTO;
import com.itsme.letitgo.personal.scout.model.dto.ScoutDetailResumeDTO;

@WebServlet("/company/scout/wish/insert")
public class CompanyAddWishListServlet extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		HttpSession session = request.getSession();
        MemberLoginDTO dto1 = (MemberLoginDTO) session.getAttribute("loginMember");
        int memNo = dto1.getMemNo();
		
		int resumeNo = Integer.parseInt(request.getParameter("resumeNo"));
		String inputPage = request.getParameter("inputPage");
		
		int onClickResumeNo = Integer.parseInt(request.getParameter("resumeNo"));
		
		MainScoutListService browseInfoService = new MainScoutListService();
		Map<String, Object> browseInfo = browseInfoService.browseSelectInfo(onClickResumeNo);
		List<ResumeReadingHistoryDTO> kinds = browseInfoService.brosweHistoryKindsSelect(onClickResumeNo);
		
		
		CandidateRegistrationDTO dto = new CandidateRegistrationDTO();
		dto.setCoMemNo(memNo);
		dto.setResumeNo(resumeNo);
		//찜인서트
		int result = new MainScoutListService().insertWishList(dto);
		
		
		String path = "";
		if(result > 0 && inputPage.equals("simple")) {
	//		-------- 얕은열람용
			System.out.println("============== simple ============");
			Map<String, Object> detailResume = new MainScoutListService().selectDetailResume(resumeNo);
//			path = "/WEB-INF/views/scout/scoutSimpleBrowse.jsp";
			path ="/company/scout/wish/select";
			request.setAttribute("resumeNo", resumeNo);
			request.setAttribute("browseName", browseInfo.get("browseName"));
			request.setAttribute("jobName", browseInfo.get("jobName"));
			request.setAttribute("browseSkills", browseInfo.get("browseSkills"));
			request.setAttribute("careeaNumber", browseInfo.get("careeaNumber"));
			request.setAttribute("number", browseInfo.get("number"));
			request.setCharacterEncoding("UTF-8");
			request.getRequestDispatcher(path).forward(request, response);
			
			
		} else if(result > 0 && inputPage.equals("detail") ) {
	//		-------- 깊은열람용
			path = "/WEB-INF/views/scout/scoutDetailResume.jsp";
			Map<String, Object> detailMap = new MainScoutListService().selectDetailResume(resumeNo);
			request.setAttribute("detailResume", detailMap.get("detailResume"));
			request.setAttribute("detailCareer", detailMap.get("detailCareer"));
			request.setAttribute("detailSkills", detailMap.get("detailSkills"));
			request.setAttribute("detailIntroContent", detailMap.get("detailIntroContent"));
			request.setAttribute("detailAward", detailMap.get("detailAward"));
			request.setAttribute("detailEdu", detailMap.get("detailEdu"));
			request.setAttribute("detailLicense", detailMap.get("detailLicense"));
			request.setAttribute("detailJobField", detailMap.get("detailJobField"));
			request.setAttribute("detailPot", detailMap.get("detailPot"));
			request.setCharacterEncoding("UTF-8");
			request.getRequestDispatcher(path).forward(request, response);
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

}
