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
									<li><a
										href="${ pageContext.servletContext.contextPath }/mainPage/InMember">Home</a></li>
									<li>></li>
									<li>이력서</li>
								</ul>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>






	<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 jp_cl_right_bar">
		<h1 style="margin-left: 430px; margin-top: 50px;">이력서 조회</h1>
		<c:forEach items="${ resumeList }" var="resume">
			<div class="row">
				<div class="col-lg-3 col-md-3 col-sm-3 col-xs-12"></div>
				<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
					<div class="jp_recent_resume_box_wrapper">

						<div class="jp_recent_resume_cont_wrapper"
							style="cursor: pointer;" onClick="onDetail(this);">
							<input type="hidden" value="${ resume.resumeNo }">
							<h3>
								<c:out value="${ resume.resumeTitle }"></c:out>
							</h3>
							<p>
								<i class="fa fa-folder-open-o"></i> <a href="#"><c:out
										value="${ resume.resumeWriteDate }"></c:out></a>
							</p>
						</div>
						<div class="jp_recent_resume_btn_wrapper"
							onClick="onUpdate(this);">
							<input type="hidden" value="${ resume.resumeNo }">
							<ul>
								<li><a href="#">수정하기</a></li>
							</ul>
						</div>


					</div>
				</div>
			</div>

		</c:forEach>
	</div>

	<div class="col-lg-8 col-md-8 col-sm-8 col-xs-12 jp_cl_right_bar"></div>
	<div class="col-lg-3 col-md-3 col-sm-3 col-xs-12 jp_cl_right_bar"
		onClick="onInsert(this);">
		<button class="btn-info">새 이력서 등록</button>

	</div>

	<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 jp_cl_right_bar"></div>
	<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 jp_cl_right_bar"></div>
	<script>
	
		function onInsert(div) {
			
			location.href = "${ pageContext.servletContext.contextPath }/resume/insert"
		}
		
		function onDetail(div) {
			const selectedDetailResumeNo = div.children[0].value;
			location.href = "${ pageContext.servletContext.contextPath }/resume/detail?selectedDetailResumeNo=" + selectedDetailResumeNo;
		}
		
		function onUpdate(div) {
			const selectedUpdateResumeNo = div.children[0].value;
			location.href = "${ pageContext.servletContext.contextPath }/resume/update?selectedUpdateResumeNo=" + selectedUpdateResumeNo;
		}
	</script>

	<jsp:include page="../common/footer.jsp" />
</body>
</html>