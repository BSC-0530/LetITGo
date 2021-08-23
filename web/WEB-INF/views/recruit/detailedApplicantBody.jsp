<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Let IT Go</title>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script type="text/javascript" src="/let/resources/js/datatables.js"></script>
<link rel="stylesheet" type="text/css" href="/let/resources/css/datatables.css"/>

<script>
	function selectEmail(a){
		
		var memEmail = a.children[0].value;
		var mailText = "지원자의 이메일은 : " + memEmail + "입니다.";
		alert(mailText);
	}
	
	function selectPhone(a){
		
		var memPhone = a.children[0].value;
		var phoneText = "지원자의 연락처는 : " + memPhone + "입니다.";
		alert(phoneText);
	}
	
</script>
<body>

	<div class="jp_cp_profile_main_wrapper">
		<div class="container">
			<div class="row">
				<div class="col-lg-4 col-md-4 col-sm-12 col-xs-12">
					<div class="jp_cp_left_side_wrapper">
						<div class="jp_cp_left_pro_wallpaper">
							<c:if test="${ requestScope.resultResume.detailResume.memFilePath ne null}">
								<img src="${ pageContext.servletContext.contextPath }${ requestScope.resultResume.detailResume.memFilePath }" alt="profile_img" style="width:300px; height: 300px;">
							</c:if>
							<c:if test="${ requestScope.resultResume.detailResume.memFilePath eq null }">
								<img src="${ pageContext.servletContext.contextPath }/resources/image/basic.png" alt="profile_img" style="width:350px; height: 400px;">
							</c:if>
								<h2>${ detailList[0].memName }</h2>				
						</div>
						<div class="jp_cp_rd_wrapper">
							<ul>
								<li>
									<a onclick="selectEmail(this);">
										<input type="hidden" value="${ requestScope.resultResume.detailResume.memEmail }">
										<i class="fa fa-download"></i>
										&nbsp;이메일 확인
									</a>
								</li>
								
								<li>
									<a onclick="selectPhone(this);">
										<input type="hidden" value="${ requestScope.resultResume.detailResume.memPhone }">
										<i class="fa fa-phone"></i>
										&nbsp;연락처 확인
									</a>
								</li>
							</ul>
							
						</div>
					</div>
				</div>
				<div class="col-lg-8 col-md-8 col-sm-12 col-xs-12">
					<div class="jp_cp_right_side_wrapper">
						<div class="jp_cp_right_side_inner_wrapper">
							<h2>간단 소개</h2>
							<table>
								<tbody>
									<tr>
										<td>이름</td>
										<td>:</td>
										<td><c:out value="${ requestScope.resultResume.detailResume.memName }"/></td>
									</tr>
									<tr>
										<td>직무</td>
										<td>:</td>
										<td><c:out value="${ requestScope.resultResume.detailResume.jobName }"/></td>
									</tr>
									<tr>
										<td>경력</td>
										<td>:</td>
										<c:if test="${ requestScope.resultResume.careerHistoryList eq null}">
										<td><c:out value="경력"/></td>
										</c:if>
										<c:if test="${ requestScope.resultResume.careerHistoryList ne null}">
										<td><c:out value="신입"/></td>
										</c:if>
									</tr>
									<tr>
										<td>보유 스킬</td>
										<td>:</td>
										<td>
										<c:if test="${ requestScope.resultResume.resumeSkillsAndNameList.size() > 0 }">
											<c:forEach items="${ requestScope.resultResume.resumeSkillsAndNameList }" var="skills">
												<c:out value="${ skills.skillsName }"/>
											</c:forEach>
										</c:if>
										<c:if test="${ requestScope.resultResume.resumeSkillsAndNameList.size() == 0 }">
											보유 스킬이 없습니다.
										</c:if>
										</td>
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
									<div class="panel panel-default">
										<div class="panel-heading bell">
											<h4 class="panel-title">
												<a class="collapsed" data-toggle="collapse" data-parent="#accordion_threeLeft" href="#collapseTwentyLeftThree" aria-expanded="false">
													포트폴리오
												</a>
											</h4>
										</div>
										<div id="collapseTwentyLeftThree"
											class="panel-collapse collapse" aria-expanded="false"
											role="tablist">
											<div class="panel-body">	
												<c:if test="${ requestScope.resultResume.portFolioList.size() ne 0 }">
													<c:forEach items="${ requestScope.resultResume.portFolioList }" var="resume">
														<c:out value="${ resume.potLinkAddress }"/>
													</c:forEach>
												</c:if>
												<c:if test="${ requestScope.resultResume.portFolioList.size() eq 0 }">
													<label>등록된 포트폴리오가 없습니다.</label>
												</c:if>
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
												<c:if test="${ requestScope.resultResume.selfIntroductionList.size() ne 0 }">
													<c:forEach items="${ requestScope.resultResume.selfIntroductionList }" var="resume">
														<h4><c:out value="${ resume.selfIntroItemName }"/></h4>
														<c:out value="${ resume.selfIntroItemContent }"/><br><br>
													</c:forEach>
												</c:if>
												<c:if test="${ requestScope.resultResume.selfIntroductionList.size() eq 0 }">
													<label>등록된 자기소개가 없습니다.</label>
												</c:if>
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
												<c:if test="${ requestScope.resultResume.careerHistoryList.size() ne 0 }">
													<h4><label>경력</label></h4>
													<c:forEach items="${ requestScope.resultResume.careerHistoryList }" var="resume">
														회사명 : <c:out value="${ resume.carComName }"/><br>
														부서명 : <c:out value="${ resume.carDeptName }"/><br>
														직책 : <c:out value="${ resume.carJobName }"/><br>
														업무 분야  : <c:out value="${ resume.carWorkField }"/><br>
														입사일 : <c:out value="${ resume.carHireDate }"/><br>
														퇴사일 : <c:out value="${ resume.carEntDate }"/><br><br>
													</c:forEach><br>
													<h4><label>프로젝트 이력</label></h4>
													<c:forEach items="${ requestScope.resultResume.careerHistoryList }" var="resume">
														프로젝트명 : <c:out value="${ resume.projectName }"/><br>
														프로젝트 업무 내용 : <c:out value="${ resume.projectContent }"/><br>
														프로젝트 시작일 : <c:out value="${ resume.projectStartDate }"/><br>
														업무 프로젝트 종료일  : <c:out value="${ resume.projectEndDate }"/><br><br>
													</c:forEach><br>
												</c:if>
												<c:if test="${ requestScope.resultResume.careerHistoryList.size() eq 0 }">
													<label>프로젝트/경력 이력이 없습니다.</label><br>
												</c:if>
												
												
												<c:if test="${ requestScope.resultResume.licenseHistoryList.size() ne 0 }">
													<h4><label>보유 자격증</label></h4>
													<c:forEach items="${ requestScope.resultResume.licenseHistoryList }" var="resume">
														자격증 명 :<c:out value="${ resume.licenseName }"/><br>
														발행처 : <c:out value="${ resume.licenseAgency }"/><br>
														자격증 취득일 : <c:out value="${ resume.licenseDate }"/><br><br>
													</c:forEach><br>
												</c:if>
												<c:if test="${ requestScope.resultResume.licenseHistoryList.size() eq 0 }">
													<label>등록된 자격증이 없습니다.</label><br>
												</c:if>
												
												<c:if test="${ requestScope.resultResume.educationHistoryList.size() ne 0 }">
													<h4><label>교육 이력</label></h4>
													<c:forEach items="${ requestScope.resultResume.educationHistoryList }" var="resume">
														교육명 :<c:out value="${ resume.eduName }"/><br>
														교육기관 : <c:out value="${ resume.eduAgency }"/><br>
														교육 시작일 : <c:out value="${ resume.eduStartDate }"/><br>
														교육 종료일 : <c:out value="${ resume.eduEndDate }"/><br>
														교육 내용 : <c:out value="${ resume.eduContent }"/><br><br>
													</c:forEach>
												</c:if>
												<c:if test="${ requestScope.resultResume.educationHistoryList.size() eq 0 }">
													<label>교육 이력이 없습니다.</label><br>
												</c:if>
												
												<c:if test="${ requestScope.resultResume.awardHistoryList.size() ne 0 }">
													<h4><label>수상 이력</label></h4>
													<c:forEach items="${ requestScope.resultResume.awardHistoryList }" var="resume">
														수상명 :<c:out value="${ resume.awdName }"/><br>
														수상기관 : <c:out value="${ resume.awdAgency }"/><br>
														수상일 : <c:out value="${ resume.awdDate }"/><br>
														수상내용 : <c:out value="${ resume.awdContent }"/><br><br>
													</c:forEach><br>
												</c:if>
												<c:if test="${ requestScope.resultResume.awardHistoryList.size() eq 0 }">
													<label>수상 이력이 없습니다.</label><br>
												</c:if>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	
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