<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="Scripts/bootstrap.min.js"></script>
<link rel="stylesheet" type="text/css"
	href="${ pageContext.servletContext.contextPath }/resources/css/bootstrap.css" />
<link rel="stylesheet" type="text/css"
	href="${ pageContext.servletContext.contextPath }/resources/css/animate.css" />
<link rel="stylesheet" type="text/css"
	href="${ pageContext.servletContext.contextPath }/resources/css/font-awesome.css" />
<link rel="stylesheet" type="text/css"
	href="${ pageContext.servletContext.contextPath }/resources/css/fonts.css" />
<link rel="stylesheet" type="text/css"
	href="${ pageContext.servletContext.contextPath }/resources/css/reset.css" />
<link rel="stylesheet" type="text/css"
	href="${ pageContext.servletContext.contextPath }/resources/css/owl.carousel.css" />
<link rel="stylesheet" type="text/css"
	href="${ pageContext.servletContext.contextPath }/resources/css/owl.theme.default.css" />
<link rel="stylesheet" type="text/css"
	href="${ pageContext.servletContext.contextPath }/resources/css/flaticon.css" />
<link rel="stylesheet" type="text/css"
	href="${ pageContext.servletContext.contextPath }/resources/css/style.css" />
<link rel="stylesheet" type="text/css"
	href="${ pageContext.servletContext.contextPath }/resources/css/style_II.css" />
<link rel="stylesheet" type="text/css"
	href="${ pageContext.servletContext.contextPath }/resources/css/responsive.css" />
