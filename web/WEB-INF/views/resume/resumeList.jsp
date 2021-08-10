<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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

	<jsp:include page="../common/header/personalHeader.jsp" />

	<div class="jp_tittle_main_wrapper">
		<div class="jp_tittle_img_overlay"></div>
		<div class="container">
			<div class="row">
				<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
					<div class="jp_tittle_heading_wrapper">
						<div class="jp_tittle_heading">
							<h2>이력서</h2>
						</div>
						<div class="jp_tittle_breadcrumb_main_wrapper">
							<div class="jp_tittle_breadcrumb_wrapper">
								<ul>
									<li><a href="#">Home</a></li>

									<li>></li>

									<li>이력서 조회</li>
								</ul>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	
		<div class="container">
			<div class="row">
				
				
		


	<div class="col-lg-9 col-md-9 col-sm-12 col-xs-12 jp_cl_right_bar">
		<c:forEach items="${ resumeList }" var="resume">
			<div class="row">
				<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
					<div class="jp_recent_resume_box_wrapper">

						<div class="jp_recent_resume_cont_wrapper">
							<h3>
								<c:out value="${ resume.resumeTitle }"></c:out>
							</h3>
							<p>
								<i class="fa fa-folder-open-o"></i> <a href="#"><c:out
										value="${ resume.resumeWriteDate }"></c:out></a>
							</p>
						</div>
						<div class="jp_recent_resume_btn_wrapper">
							<ul>
								<li><a href="#">수정하기</a></li>
							</ul>
						</div>
						<div class="jp_recent_resume_btn_wrapper">
							<ul>
								<li><a href="#">새 이력서 작성</a></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</c:forEach>
	</div>


	<div
		class="col-lg-12 col-md-12 col-sm-12 col-xs-12 hidden-sm hidden-xs">
		<div class="pager_wrapper gc_blog_pagination">
			<ul class="pagination">
				<li><a href="#">Priv.</a></li>
				<c:forEach items="${ resumeList }" var="resume" varStatus="status">
					<li><a href="#">${ status.count }</a></li>
				</c:forEach>
				<li><a href="#">Next</a></li>
			</ul>
		</div>
	</div>

	<jsp:include page="../common/footer.jsp" />
</body>
</html>