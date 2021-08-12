<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css"
	href="${ pageContext.servletContext.contextPath }/resources/css/animate.css" />
<link rel="stylesheet" type="text/css"
	href="${ pageContext.servletContext.contextPath }/resources/css/bootstrap.css" />
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
</head>
<body>
<!-- -----------------------헤더------------------------------------- -->
	<jsp:include page="../common/header/companyHeader.jsp"/>
	<!-- -----------------------헤더끝------------------------------------- -->
	
	 <!-- jp listing sidebar Wrapper Start -->
    <div class="jp_listing_sidebar_main_wrapper">
		<div class="container">
			<div class="row">
				<div
					class="col-lg-3 col-md-3 col-sm-12 col-xs-12 hidden-sm hidden-xs">
					<div class="row">
						<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
							<div class="jp_rightside_job_categories_wrapper">
								<div class="jp_rightside_job_categories_heading">
									<h4>경력</h4>
								</div>
								<div style="height: 200px; background: white;"
									class="jp_form_location_wrapper">
									<select style="border: 1px solid;">
										<option value="" disabled selected>경력을 선택해주세요</option>
										<option value="">신입</option>
									</select>
								</div>
							</div>
						</div>
						<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
							<div class="jp_rightside_job_categories_wrapper">
								<div class="jp_rightside_job_categories_heading">
									<h4>보유기술</h4>
								</div>
								<div style="height: 200px; background: white;"
									class="jp_form_location_wrapper">
									<select style="border: 1px solid;">
										<option value="" disabled selected>보유기술을 검색해주세요</option>
										<option value=""></option>
									</select>
								</div>
							</div>
						</div>
					</div>
				</div>
				  
				<div class="col-lg-9 col-md-9 col-sm-12 col-xs-12 jp_cl_right_bar">
					<c:forEach items="${ requestScope.mainScoutList }" var="mainScout">
					<div class="row">
						<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
							<div class="jp_recent_resume_box_wrapper">
								<div class="jp_recent_resume_img_wrapper">
									<img src="images/content/resume_img1.jpg" alt="resume_img" />
								</div>
								<div class="jp_recent_resume_cont_wrapper">
									<h3><c:out value="${ mainScout.memberDTO.memName }"></c:out>  </h3>
									<p><i class="fa fa-folder-open-o"></i>
									
									<c:forEach items="${ requestScope.scoutListSkills }" var="holdingSkill">
									<c:if test="${  holdingSkill.resumeNo eq mainScout.resumeNo }">
										<c:out value="${ holdingSkill.skillsAndCategory.skillsName }"/>
									</c:if>
									 </c:forEach>
									</p>
									<c:forEach items="${ requestScope.scoutCareea }" var="careea">
									<c:out value ="${ careea.ResumeNoDTO.resumeNo }"/>
<%-- 									<i><c:out value= " 경력  ${ scoutCareea } 개월"/> </i> --%>
<%-- 									</c: if> --%>
									</c:forEach>
								</div>
								
								<div class="jp_recent_resume_btn_wrapper">
										<button style="margin-left:150px; margin-top:20px;" type="submit" class="btn btn-info" onclick="browse(this);">간단 조회</button>
										<p>${ careaa.ResumeNo }</p>
								</div>
							</div>
						</div>
					</div>
					</c:forEach>
				</div>
			</div>
			
		</div>
		
		<!-- jp listing sidebar Wrapper End -->
		</div><!-- -----------------------풋터------------------------------------- -->	
	<jsp:include page="../common/footer.jsp"/>
	<!-- -----------------------풋터끝------------------------------------- -->
	
<script>
	function browse(button){
		
	}	

</script>
	
</body>
</html>