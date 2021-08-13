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
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
</head>
<body>
	<%-- 	<c:forEach items="${ detailList }" var="detail" varStatus="status"> --%>
	<%-- 		<c:out value="${ detail.careerHistoryList }"></c:out><br> --%>
	<%-- 		<c:out value="${ detail.inMemNo }"/><br> --%>
	<%-- 		<c:out value="${ detail.portFolioList }"></c:out><br> --%>
	<%-- 		<c:out value="${ detail.itemAndContentList }"></c:out><br> --%>
	<%-- 		<c:out value="${ detail.awardHistoryList }"></c:out><br> --%>
	<%-- 		<c:out value="${ detail.holdingAndSkillsList }"></c:out><br> --%>
	<%-- 		<c:out value="${ detail.educationHistoryList }"></c:out><br><br><br> --%>
	<%-- 		<c:out value="${ detail.awardHistoryList[status.index].awdAgency }"></c:out><br> --%>
	<%-- 		<c:out value="${ detail.holdingAndSkillsList[status.index].skillsAndCategory.skillsName }"></c:out> --%>
	<%-- 		<%-- <c:out value="${ detail.awardHistoryList.awdName }"></c:out> --%>
	--%>
	<%-- 	</c:forEach> --%>


	<jsp:include page="../common/header/personalHeader.jsp" />

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
									<li><a href="#">Home</a> <i class="fa fa-angle-right"></i></li>
									<li><a href="#">이력서</a> <i class="fa fa-angle-right"></i></li>
									<li>상세 이력서</li>
								</ul>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	

		<!-- jp ad post Wrapper Start -->
		<c:forEach items="${ detailList }" var="detail" varStatus="status">


			<div class="jp_adp_main_section_wrapper">
				<div class="container">
					<div class="row">
						<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
							<div class="jp_adp_form_wrapper">
								<h3>
									이력서 제목<input type="text" placeholder="${ detail.resumeTitle }"
										name="resumeTitle" disabled>
								</h3>
							</div>
							<div class="jp_adp_form_wrapper">
								<h3>직무 / 경력</h3>

								<br>
								<c:choose>
									<c:when test="${ detail.jobNo eq 1 }">
										<label> <input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="1" name="jobNo" checked disabled>서버/백엔드
										</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="2" name="jobNo" disabled>프론트엔드</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="3" name="jobNo" disabled>웹 풀스택</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="4" name="jobNo" disabled>모바일 웹</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="5" name="jobNo" disabled>게임 클라이언트</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="6" name="jobNo" disabled>게임 서버</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="7" name="jobNo" disabled>데이터
											엔지니어(DBA)</label>
										<br>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="8" name="jobNo" disabled>인공지능/머신러닝</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="9" name="jobNo" disabled>시스템 엔지니어</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="10" name="jobNo" disabled>보안</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="11" name="jobNo" disabled>QA</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="12" name="jobNo" disabled>프로젝트 매니저</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="13" name="jobNo" disabled>HW/임베디드</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="14" name="jobNo" disabled>SW/솔루션</label>
									</c:when>
									<c:when test="${ detail.jobNo eq 2 }">
										<label> <input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="1" name="jobNo" disabled>서버/백엔드
										</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="2" name="jobNo" checked disabled>프론트엔드</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="3" name="jobNo" disabled>웹 풀스택</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="4" name="jobNo" disabled>모바일 웹</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="5" name="jobNo" disabled>게임 클라이언트</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="6" name="jobNo" disabled>게임 서버</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="7" name="jobNo" disabled>데이터
											엔지니어(DBA)</label>
										<br>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="8" name="jobNo" disabled>인공지능/머신러닝</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="9" name="jobNo" disabled>시스템 엔지니어</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="10" name="jobNo" disabled>보안</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="11" name="jobNo" disabled>QA</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="12" name="jobNo" disabled>프로젝트 매니저</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="13" name="jobNo" disabled>HW/임베디드</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="14" name="jobNo" disabled>SW/솔루션</label>
									</c:when>
									<c:when test="${ detail.jobNo eq 3 }">
										<label> <input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="1" name="jobNo" disabled>서버/백엔드
										</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="2" name="jobNo" disabled>프론트엔드</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="3" name="jobNo" checked disabled>웹
											풀스택</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="4" name="jobNo" disabled>모바일 웹</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="5" name="jobNo" disabled>게임 클라이언트</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="6" name="jobNo" disabled>게임 서버</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="7" name="jobNo" disabled>데이터
											엔지니어(DBA)</label>
										<br>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="8" name="jobNo" disabled>인공지능/머신러닝</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="9" name="jobNo" disabled>시스템 엔지니어</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="10" name="jobNo" disabled>보안</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="11" name="jobNo" disabled>QA</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="12" name="jobNo" disabled>프로젝트 매니저</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="13" name="jobNo" disabled>HW/임베디드</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="14" name="jobNo" disabled>SW/솔루션</label>
									</c:when>
									<c:when test="${ detail.jobNo eq 4 }">
										<label> <input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="1" name="jobNo" disabled>서버/백엔드
										</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="2" name="jobNo" disabled>프론트엔드</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="3" name="jobNo" disabled>웹 풀스택</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="4" name="jobNo" checked disabled>모바일
											웹</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="5" name="jobNo" disabled>게임 클라이언트</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="6" name="jobNo" disabled>게임 서버</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="7" name="jobNo" disabled>데이터
											엔지니어(DBA)</label>
										<br>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="8" name="jobNo" disabled>인공지능/머신러닝</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="9" name="jobNo" disabled>시스템 엔지니어</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="10" name="jobNo" disabled>보안</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="11" name="jobNo" disabled>QA</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="12" name="jobNo" disabled>프로젝트 매니저</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="13" name="jobNo" disabled>HW/임베디드</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="14" name="jobNo" disabled>SW/솔루션</label>
									</c:when>
									<c:when test="${ detail.jobNo eq 5 }">
										<label> <input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="1" name="jobNo" checked disabled>서버/백엔드
										</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="2" name="jobNo" disabled>프론트엔드</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="3" name="jobNo" disabled>웹 풀스택</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="4" name="jobNo" disabled>모바일 웹</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="5" name="jobNo" disabled checked>게임
											클라이언트</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="6" name="jobNo" disabled>게임 서버</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="7" name="jobNo" disabled>데이터
											엔지니어(DBA)</label>
										<br>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="8" name="jobNo" disabled>인공지능/머신러닝</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="9" name="jobNo" disabled>시스템 엔지니어</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="10" name="jobNo" disabled>보안</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="11" name="jobNo" disabled>QA</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="12" name="jobNo" disabled>프로젝트 매니저</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="13" name="jobNo" disabled>HW/임베디드</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="14" name="jobNo" disabled>SW/솔루션</label>
									</c:when>
									<c:when test="${ detail.jobNo eq 6 }">
										<label> <input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="1" name="jobNo" disabled>서버/백엔드
										</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="2" name="jobNo" disabled>프론트엔드</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="3" name="jobNo" disabled>웹 풀스택</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="4" name="jobNo" disabled>모바일 웹</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="5" name="jobNo" disabled>게임 클라이언트</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="6" name="jobNo" disabled checked>게임
											서버</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="7" name="jobNo" disabled>데이터
											엔지니어(DBA)</label>
										<br>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="8" name="jobNo" disabled>인공지능/머신러닝</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="9" name="jobNo" disabled>시스템 엔지니어</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="10" name="jobNo" disabled>보안</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="11" name="jobNo" disabled>QA</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="12" name="jobNo" disabled>프로젝트 매니저</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="13" name="jobNo" disabled>HW/임베디드</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="14" name="jobNo" disabled>SW/솔루션</label>
									</c:when>
									<c:when test="${ detail.jobNo eq 7 }">
										<label> <input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="1" name="jobNo" disabled>서버/백엔드
										</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="2" name="jobNo" disabled>프론트엔드</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="3" name="jobNo" disabled>웹 풀스택</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="4" name="jobNo" disabled>모바일 웹</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="5" name="jobNo" disabled>게임 클라이언트</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="6" name="jobNo" disabled>게임 서버</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="7" name="jobNo" disabled checked>데이터
											엔지니어(DBA)</label>
										<br>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="8" name="jobNo" disabled>인공지능/머신러닝</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="9" name="jobNo" disabled>시스템 엔지니어</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="10" name="jobNo" disabled>보안</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="11" name="jobNo" disabled>QA</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="12" name="jobNo" disabled>프로젝트 매니저</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="13" name="jobNo" disabled>HW/임베디드</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="14" name="jobNo" disabled>SW/솔루션</label>
									</c:when>
									<c:when test="${ detail.jobNo eq 8 }">
										<label> <input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="1" name="jobNo" disabled>서버/백엔드
										</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="2" name="jobNo" disabled>프론트엔드</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="3" name="jobNo" disabled>웹 풀스택</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="4" name="jobNo" disabled>모바일 웹</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="5" name="jobNo" disabled>게임 클라이언트</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="6" name="jobNo" disabled>게임 서버</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="7" name="jobNo" disabled>데이터
											엔지니어(DBA)</label>
										<br>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="8" name="jobNo" disabled checked>인공지능/머신러닝</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="9" name="jobNo" disabled>시스템 엔지니어</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="10" name="jobNo" disabled>보안</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="11" name="jobNo" disabled>QA</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="12" name="jobNo" disabled>프로젝트 매니저</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="13" name="jobNo" disabled>HW/임베디드</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="14" name="jobNo" disabled>SW/솔루션</label>
									</c:when>
									<c:when test="${ detail.jobNo eq 9 }">
										<label> <input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="1" name="jobNo" disabled>서버/백엔드
										</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="2" name="jobNo" disabled>프론트엔드</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="3" name="jobNo" disabled>웹 풀스택</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="4" name="jobNo" disabled>모바일 웹</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="5" name="jobNo" disabled>게임 클라이언트</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="6" name="jobNo" disabled>게임 서버</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="7" name="jobNo" disabled>데이터
											엔지니어(DBA)</label>
										<br>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="8" name="jobNo" disabled>인공지능/머신러닝</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="9" name="jobNo" disabled checked>시스템
											엔지니어</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="10" name="jobNo" disabled>보안</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="11" name="jobNo" disabled>QA</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="12" name="jobNo" disabled>프로젝트 매니저</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="13" name="jobNo" disabled>HW/임베디드</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="14" name="jobNo" disabled>SW/솔루션</label>
									</c:when>
									<c:when test="${ detail.jobNo eq 10 }">
										<label> <input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="1" name="jobNo" disabled>서버/백엔드
										</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="2" name="jobNo" disabled>프론트엔드</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="3" name="jobNo" disabled>웹 풀스택</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="4" name="jobNo" disabled>모바일 웹</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="5" name="jobNo" disabled>게임 클라이언트</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="6" name="jobNo" disabled>게임 서버</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="7" name="jobNo" disabled>데이터
											엔지니어(DBA)</label>
										<br>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="8" name="jobNo" disabled>인공지능/머신러닝</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="9" name="jobNo" disabled>시스템 엔지니어</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="10" name="jobNo" disabled checked>보안</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="11" name="jobNo" disabled>QA</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="12" name="jobNo" disabled>프로젝트 매니저</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="13" name="jobNo" disabled>HW/임베디드</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="14" name="jobNo" disabled>SW/솔루션</label>
									</c:when>
									<c:when test="${ detail.jobNo eq 11 }">
										<label> <input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="1" name="jobNo" disabled>서버/백엔드
										</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="2" name="jobNo" disabled>프론트엔드</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="3" name="jobNo" disabled>웹 풀스택</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="4" name="jobNo" disabled>모바일 웹</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="5" name="jobNo" disabled>게임 클라이언트</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="6" name="jobNo" disabled>게임 서버</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="7" name="jobNo" disabled>데이터
											엔지니어(DBA)</label>
										<br>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="8" name="jobNo" disabled>인공지능/머신러닝</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="9" name="jobNo" disabled>시스템 엔지니어</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="10" name="jobNo" disabled>보안</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="11" name="jobNo" disabled cheked>QA</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="12" name="jobNo" disabled>프로젝트 매니저</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="13" name="jobNo" disabled>HW/임베디드</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="14" name="jobNo" disabled>SW/솔루션</label>
									</c:when>
									<c:when test="${ detail.jobNo eq 12 }">
										<label> <input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="1" name="jobNo" disabled>서버/백엔드
										</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="2" name="jobNo" disabled>프론트엔드</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="3" name="jobNo" disabled>웹 풀스택</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="4" name="jobNo" disabled>모바일 웹</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="5" name="jobNo" disabled>게임 클라이언트</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="6" name="jobNo" disabled>게임 서버</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="7" name="jobNo" disabled>데이터
											엔지니어(DBA)</label>
										<br>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="8" name="jobNo" disabled>인공지능/머신러닝</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="9" name="jobNo" disabled>시스템 엔지니어</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="10" name="jobNo" disabled>보안</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="11" name="jobNo" disabled>QA</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="12" name="jobNo" disabled checked>프로젝트
											매니저</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="13" name="jobNo" disabled>HW/임베디드</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="14" name="jobNo" disabled>SW/솔루션</label>
									</c:when>
									<c:when test="${ detail.jobNo eq 13 }">
										<label> <input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="1" name="jobNo" disabled>서버/백엔드
										</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="2" name="jobNo" disabled>프론트엔드</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="3" name="jobNo" disabled>웹 풀스택</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="4" name="jobNo" disabled>모바일 웹</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="5" name="jobNo" disabled>게임 클라이언트</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="6" name="jobNo" disabled>게임 서버</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="7" name="jobNo" disabled>데이터
											엔지니어(DBA)</label>
										<br>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="8" name="jobNo" disabled>인공지능/머신러닝</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="9" name="jobNo" disabled>시스템 엔지니어</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="10" name="jobNo" disabled>보안</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="11" name="jobNo" disabled>QA</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="12" name="jobNo" disabled>프로젝트 매니저</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="13" name="jobNo" disabled checked>HW/임베디드</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="14" name="jobNo" disabled>SW/솔루션</label>
									</c:when>
									<c:when test="${ detail.jobNo eq 14 }">
										<label> <input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="1" name="jobNo" disabled>서버/백엔드
										</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="2" name="jobNo" disabled>프론트엔드</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="3" name="jobNo" disabled>웹 풀스택</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="4" name="jobNo" disabled>모바일 웹</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="5" name="jobNo" disabled>게임 클라이언트</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="6" name="jobNo" disabled>게임 서버</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="7" name="jobNo" disabled>데이터
											엔지니어(DBA)</label>
										<br>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="8" name="jobNo" disabled>인공지능/머신러닝</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="9" name="jobNo" disabled>시스템 엔지니어</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="10" name="jobNo" disabled>보안</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="11" name="jobNo" disabled>QA</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="12" name="jobNo" disabled>프로젝트 매니저</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="13" name="jobNo" disabled>HW/임베디드</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="14" name="jobNo" disabled checked>SW/솔루션</label>
									</c:when>
								</c:choose>

							</div>

							<div class="row" id="inputCareer">
								<div class="col-lg-3 col-md-3 col-md-3 col-xs-12">

									<div class="jp_adp_form_wrapper">
										<input type="text"
											placeholder="${ detail.careerHistoryList[status.index].carComName }"
											name="carComName" disabled>
									</div>
								</div>
								<div class="col-lg-3 col-md-3 col-md-3 col-xs-12">

									<div class="jp_adp_form_wrapper">
										<input type="text"
											placeholder="${ detail.careerHistoryList[status.index].carDeptName }"
											name="carDeptName" disabled>
									</div>
								</div>
								<div class="col-lg-3 col-md-3 col-md-3 col-xs-12">
									<div class="jp_adp_form_wrapper">
										<input type="text"
											placeholder="${ detail.careerHistoryList[status.index].carJobName }"
											name="carJobName" disabled>
									</div>
								</div>
								<div class="col-lg-3 col-md-3 col-md-3 col-xs-12">
									<div class="jp_adp_form_wrapper">
										<input type="text"
											placeholder="${ detail.careerHistoryList[status.index].carWorkField }"
											name="carWorkField" disabled>
									</div>
								</div>
								<div class="col-lg-3 col-md-3 col-md-3 col-xs-12">
									<div class="jp_adp_form_wrapper">
										<label>입사일 *</label> <input type="text"
											placeholder="${ detail.careerHistoryList[status.index].carHireDate }"
											name="carHireDate" disabled>
									</div>
								</div>
								<div class="col-lg-3 col-md-3 col-md-3 col-xs-12">
									<div class="jp_adp_form_wrapper">
										<label>퇴사일 *</label> <input type="text"
											placeholder="${ detail.careerHistoryList[status.index].carEntDate }"
											name="carEntDate" disabled>
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
													type="checkbox" name="carStatus" checked disabled>
													현재 재직 중</label>
											</c:when>
											<c:otherwise>
												<label><input
													style="width: 17px; height: 17px; border: 1px;"
													type="checkbox" name="carStatus" disabled> 현재 재직 중</label>
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
											placeholder="${ detail.careerHistoryList[status.index].projectName }"
											name="projectName" disabled>
									</div>
								</div>
								<div class="col-lg-3 col-md-3 col-md-3 col-xs-12">
									<div class="jp_adp_form_wrapper">
										<br> <input type="text"
											placeholder="${ detail.careerHistoryList[status.index].projectContent }"
											name="projectContent" disabled>
									</div>
								</div>
								<div class="col-lg-3 col-md-3 col-md-3 col-xs-12">
									<div class="jp_adp_form_wrapper">
										<label>프로젝트 시작일</label> <input type="text"
											placeholder="${ detail.careerHistoryList[status.index].projectStartDate }"
											name="projectStartDate" disabled>
									</div>
								</div>
								<div class="col-lg-3 col-md-3 col-md-3 col-xs-12">
									<div class="jp_adp_form_wrapper">
										<label>프로젝트 퇴사일</label> <input type="text"
											placeholder="${ detail.careerHistoryList[status.index].projectEndDate }"
											name="projectEndDate" disabled>
									</div>
								</div>
							</div>

							<div class="jp_adp_form_wrapper">
								<c:choose>
									<c:when
										test="${ detail.portFolioList[status.index].potKinds eq '링크' }">
										<h3>포트폴리오 링크</h3>
										<br> 깃랩, 노션으로 작성한 포트폴리오 주소 or 구글 드라이브 파일 등 업무 성과를 보여줄 수 있는
										파일이 있다면 첨부해주세요. <input type="text"
											placeholder="${ detail.portFolioList[status.index].potLinkAddress }"
											name="potLinkAddress" disabled>
									</c:when>
									<c:otherwise>

										<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
											<div class="jp_adp_choose_resume">
												<h3>포트폴리오 첨부</h3>
												<div class="custom-input">
													<span><i class="fa fa-upload"></i>파일선택</span> <input
														type="file" name="potFilePath" id="potFilePath" disabled>
												</div>
												<input type="text"
													placeholder="${ detail.portFolioList[status.index].potFileOriginalName }"
													name="potLinkAddress" disabled>
											</div>
										</div>
									</c:otherwise>
								</c:choose>
							</div>
						</div>

						<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
							<div class="jp_adp_textarea_main_wrapper">
								<h3>자기소개서</h3>
								<c:choose>
									<c:when
										test="${ detail.itemAndContentList[status.index].selfIntroItemNo eq 1 }">
										<select name="selfIntroItemNo" disabled>
											<option value="">-- 카테고리 선택 --</option>
											<option value="1" selected>성장과정</option>
											<option value="2">지원동기</option>
											<option value="3">성격장단점</option>
											<option value="4">입사후포부</option>
										</select>
									</c:when>
									<c:when
										test="${ detail.itemAndContentList[status.index].selfIntroItemNo eq 2 }">
										<select name="selfIntroItemNo" disabled>
											<option value="">-- 카테고리 선택 --</option>
											<option value="1">성장과정</option>
											<option value="2" selected>지원동기</option>
											<option value="3">성격장단점</option>
											<option value="4">입사후포부</option>
										</select>
									</c:when>
									<c:when
										test="${ detail.itemAndContentList[status.index].selfIntroItemNo eq 3 }">
										<select name="selfIntroItemNo" disabled>
											<option value="">-- 카테고리 선택 --</option>
											<option value="1">성장과정</option>
											<option value="2">지원동기</option>
											<option value="3" selected>성격장단점</option>
											<option value="4">입사후포부</option>
										</select>
									</c:when>
									<c:when
										test="${ detail.itemAndContentList[status.index].selfIntroItemNo eq 4 }">
										<select name="selfIntroItemNo" disabled>
											<option value="">-- 카테고리 선택 --</option>
											<option value="1">성장과정</option>
											<option value="2">지원동기</option>
											<option value="3">성격장단점</option>
											<option value="4" selected>입사후포부</option>
										</select>
									</c:when>
								</c:choose>

								<textarea rows="7"
									placeholder="${ detail.itemAndContentList[status.index].selfIntroContent.selfIntroItemContent }"
									name="selfIntroItemContent" disabled></textarea>
							</div>
						</div>
						<br> <br>
						<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">

							<div class="row" id="inputLicense">
								<div class="col-lg-3 col-md-3 col-md-3 col-xs-12">
									<div class="jp_adp_form_wrapper">
										<h3>자격증 이력</h3>
										<input type="text"
											placeholder="${ detail.licenseHistoryList[status.index].licenseName }"
											name="licenseName" disabled>
									</div>
								</div>
								<div class="col-lg-3 col-md-3 col-md-3 col-xs-12">
									<div class="jp_adp_form_wrapper">

										<br> <input type="text"
											placeholder="${ detail.licenseHistoryList[status.index].licenseAgency }"
											name="licenseAgency" disabled>
									</div>
								</div>
								<div class="col-lg-3 col-md-3 col-md-3 col-xs-12">
									<div class="jp_adp_form_wrapper">
										<label>자격증 취득일</label> <input type="text"
											placeholder="${ detail.licenseHistoryList[status.index].licenseDate }"
											name="licenseDate" disabled>
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
											placeholder="${ detail.educationHistoryList[status.index].eduName }"
											name="eduName" disabled>
									</div>
								</div>
								<div class="col-lg-3 col-md-3 col-md-3 col-xs-12">
									<div class="jp_adp_form_wrapper">
										<br> <input type="text"
											placeholder="${ detail.educationHistoryList[status.index].eduAgency }"
											name="eduAgency" disabled>
									</div>
								</div>
								<div class="col-lg-3 col-md-3 col-md-3 col-xs-12">
									<div class="jp_adp_form_wrapper">
										<label>교육 시작일</label> <input type="text"
											placeholder="${ detail.educationHistoryList[status.index].eduStartDate }"
											name="eduStartDate" disabled>
									</div>
								</div>
								<div class="col-lg-3 col-md-3 col-md-3 col-xs-12">
									<div class="jp_adp_form_wrapper">
										<label>교육 종료일</label> <input type="text"
											placeholder="${ detail.educationHistoryList[status.index].eduEndDate }"
											name="eduEndDate" disabled>
									</div>
								</div>
								<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
									<div class="jp_adp_textarea_main_wrapper">
										<h5>교육 내용</h5>
										<textarea rows="7"
											placeholder="${ detail.educationHistoryList[status.index].eduContent }"
											name="eduContent" disabled></textarea>
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
											placeholder="${ detail.awardHistoryList[status.index].awdName }"
											name="awdName" disabled>
									</div>
								</div>
								<div class="col-lg-3 col-md-3 col-md-3 col-xs-12">
									<div class="jp_adp_form_wrapper">
										<br> <input type="text"
											placeholder="${ detail.awardHistoryList[status.index].awdAgency }"
											name="awdAgency" disabled>
									</div>
								</div>
								<div class="col-lg-3 col-md-3 col-md-3 col-xs-12">
									<div class="jp_adp_form_wrapper">
										<label>수상 일자</label> <input type="text"
											placeholder="${ detail.awardHistoryList[status.index].awdDate }"
											name="awdDate" disabled>
									</div>
								</div>
								<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
									<div class="jp_adp_textarea_main_wrapper">
										<h5>수상 내용</h5>
										<textarea rows="7"
											placeholder="${ detail.awardHistoryList[status.index].awdContent }"
											name="awdContent" disabled></textarea>
									</div>
								</div>
							</div>
						</div>


					</div>
				</div>
			</div>
		<div class="col-lg-8 col-md-8 col-sm-8 col-xs-12 jp_cl_right_bar"></div>
		<div class="col-lg-4 col-md-4 col-sm-4 col-xs-12 jp_cl_right_bar">
			<button class="btn-info" onClick="updateResume(this);" value="${ detail.resumeNo }">수정하기</button>
			<button class="btn-info" onClick="deleteResume(this);" value="${ detail.resumeNo }">삭제하기</button>
		</div>
			<!-- jp ad post Wrapper End -->
		</c:forEach>
		
		<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 jp_cl_right_bar"></div>
		<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 jp_cl_right_bar"></div>
	
	<script type="text/javascript">

		function updateResume(button) {
			
			const selectedUpdateResumeNo = button.value;
			location.href = "${ pageContext.servletContext.contextPath }/resume/update?selectedUpdateResumeNo=" 
					+ selectedUpdateResumeNo;
			
		}
		
		function deleteResume(button) {
			
			const selectedDeleteResumeNo = button.value;
			location.href = "${ pageContext.servletContext.contextPath }/resume/delete?selectedDeleteResumeNo=" 
				+ selectedDeleteResumeNo;
		}
		
		$("input").filter("[value='null']").val("");
		
	</script>

	<jsp:include page="../common/footer.jsp" />
</body>
</html>