<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
</head>
<body>
<!-- 	<body> -->


		<jsp:include page="../common/header/companyHeader.jsp" />
	<div class="jp_tittle_main_wrapper">
		<div class="jp_tittle_img_overlay"></div>
		<div class="container">
			<div class="row">
				<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
					<div class="jp_tittle_heading_wrapper">
						<div class="jp_tittle_heading">
							<h2>상세 이력서</h2>
						</div>
						<div class="jp_tittle_breadcrumb_main_wrapper">
							<div class="jp_tittle_breadcrumb_wrapper">
								<ul>
									<li><a href="${ pageContext.servletContext.contextPath }/mainPage/CoMember">Home</a></li>
                                    <li>></li>
                                    <li><a href="${ pageContext.servletContext.contextPath }/main/Scout/List">얕은 열람</a></li>
                                    <li>></li>
                                    <li><a href="">깊은 열람</a></li>
                                    
								</ul>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>


		<div class="jp_cp_profile_main_wrapper">
			<div class="container">
				<div class="row">
					<div class="col-lg-4 col-md-4 col-sm-12 col-xs-12">
						<div class="jp_cp_left_side_wrapper">
							<div class="jp_cp_left_pro_wallpaper">
							<c:if test="${  requestScope.detailResume[0].path ne null}">
								<img src="${ pageContext.servletContext.contextPath }${ requestScope.detailResume[0].path }" style="width:350px; height: 400px; alt="profile_img">
						  </c:if>
						   <c:if test="${ requestScope.detailResume[0].path eq null }">	
						     <img src="${ pageContext.servletContext.contextPath }/resources/image/basic.png" alt="profile_img" style="width:350px; height: 400px;">
                            </c:if>
									<h2>${ detailList[0].memName }</h2>						
									
								

							</div>
							<div class="jp_cp_rd_wrapper">
							
								<ul>
									<li>
										<a onclick="interview(this);">
											<input id="interviewMemNo" type="hidden" value="${ requestScope.detailResume[0].resume[0].inMemNo }">
											<i class="fa fa-download"></i>
											&nbsp;면접 제안
										</a>
									</li>
									
									<li>
										<a onClick="addWish(this);">
											<input id="addWishList" type="hidden" value="${ requestScope.detailResume[0].resume[0].resumeNo }"><i class="fa fa-phone"></i>
											&nbsp;후보자 찜하기
										</a>
									</li>
								</ul>
								
							</div>
						</div>
					</div>
					<div class="col-lg-8 col-md-8 col-sm-12 col-xs-12">
						<div class="jp_cp_right_side_wrapper">
							<div class="jp_cp_right_side_inner_wrapper">
								<h2>인재 소개란</h2>
								<table>
									<tbody>
										<tr>
											<td class="td-w25">이름</td>
											<td class="td-w10">:</td>
											
											<td class="td-w65">${ requestScope.detailResume[0].memName }</td>
											
										</tr>
										<tr>
											<td class="td-w25">보유기술</td>
											<td class="td-w10">:</td>
											<c:forEach items="${ requestScope.detailSkills }" var="detailSkills" varStatus="status">
												<td class="td-w65">
													${ detailSkills.skillsName }
												</td>
											</c:forEach>
										</tr>
										<tr>
											<td class="td-w25">직무</td>
											<td class="td-w10">:</td>
											
											<td class="td-w65">${ requestScope.detailJobField[0].jobName }</td>
											
										</tr>
										<tr>
											<td class="td-w25">경력</td>
											<td class="td-w10">:</td>
											<c:forEach items="${ requestScope.detailCareer }" var="detail" varStatus="status">
												<td class="td-w65">
													${ detail.carHireDate } ~ ${ detail.carEntDate }
												</td>
											</c:forEach>
										</tr>

									</tbody>
								</table>
							</div>
						</div>
						<div class="row">
							<div class="col-lg-12 col-md-12 col-xs-12 col-sm-12">
								<div class="jp_cp_accor_heading_wrapper">
									<h2>상세이력서</h2>
									<p>아래의 메뉴에서 상세한 이력서를 조회하세요.</p>
								</div>
							</div>
							<div class="col-lg-12 col-md-12 col-xs-12 col-sm-12">
								<div class="accordion_wrapper abt_page_2_wrapper">
									<div class="panel-group" id="accordion_threeLeft">


										<!-- /.panel-default -->
										<div class="panel panel-default">
											<div class="panel-heading bell">
												<h4 class="panel-title">
													<a class="collapsed" data-toggle="collapse"
														data-parent="#accordion_threeLeft"
														href="#collapseTwentyLeftThree" aria-expanded="false">
														포트폴리오
													</a>
												</h4>
											</div>
											<div id="collapseTwentyLeftThree"
												class="panel-collapse collapse" aria-expanded="false"
												role="tablist">
												<div class="panel-body">	
													<c:forEach items="${ requestScope.detailPot }" var="detail" varStatus="status">
																${ detail.potLinkAddress }
													</c:forEach>
												</div>
											</div>
										</div>
										<div class="panel panel-default">
											<div class="panel-heading bell">
												<h4 class="panel-title">
													<a class="collapsed" data-toggle="collapse"
														data-parent="#accordion_threeLeft"
														href="#collapseTwentyLeftThree2" aria-expanded="false">
														자기소개	
													</a>
												</h4>
											</div>
											<div id="collapseTwentyLeftThree2"
												class="panel-collapse collapse" aria-expanded="false"
												role="tablist">
												<div class="panel-body">
													<c:forEach items="${ requestScope.detailIntroContent }" var="detail" varStatus="status">
														${ detail.selfIntroItemName }<br>
														${ detail.selfIntroContent.selfIntroItemContent }<br><br>
													</c:forEach>
												</div>
											</div>
										</div>
										<div class="panel panel-default">
											<div class="panel-heading bell">
												<h4 class="panel-title">
													<a class="collapsed" data-toggle="collapse"
														data-parent="#accordion_threeLeft"
														href="#collapseTwentyLeftThree3" aria-expanded="false">														
														경력, 프로젝트 이력, 자격증, 교육, 수상 이력 	
														</a>
												</h4>
											</div>
											<div id="collapseTwentyLeftThree3"
												class="panel-collapse collapse" aria-expanded="false"
												role="tablist">
												<div class="panel-body">
													<h4><label>경력</label></h4>
													<c:forEach items="${ requestScope.detailCareer }" var="detail" varStatus="status">
														회사명 : ${ detail.carComName }<br>
														부서명 : ${ detail.carDeptName }<br>
														직책 : ${ detail.carJobName }<br>
														업무 분야 : ${ detail.carWorkField }<br>
														입사일 : ${ detail.carHireDate }<br>
														퇴사일 : ${ detail.carEntDate }<br>
														<br>
													</c:forEach>
													<h4><label>프로젝트 이력</label></h4>
													<c:forEach items="${ requestScope.detailCareer }" var="detail" varStatus="status">
														프로젝트명 : ${ detail.projectName }<br>
														프로젝트 업무 내용 : ${ detail.projectContent }<br>
														프로젝트 시작일 : ${ detail.projectStartDate }<br>
														프로젝트 종료일 : ${ detail.projectEndDate }<br>
														<br>
														
													</c:forEach>
													<h4><label>자격증</label></h4>
													<c:forEach items="${ requestScope.detailLicense }" var="detail" varStatus="status">
														자격증 명 : ${ detail.licenseName }<br>
														발행처 : ${ detail.licenseAgency }<br>
														자격증 취득일 : ${ detail.licenseDate }<br>
														<br>
													
													</c:forEach>
													<h4><label>교육 이력</label></h4>
													<c:forEach items="${ requestScope.detailEdu }" var="detail" varStatus="status">
														교육명 : ${ detail.eduName }<br>
														교육기관 : ${ detail.eduAgency }<br>
														교육 시작일 : ${ detail.eduStartDate }<br> 
														교육 종료일 : ${ detail.eduEndDate }<br>
														교육 내용 : ${ detail.eduContent }<br>
														<br>
													
													</c:forEach>
													<h4><label>수상 이력</label></h4>
													<c:forEach items="${ requestScope.detailAward }" var="detail" varStatus="status">
														수상명 : ${ detail.awdName }<br>
														수상기관 : ${ detail.awdAgency }<br>
														수상일 : ${ detail.awdDate }<br>
														수상내용 : ${ detail.awdContent }<br>
														<br>
													</c:forEach>
														
												</div>
											</div>
										</div>
										<!-- /.panel-default -->
									</div>
									<!--end of /.panel-group-->
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		
		<input id="resumeNo" type="hidden" value="${ requestScope.detailResume[0].resume[0].resumeNo }">
