package com.itsme.letitgo.company.recruit.jobposting.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Date;
import java.text.SimpleDateFormat;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.itsme.letitgo.company.recruit.jobposting.model.dto.ExposureProductDTO;
import com.itsme.letitgo.company.recruit.jobposting.model.dto.UseExposureProductDTO;
import com.itsme.letitgo.company.recruit.jobposting.model.service.SelectCoMyJobPostingService;
import com.itsme.letitgo.login.model.dto.MemberLoginDTO;


@WebServlet("/exposureForuse/select")
public class SelectExposureForUseServlet extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		/* 세션에서 로그인된 회원의 번호 꺼내오기 */
		HttpSession session = request.getSession();

        MemberLoginDTO dto = (MemberLoginDTO) session.getAttribute("loginMember");
        int memNo = dto.getMemNo();
		int jobPostNo = Integer.parseInt(request.getParameter("jobPostNo"));
		request.setAttribute("jobPostNo", jobPostNo);
		
		SelectCoMyJobPostingService service = new SelectCoMyJobPostingService();
		
		/* 노출권 잔여시간 조회 */
		List<ExposureProductDTO> exposureProduct = service.selectExposureProduct(memNo);
		
		request.setAttribute("exposureProduct", exposureProduct);
		
		String path = "/WEB-INF/views/recruit/selectExposureForUse.jsp";
		
		request.getRequestDispatcher(path).forward(request, response);
		
		
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		/* 세션에서 로그인된 회원의 번호 꺼내오기 */
		HttpSession session = request.getSession();

        MemberLoginDTO loginDTO = (MemberLoginDTO) session.getAttribute("loginMember");
        
        int memNo = loginDTO.getMemNo();
        int jobPostNo = Integer.parseInt(request.getParameter("jobPostNo"));
        
		UseExposureProductDTO dto = new UseExposureProductDTO();
		dto.setCoMemNo(memNo);
		dto.setJobPostNo(jobPostNo);
		dto.setRetainedProductCode(Integer.parseInt(request.getParameter("retainedProductCode")));
		dto.setExposureEndDate(java.sql.Date.valueOf(request.getParameter("exposureEndDate")));
		
		/* 
		 * 상품 번호를 이용해서 시간만큼 차감을 해야한다.
		 * 입력한 정보 초단위로 변환
		 * */
		Date date_now = new Date(System.currentTimeMillis());
		Date endDate = java.sql.Date.valueOf(request.getParameter("exposureEndDate"));
		int usingTime = (int) ((endDate.getTime() - date_now.getTime()) / 1000);	
		
		/* db에서 보유중인 상품 시간 가져오기 */
		SelectCoMyJobPostingService service = new SelectCoMyJobPostingService();
		Integer restTime = service.selectExposureRestTime(dto);
		
		StringBuilder redirectText = new StringBuilder();
		
		/* 보유시간에서 사용시간을 뺴서 음수가 나올경우 보유시간이 부족 따라서 사용 실패*/
		if(restTime - usingTime > 0) {
			
			/* 
			 * 공고권 사용 내역을 조회해서 이전에 사용한 이력이 있을 시 시작시간과 끝나는 시간을 update해준다. 
			 * 이전 사용한 이력이 없다면 isnert해준다.
			 * */
			boolean checkResult = service.selectExposureHistory(dto);
			
			int resultTime = restTime - usingTime;
			dto.setResultTime(resultTime);
			
			/* 사용이력이 있기 때문에 update*/
			if(checkResult) {
				int updateResult = service.updateExposureUsageHistory(dto);
				boolean result = service.updateMemberHoldingProduct(dto);
				
				if(updateResult > 0 && result) {
					redirectText.append("<script>alert('공고 노출권 이용을 완료했습니다..'); opener.parent.location.reload(); window.close();</script>");
				}
			} else {
				int insertResult = service.insertExposureUsageHistory(dto);
				boolean result = service.updateMemberHoldingProduct(dto);
				
				if(insertResult > 0 && result) {
					redirectText.append("<script>alert('공고 노출권 이용을 완료했습니다..'); opener.parent.location.reload(); window.close();</script>");					
				}
			}
		} else {
			redirectText.append("<script>alert('보유중인 상품의 시간이 부족합니다.'); location.href='/let/exposureForuse/select?jobPostNo=" + jobPostNo + "';</script>");
		}
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();
		
		out.print(redirectText.toString());
		out.flush();
		out.close();

	}

}
