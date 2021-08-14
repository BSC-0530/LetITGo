<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri="http://java.sun.com/jsp/jstl/core" %>
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
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
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
							<h2>이력서 수정</h2>
						</div>
						<div class="jp_tittle_breadcrumb_main_wrapper">
							<div class="jp_tittle_breadcrumb_wrapper">
								<ul>
									<li><a href="#">Home</a> <i class="fa fa-angle-right"></i></li>
									<li><a href="#">이력서</a> <i class="fa fa-angle-right"></i></li>
									<li>이력서 수정</li>
								</ul>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<form
		action="${ pageContext.servletContext.contextPath }/resume/update"
		method="post">

		<!-- jp ad post Wrapper Start -->
		<c:forEach items="${ detailList }" var="detail" varStatus="status">
		
		<input type="hidden" value="${ detail.resumeNo }" name="resumeNo">

			<div class="jp_adp_main_section_wrapper">
				<div class="container">
					<div class="row">
						<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
							<div class="jp_adp_form_wrapper">
								<h3>
									이력서 제목<input type="text" value="${ detail.resumeTitle }"
										name="resumeTitle">
								</h3>
							</div>
							<div class="jp_adp_form_wrapper">
								<h3>직무 / 경력</h3>

								<br>
								<c:choose>
									<c:when test="${ detail.jobNo eq 1 }">
										<label> <input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="1" name="jobNo" checked>서버/백엔드
										</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="2" name="jobNo" >프론트엔드</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="3" name="jobNo" >웹 풀스택</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="4" name="jobNo" >모바일 웹</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="5" name="jobNo" >게임 클라이언트</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="6" name="jobNo" >게임 서버</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="7" name="jobNo" >데이터
											엔지니어(DBA)</label>
										<br>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="8" name="jobNo" >인공지능/머신러닝</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="9" name="jobNo" >시스템 엔지니어</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="10" name="jobNo" >보안</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="11" name="jobNo" >QA</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="12" name="jobNo" >프로젝트 매니저</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="13" name="jobNo" >HW/임베디드</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="14" name="jobNo" >SW/솔루션</label>
									</c:when>
									<c:when test="${ detail.jobNo eq 2 }">
										<label> <input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="1" name="jobNo" >서버/백엔드
										</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="2" name="jobNo" checked >프론트엔드</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="3" name="jobNo" >웹 풀스택</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="4" name="jobNo" >모바일 웹</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="5" name="jobNo" >게임 클라이언트</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="6" name="jobNo" >게임 서버</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="7" name="jobNo" >데이터
											엔지니어(DBA)</label>
										<br>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="8" name="jobNo" >인공지능/머신러닝</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="9" name="jobNo" >시스템 엔지니어</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="10" name="jobNo" >보안</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="11" name="jobNo" >QA</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="12" name="jobNo" >프로젝트 매니저</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="13" name="jobNo" >HW/임베디드</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="14" name="jobNo" >SW/솔루션</label>
									</c:when>
									<c:when test="${ detail.jobNo eq 3 }">
										<label> <input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="1" name="jobNo" >서버/백엔드
										</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="2" name="jobNo" >프론트엔드</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="3" name="jobNo" checked >웹
											풀스택</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="4" name="jobNo" >모바일 웹</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="5" name="jobNo" >게임 클라이언트</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="6" name="jobNo" >게임 서버</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="7" name="jobNo" >데이터
											엔지니어(DBA)</label>
										<br>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="8" name="jobNo" >인공지능/머신러닝</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="9" name="jobNo" >시스템 엔지니어</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="10" name="jobNo" >보안</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="11" name="jobNo" >QA</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="12" name="jobNo" >프로젝트 매니저</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="13" name="jobNo" >HW/임베디드</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="14" name="jobNo" >SW/솔루션</label>
									</c:when>
									<c:when test="${ detail.jobNo eq 4 }">
										<label> <input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="1" name="jobNo" >서버/백엔드
										</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="2" name="jobNo" >프론트엔드</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="3" name="jobNo" >웹 풀스택</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="4" name="jobNo" checked >모바일
											웹</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="5" name="jobNo" >게임 클라이언트</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="6" name="jobNo" >게임 서버</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="7" name="jobNo" >데이터
											엔지니어(DBA)</label>
										<br>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="8" name="jobNo" >인공지능/머신러닝</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="9" name="jobNo" >시스템 엔지니어</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="10" name="jobNo" >보안</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="11" name="jobNo" >QA</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="12" name="jobNo" >프로젝트 매니저</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="13" name="jobNo" >HW/임베디드</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="14" name="jobNo" >SW/솔루션</label>
									</c:when>
									<c:when test="${ detail.jobNo eq 5 }">
										<label> <input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="1" name="jobNo" checked >서버/백엔드
										</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="2" name="jobNo" >프론트엔드</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="3" name="jobNo" >웹 풀스택</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="4" name="jobNo" >모바일 웹</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="5" name="jobNo"  checked>게임
											클라이언트</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="6" name="jobNo" >게임 서버</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="7" name="jobNo" >데이터
											엔지니어(DBA)</label>
										<br>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="8" name="jobNo" >인공지능/머신러닝</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="9" name="jobNo" >시스템 엔지니어</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="10" name="jobNo" >보안</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="11" name="jobNo" >QA</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="12" name="jobNo" >프로젝트 매니저</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="13" name="jobNo" >HW/임베디드</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="14" name="jobNo" >SW/솔루션</label>
									</c:when>
									<c:when test="${ detail.jobNo eq 6 }">
										<label> <input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="1" name="jobNo" >서버/백엔드
										</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="2" name="jobNo" >프론트엔드</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="3" name="jobNo" >웹 풀스택</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="4" name="jobNo" >모바일 웹</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="5" name="jobNo" >게임 클라이언트</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="6" name="jobNo"  checked>게임
											서버</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="7" name="jobNo" >데이터
											엔지니어(DBA)</label>
										<br>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="8" name="jobNo" >인공지능/머신러닝</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="9" name="jobNo" >시스템 엔지니어</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="10" name="jobNo" >보안</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="11" name="jobNo" >QA</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="12" name="jobNo" >프로젝트 매니저</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="13" name="jobNo" >HW/임베디드</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="14" name="jobNo" >SW/솔루션</label>
									</c:when>
									<c:when test="${ detail.jobNo eq 7 }">
										<label> <input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="1" name="jobNo" >서버/백엔드
										</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="2" name="jobNo" >프론트엔드</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="3" name="jobNo" >웹 풀스택</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="4" name="jobNo" >모바일 웹</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="5" name="jobNo" >게임 클라이언트</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="6" name="jobNo" >게임 서버</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="7" name="jobNo"  checked>데이터
											엔지니어(DBA)</label>
										<br>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="8" name="jobNo" >인공지능/머신러닝</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="9" name="jobNo" >시스템 엔지니어</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="10" name="jobNo" >보안</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="11" name="jobNo" >QA</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="12" name="jobNo" >프로젝트 매니저</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="13" name="jobNo" >HW/임베디드</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="14" name="jobNo" >SW/솔루션</label>
									</c:when>
									<c:when test="${ detail.jobNo eq 8 }">
										<label> <input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="1" name="jobNo" >서버/백엔드
										</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="2" name="jobNo" >프론트엔드</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="3" name="jobNo" >웹 풀스택</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="4" name="jobNo" >모바일 웹</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="5" name="jobNo" >게임 클라이언트</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="6" name="jobNo" >게임 서버</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="7" name="jobNo" >데이터
											엔지니어(DBA)</label>
										<br>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="8" name="jobNo"  checked>인공지능/머신러닝</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="9" name="jobNo" >시스템 엔지니어</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="10" name="jobNo" >보안</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="11" name="jobNo" >QA</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="12" name="jobNo" >프로젝트 매니저</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="13" name="jobNo" >HW/임베디드</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="14" name="jobNo" >SW/솔루션</label>
									</c:when>
									<c:when test="${ detail.jobNo eq 9 }">
										<label> <input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="1" name="jobNo" >서버/백엔드
										</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="2" name="jobNo" >프론트엔드</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="3" name="jobNo" >웹 풀스택</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="4" name="jobNo" >모바일 웹</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="5" name="jobNo" >게임 클라이언트</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="6" name="jobNo" >게임 서버</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="7" name="jobNo" >데이터
											엔지니어(DBA)</label>
										<br>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="8" name="jobNo" >인공지능/머신러닝</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="9" name="jobNo"  checked>시스템
											엔지니어</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="10" name="jobNo" >보안</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="11" name="jobNo" >QA</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="12" name="jobNo" >프로젝트 매니저</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="13" name="jobNo" >HW/임베디드</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="14" name="jobNo" >SW/솔루션</label>
									</c:when>
									<c:when test="${ detail.jobNo eq 10 }">
										<label> <input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="1" name="jobNo" >서버/백엔드
										</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="2" name="jobNo" >프론트엔드</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="3" name="jobNo" >웹 풀스택</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="4" name="jobNo" >모바일 웹</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="5" name="jobNo" >게임 클라이언트</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="6" name="jobNo" >게임 서버</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="7" name="jobNo" >데이터
											엔지니어(DBA)</label>
										<br>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="8" name="jobNo" >인공지능/머신러닝</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="9" name="jobNo" >시스템 엔지니어</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="10" name="jobNo"  checked>보안</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="11" name="jobNo" >QA</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="12" name="jobNo" >프로젝트 매니저</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="13" name="jobNo" >HW/임베디드</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="14" name="jobNo" >SW/솔루션</label>
									</c:when>
									<c:when test="${ detail.jobNo eq 11 }">
										<label> <input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="1" name="jobNo" >서버/백엔드
										</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="2" name="jobNo" >프론트엔드</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="3" name="jobNo" >웹 풀스택</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="4" name="jobNo" >모바일 웹</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="5" name="jobNo" >게임 클라이언트</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="6" name="jobNo" >게임 서버</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="7" name="jobNo" >데이터
											엔지니어(DBA)</label>
										<br>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="8" name="jobNo" >인공지능/머신러닝</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="9" name="jobNo" >시스템 엔지니어</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="10" name="jobNo" >보안</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="11" name="jobNo"  cheked>QA</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="12" name="jobNo" >프로젝트 매니저</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="13" name="jobNo" >HW/임베디드</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="14" name="jobNo" >SW/솔루션</label>
									</c:when>
									<c:when test="${ detail.jobNo eq 12 }">
										<label> <input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="1" name="jobNo" >서버/백엔드
										</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="2" name="jobNo" >프론트엔드</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="3" name="jobNo" >웹 풀스택</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="4" name="jobNo" >모바일 웹</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="5" name="jobNo" >게임 클라이언트</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="6" name="jobNo" >게임 서버</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="7" name="jobNo" >데이터
											엔지니어(DBA)</label>
										<br>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="8" name="jobNo" >인공지능/머신러닝</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="9" name="jobNo" >시스템 엔지니어</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="10" name="jobNo" >보안</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="11" name="jobNo" >QA</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="12" name="jobNo"  checked>프로젝트
											매니저</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="13" name="jobNo" >HW/임베디드</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="14" name="jobNo" >SW/솔루션</label>
									</c:when>
									<c:when test="${ detail.jobNo eq 13 }">
										<label> <input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="1" name="jobNo" >서버/백엔드
										</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="2" name="jobNo" >프론트엔드</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="3" name="jobNo" >웹 풀스택</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="4" name="jobNo" >모바일 웹</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="5" name="jobNo" >게임 클라이언트</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="6" name="jobNo" >게임 서버</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="7" name="jobNo" >데이터
											엔지니어(DBA)</label>
										<br>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="8" name="jobNo" >인공지능/머신러닝</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="9" name="jobNo" >시스템 엔지니어</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="10" name="jobNo" >보안</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="11" name="jobNo" >QA</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="12" name="jobNo" >프로젝트 매니저</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="13" name="jobNo"  checked>HW/임베디드</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="14" name="jobNo" >SW/솔루션</label>
									</c:when>
									<c:when test="${ detail.jobNo eq 14 }">
										<label> <input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="1" name="jobNo" >서버/백엔드
										</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="2" name="jobNo" >프론트엔드</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="3" name="jobNo" >웹 풀스택</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="4" name="jobNo" >모바일 웹</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="5" name="jobNo" >게임 클라이언트</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="6" name="jobNo" >게임 서버</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="7" name="jobNo" >데이터
											엔지니어(DBA)</label>
										<br>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="8" name="jobNo" >인공지능/머신러닝</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="9" name="jobNo" >시스템 엔지니어</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="10" name="jobNo" >보안</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="11" name="jobNo" >QA</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="12" name="jobNo" >프로젝트 매니저</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="13" name="jobNo" >HW/임베디드</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="14" name="jobNo"  checked>SW/솔루션</label>
									</c:when>
								</c:choose>

							</div>

							<div class="row" id="inputCareer">
								<div class="col-lg-3 col-md-3 col-md-3 col-xs-12">

									<div class="jp_adp_form_wrapper">
										<input type="text"
											value="${ detail.careerHistoryList[status.index].carComName }"
											name="carComName" >
									</div>
								</div>
								<div class="col-lg-3 col-md-3 col-md-3 col-xs-12">

									<div class="jp_adp_form_wrapper">
										<input type="text"
											value="${ detail.careerHistoryList[status.index].carDeptName }"
											name="carDeptName" >
									</div>
								</div>
								<div class="col-lg-3 col-md-3 col-md-3 col-xs-12">
									<div class="jp_adp_form_wrapper">
										<input type="text"
											value="${ detail.careerHistoryList[status.index].carJobName }"
											name="carJobName" >
									</div>
								</div>
								<div class="col-lg-3 col-md-3 col-md-3 col-xs-12">
									<div class="jp_adp_form_wrapper">
										<input type="text"
											value="${ detail.careerHistoryList[status.index].carWorkField }"
											name="carWorkField" >
									</div>
								</div>
								<div class="col-lg-3 col-md-3 col-md-3 col-xs-12">
									<div class="jp_adp_form_wrapper">
										<label>입사일 *</label> <input type="date"
											value="${ detail.careerHistoryList[status.index].carHireDate }"
											name="carHireDate" >
									</div>
								</div>
								<div class="col-lg-3 col-md-3 col-md-3 col-xs-12">
									<div class="jp_adp_form_wrapper">
										<label>퇴사일 *</label> <input type="date"
											value="${ detail.careerHistoryList[status.index].carEntDate }"
											name="carEntDate" >
									</div>
								</div>
								<div class="col-lg-3 col-md-3 col-md-3 col-xs-12">
									<div class="jp_adp_form_wrapper">
										<br> <br>
										<c:choose>
											<c:when
												test="${ detail.careerHistoryList[status.index].carStatus eq 'Y' }">
												<label><input
													style="width: 17px; height: 17px; border: 1px;"
													type="checkbox" name="carStatus" checked >
													현재 재직 중</label>
											</c:when>
											<c:otherwise>
												<label><input
													style="width: 17px; height: 17px; border: 1px;"
													type="checkbox" name="carStatus" > 현재 재직 중</label>
											</c:otherwise>
										</c:choose>
									</div>
								</div>

								<div class="col-lg-3 col-md-3 col-md-3 col-xs-12">
									<div class="jp_adp_form_wrapper">
										<label> </label>
									</div>
								</div>
								<div class="col-lg-3 col-md-3 col-md-3 col-xs-12">
									<div class="jp_adp_form_wrapper">
										<label> </label>
									</div>
								</div>
								<div class="col-lg-3 col-md-3 col-md-3 col-xs-12">
									<div class="jp_adp_form_wrapper">
										<label> </label>
									</div>
								</div>

								<div class="col-lg-3 col-md-3 col-md-3 col-xs-12">
									<div class="jp_adp_form_wrapper">
										<br> <input type="text"
											value="${ detail.careerHistoryList[status.index].projectName }"
											name="projectName" >
									</div>
								</div>
								<div class="col-lg-3 col-md-3 col-md-3 col-xs-12">
									<div class="jp_adp_form_wrapper">
										<br> <input type="text"
											value="${ detail.careerHistoryList[status.index].projectContent }"
											name="projectContent" >
									</div>
								</div>
								<div class="col-lg-3 col-md-3 col-md-3 col-xs-12">
									<div class="jp_adp_form_wrapper">
										<label>프로젝트 시작일</label> <input type="date"
											value="${ detail.careerHistoryList[status.index].projectStartDate }"
											name="projectStartDate" >
									</div>
								</div>
								<div class="col-lg-3 col-md-3 col-md-3 col-xs-12">
									<div class="jp_adp_form_wrapper">
										<label>프로젝트 퇴사일</label> <input type="date"
											value="${ detail.careerHistoryList[status.index].projectEndDate }"
											name="projectEndDate" >
									</div>
								</div>
							</div>

							<div class="jp_adp_form_wrapper">
								
										
										<h3>포트폴리오 링크</h3>
										<br> 깃랩, 노션으로 작성한 포트폴리오 주소 or 구글 드라이브 파일 등 업무 성과를 보여줄 수 있는
										파일이 있다면 첨부해주세요. <input type="text"
											value="${ detail.portFolioList[status.index].potLinkAddress }"
											name="potLinkAddress" >
									

										<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
											<div class="jp_adp_choose_resume">
												<h3>포트폴리오 첨부</h3>
												<div class="custom-input">
													<span><i class="fa fa-upload"></i>파일선택</span> <input
														type="file" name="potFilePath" id="potFilePath" >
												</div>
												<input type="text"
													value="${ detail.portFolioList[status.index].potFileOriginalName }"
													name="potLinkAddress" >
											</div>
										</div>
									
							</div>
						</div>

						<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
							<div class="jp_adp_textarea_main_wrapper">
								<h3>자기소개서</h3>
								<c:choose>
									<c:when
										test="${ detail.itemAndContentList[status.index].selfIntroItemNo eq 1 }">
										<select name="selfIntroItemNo" >
											<option value="">-- 카테고리 선택 --</option>
											<option value="1" selected>성장과정</option>
											<option value="2">지원동기</option>
											<option value="3">성격장단점</option>
											<option value="4">입사후포부</option>
										</select>
									</c:when>
									<c:when
										test="${ detail.itemAndContentList[status.index].selfIntroItemNo eq 2 }">
										<select name="selfIntroItemNo" >
											<option value="">-- 카테고리 선택 --</option>
											<option value="1">성장과정</option>
											<option value="2" selected>지원동기</option>
											<option value="3">성격장단점</option>
											<option value="4">입사후포부</option>
										</select>
									</c:when>
									<c:when
										test="${ detail.itemAndContentList[status.index].selfIntroItemNo eq 3 }">
										<select name="selfIntroItemNo" >
											<option value="">-- 카테고리 선택 --</option>
											<option value="1">성장과정</option>
											<option value="2">지원동기</option>
											<option value="3" selected>성격장단점</option>
											<option value="4">입사후포부</option>
										</select>
									</c:when>
									<c:when
										test="${ detail.itemAndContentList[status.index].selfIntroItemNo eq 4 }">
										<select name="selfIntroItemNo" >
											<option value="">-- 카테고리 선택 --</option>
											<option value="1">성장과정</option>
											<option value="2">지원동기</option>
											<option value="3">성격장단점</option>
											<option value="4" selected>입사후포부</option>
										</select>
									</c:when>
								</c:choose>

								<textarea rows="7"
									name="selfIntroItemContent" >${ detail.itemAndContentList[status.index].selfIntroContent.selfIntroItemContent }</textarea>
							</div>
						</div>
						<br> <br>
						<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">

							<div class="row" id="inputLicense">
								<div class="col-lg-3 col-md-3 col-md-3 col-xs-12">
									<div class="jp_adp_form_wrapper">
										<h3>자격증 이력</h3>
										<input type="text"
											value="${ detail.licenseHistoryList[status.index].licenseName }"
											name="licenseName" >
									</div>
								</div>
								<div class="col-lg-3 col-md-3 col-md-3 col-xs-12">
									<div class="jp_adp_form_wrapper">

										<br> <input type="text"
											value="${ detail.licenseHistoryList[status.index].licenseAgency }"
											name="licenseAgency" >
									</div>
								</div>
								<div class="col-lg-3 col-md-3 col-md-3 col-xs-12">
									<div class="jp_adp_form_wrapper">
										<label>자격증 취득일</label> <input type="text"
											value="${ detail.licenseHistoryList[status.index].licenseDate }"
											name="licenseDate" >
									</div>
								</div>
							</div>
						</div>
						<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">

							<div class="row" id="inputEdu">
								<div class="col-lg-3 col-md-3 col-md-3 col-xs-12">
									<div class="jp_adp_form_wrapper">
										<h3>교육 이력</h3>
										<input type="text"
											value="${ detail.educationHistoryList[status.index].eduName }"
											name="eduName" >
									</div>
								</div>
								<div class="col-lg-3 col-md-3 col-md-3 col-xs-12">
									<div class="jp_adp_form_wrapper">
										<br> <input type="text"
											value="${ detail.educationHistoryList[status.index].eduAgency }"
											name="eduAgency" >
									</div>
								</div>
								<div class="col-lg-3 col-md-3 col-md-3 col-xs-12">
									<div class="jp_adp_form_wrapper">
										<label>교육 시작일</label> <input type="date"
											value="${ detail.educationHistoryList[status.index].eduStartDate }"
											name="eduStartDate" >
									</div>
								</div>
								<div class="col-lg-3 col-md-3 col-md-3 col-xs-12">
									<div class="jp_adp_form_wrapper">
										<label>교육 종료일</label> <input type="date"
											value="${ detail.educationHistoryList[status.index].eduEndDate }"
											name="eduEndDate" >
									</div>
								</div>
								<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
									<div class="jp_adp_textarea_main_wrapper">
										<h5>교육 내용</h5>
										<textarea rows="7"
											name="eduContent" >${ detail.educationHistoryList[status.index].eduContent }</textarea>
									</div>
								</div>
							</div>
						</div>
						<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">

							<div class="row" id="inputAwd">
								<div class="col-lg-3 col-md-3 col-md-3 col-xs-12">
									<div class="jp_adp_form_wrapper">
										<h3>수상 이력</h3>
										<input type="text"
											value="${ detail.awardHistoryList[status.index].awdName }"
											name="awdName" >
									</div>
								</div>
								<div class="col-lg-3 col-md-3 col-md-3 col-xs-12">
									<div class="jp_adp_form_wrapper">
										<br> <input type="text"
											value="${ detail.awardHistoryList[status.index].awdAgency }"
											name="awdAgency" >
									</div>
								</div>
								<div class="col-lg-3 col-md-3 col-md-3 col-xs-12">
									<div class="jp_adp_form_wrapper">
										<label>수상 일자</label> <input type="date"
											value="${ detail.awardHistoryList[status.index].awdDate }"
											name="awdDate" >
									</div>
								</div>
								<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
									<div class="jp_adp_textarea_main_wrapper">
										<h5>수상 내용</h5>
										<textarea rows="7"
											name="awdContent" >${ detail.awardHistoryList[status.index].awdContent }</textarea>
									</div>
								</div>
							</div>
						</div>

					</div>
				</div>
			</div>
			<!-- jp ad post Wrapper End -->
		</c:forEach>
			<div class="col-lg-8 col-md-8 col-sm-8 col-xs-12 jp_cl_right_bar"></div>
				<div class="col-lg-4 col-md-4 col-sm-4 col-xs-12 jp_cl_right_bar">
					<button id="confirmUpdate" class="btn-info" type="submit">수정 완료</button>
					<button id="cancleUpdate" class="btn-info" value="back" onClick="history.go(-1)">돌아가기</button>
			</div>
	</form>

	<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 jp_cl_right_bar"></div>
	<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 jp_cl_right_bar"></div>
	
	<jsp:include page="../common/footer.jsp" />
</body>
</html>