<%-- 	<input type="hidden" value="${ detail.scoutResume[status.index].resumeNo }"> --%>
		
		
	<!-- jp profile Wrapper End -->
	<!-- jp profile Wrapper Start -->
	
<script>		
		function interview(a) {
			
			var answer;
			answer = confirm('후보자에게 면접 제안을 하시겠습니까? \n (제안 취소는 불가능하니 신중하게 결정하세요.)');
			
			if(answer == true) {
				const memNo = a.children[0].value;
				const resumeNo = document.getElementById("resumeNo").value;
				location.href = "${ pageContext.servletContext.contextPath }/company/scout/interview?memNo=" + memNo 
										+"&resumeNo=" + resumeNo;
			}
		}
		
		function addWish(a) {
			
			var answer;
			answer = confirm('후보자를 찜하기 목록에 추가하시겠습니까?');
			
			if(answer == true) {
				const inputPage = 'detail';
				const resumeNo = document.getElementById("resumeNo").value;
				location.href = "${ pageContext.servletContext.contextPath }/company/scout/wish/insert?resumeNo=" + resumeNo 
						+ "&inputPage=" + inputPage;
			}
		}
</script>		

	
	<script type="text/javascript" src="/let/resources/js/jquery_min.js"></script>
    <script type="text/javascript" src="/let/resources/js/bootstrap.js"></script>
    <script type="text/javascript" src="/let/resources/js/jquery.menu-aim.js"></script>
    <script type="text/javascript" src="/let/resources/js/jquery.countTo.js"></script>
    <script type="text/javascript" src="/let/resources/js/jquery.inview.min.js"></script>
    <script type="text/javascript" src="/let/resources/js/owl.carousel.js"></script>
    <script type="text/javascript" src="/let/resources/js/modernizr.js"></script>
    <script type="text/javascript" src="/let/resources/js/jquery.magnific-popup.js"></script>
    <script type="text/javascript" src="/let/resources/js/custom_II.js"></script>


</body>
</html>