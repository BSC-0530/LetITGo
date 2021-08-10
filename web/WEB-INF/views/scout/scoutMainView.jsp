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
				<c:forEach items="${scoutList }" var="mainScout">  
				<div class="col-lg-9 col-md-9 col-sm-12 col-xs-12 jp_cl_right_bar">
					<div class="row">
						<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
							<div class="jp_recent_resume_box_wrapper">
								<div class="jp_recent_resume_img_wrapper">
									<img src="images/content/resume_img1.jpg" alt="resume_img" />
								</div>
								<div class="jp_recent_resume_cont_wrapper">
									<h3><c:out value="${ mainScout.memName }"></c:out>  </h3>
									<p><i class="fa fa-folder-open-o"></i> <a href="#"><c:out value="${ mainScout.skillsName }"></c:out></a></p>
									<i>신입</i>
								</div>
								<div class="jp_recent_resume_btn_wrapper">
									<ul>
										<li><a href="#">간단 조회</a></li>
									</ul>
								</div>
							</div>
						</div>

					</div>
				</div>
				</c:forEach>
			</div>
		</div>
		<!-- jp listing sidebar Wrapper End -->
		</div><!-- -----------------------풋터------------------------------------- -->	
	<jsp:include page="../common/footer.jsp"/>
	<!-- -----------------------풋터끝------------------------------------- -->
</body>
</html>