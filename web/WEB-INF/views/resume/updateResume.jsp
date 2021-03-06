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
							<h2>????????? ??????</h2>
						</div>
						<div class="jp_tittle_breadcrumb_main_wrapper">
							<div class="jp_tittle_breadcrumb_wrapper">
								<ul>
									<li><a href="#">Home</a> <i class="fa fa-angle-right"></i></li>
									<li><a href="#">?????????</a> <i class="fa fa-angle-right"></i></li>
									<li>????????? ??????</li>
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
									????????? ??????<input type="text" value="${ detail.resumeTitle }"
										name="resumeTitle">
								</h3>
							</div>
							<div class="jp_adp_form_wrapper">
								<h3>?????? / ??????</h3>

								<br>
								<c:choose>
									<c:when test="${ detail.jobNo eq 1 }">
										<label> <input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="1" name="jobNo" checked>??????/?????????
										</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="2" name="jobNo" >???????????????</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="3" name="jobNo" >??? ?????????</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="4" name="jobNo" >????????? ???</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="5" name="jobNo" >?????? ???????????????</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="6" name="jobNo" >?????? ??????</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="7" name="jobNo" >?????????
											????????????(DBA)</label>
										<br>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="8" name="jobNo" >????????????/????????????</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="9" name="jobNo" >????????? ????????????</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="10" name="jobNo" >??????</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="11" name="jobNo" >QA</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="12" name="jobNo" >???????????? ?????????</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="13" name="jobNo" >HW/????????????</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="14" name="jobNo" >SW/?????????</label>
									</c:when>
									<c:when test="${ detail.jobNo eq 2 }">
										<label> <input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="1" name="jobNo" >??????/?????????
										</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="2" name="jobNo" checked >???????????????</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="3" name="jobNo" >??? ?????????</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="4" name="jobNo" >????????? ???</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="5" name="jobNo" >?????? ???????????????</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="6" name="jobNo" >?????? ??????</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="7" name="jobNo" >?????????
											????????????(DBA)</label>
										<br>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="8" name="jobNo" >????????????/????????????</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="9" name="jobNo" >????????? ????????????</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="10" name="jobNo" >??????</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="11" name="jobNo" >QA</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="12" name="jobNo" >???????????? ?????????</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="13" name="jobNo" >HW/????????????</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="14" name="jobNo" >SW/?????????</label>
									</c:when>
									<c:when test="${ detail.jobNo eq 3 }">
										<label> <input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="1" name="jobNo" >??????/?????????
										</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="2" name="jobNo" >???????????????</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="3" name="jobNo" checked >???
											?????????</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="4" name="jobNo" >????????? ???</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="5" name="jobNo" >?????? ???????????????</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="6" name="jobNo" >?????? ??????</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="7" name="jobNo" >?????????
											????????????(DBA)</label>
										<br>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="8" name="jobNo" >????????????/????????????</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="9" name="jobNo" >????????? ????????????</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="10" name="jobNo" >??????</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="11" name="jobNo" >QA</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="12" name="jobNo" >???????????? ?????????</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="13" name="jobNo" >HW/????????????</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="14" name="jobNo" >SW/?????????</label>
									</c:when>
									<c:when test="${ detail.jobNo eq 4 }">
										<label> <input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="1" name="jobNo" >??????/?????????
										</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="2" name="jobNo" >???????????????</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="3" name="jobNo" >??? ?????????</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="4" name="jobNo" checked >?????????
											???</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="5" name="jobNo" >?????? ???????????????</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="6" name="jobNo" >?????? ??????</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="7" name="jobNo" >?????????
											????????????(DBA)</label>
										<br>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="8" name="jobNo" >????????????/????????????</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="9" name="jobNo" >????????? ????????????</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="10" name="jobNo" >??????</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="11" name="jobNo" >QA</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="12" name="jobNo" >???????????? ?????????</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="13" name="jobNo" >HW/????????????</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="14" name="jobNo" >SW/?????????</label>
									</c:when>
									<c:when test="${ detail.jobNo eq 5 }">
										<label> <input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="1" name="jobNo" checked >??????/?????????
										</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="2" name="jobNo" >???????????????</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="3" name="jobNo" >??? ?????????</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="4" name="jobNo" >????????? ???</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="5" name="jobNo"  checked>??????
											???????????????</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="6" name="jobNo" >?????? ??????</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="7" name="jobNo" >?????????
											????????????(DBA)</label>
										<br>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="8" name="jobNo" >????????????/????????????</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="9" name="jobNo" >????????? ????????????</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="10" name="jobNo" >??????</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="11" name="jobNo" >QA</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="12" name="jobNo" >???????????? ?????????</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="13" name="jobNo" >HW/????????????</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="14" name="jobNo" >SW/?????????</label>
									</c:when>
									<c:when test="${ detail.jobNo eq 6 }">
										<label> <input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="1" name="jobNo" >??????/?????????
										</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="2" name="jobNo" >???????????????</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="3" name="jobNo" >??? ?????????</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="4" name="jobNo" >????????? ???</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="5" name="jobNo" >?????? ???????????????</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="6" name="jobNo"  checked>??????
											??????</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="7" name="jobNo" >?????????
											????????????(DBA)</label>
										<br>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="8" name="jobNo" >????????????/????????????</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="9" name="jobNo" >????????? ????????????</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="10" name="jobNo" >??????</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="11" name="jobNo" >QA</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="12" name="jobNo" >???????????? ?????????</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="13" name="jobNo" >HW/????????????</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="14" name="jobNo" >SW/?????????</label>
									</c:when>
									<c:when test="${ detail.jobNo eq 7 }">
										<label> <input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="1" name="jobNo" >??????/?????????
										</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="2" name="jobNo" >???????????????</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="3" name="jobNo" >??? ?????????</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="4" name="jobNo" >????????? ???</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="5" name="jobNo" >?????? ???????????????</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="6" name="jobNo" >?????? ??????</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="7" name="jobNo"  checked>?????????
											????????????(DBA)</label>
										<br>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="8" name="jobNo" >????????????/????????????</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="9" name="jobNo" >????????? ????????????</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="10" name="jobNo" >??????</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="11" name="jobNo" >QA</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="12" name="jobNo" >???????????? ?????????</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="13" name="jobNo" >HW/????????????</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="14" name="jobNo" >SW/?????????</label>
									</c:when>
									<c:when test="${ detail.jobNo eq 8 }">
										<label> <input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="1" name="jobNo" >??????/?????????
										</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="2" name="jobNo" >???????????????</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="3" name="jobNo" >??? ?????????</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="4" name="jobNo" >????????? ???</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="5" name="jobNo" >?????? ???????????????</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="6" name="jobNo" >?????? ??????</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="7" name="jobNo" >?????????
											????????????(DBA)</label>
										<br>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="8" name="jobNo"  checked>????????????/????????????</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="9" name="jobNo" >????????? ????????????</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="10" name="jobNo" >??????</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="11" name="jobNo" >QA</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="12" name="jobNo" >???????????? ?????????</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="13" name="jobNo" >HW/????????????</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="14" name="jobNo" >SW/?????????</label>
									</c:when>
									<c:when test="${ detail.jobNo eq 9 }">
										<label> <input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="1" name="jobNo" >??????/?????????
										</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="2" name="jobNo" >???????????????</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="3" name="jobNo" >??? ?????????</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="4" name="jobNo" >????????? ???</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="5" name="jobNo" >?????? ???????????????</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="6" name="jobNo" >?????? ??????</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="7" name="jobNo" >?????????
											????????????(DBA)</label>
										<br>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="8" name="jobNo" >????????????/????????????</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="9" name="jobNo"  checked>?????????
											????????????</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="10" name="jobNo" >??????</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="11" name="jobNo" >QA</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="12" name="jobNo" >???????????? ?????????</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="13" name="jobNo" >HW/????????????</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="14" name="jobNo" >SW/?????????</label>
									</c:when>
									<c:when test="${ detail.jobNo eq 10 }">
										<label> <input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="1" name="jobNo" >??????/?????????
										</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="2" name="jobNo" >???????????????</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="3" name="jobNo" >??? ?????????</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="4" name="jobNo" >????????? ???</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="5" name="jobNo" >?????? ???????????????</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="6" name="jobNo" >?????? ??????</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="7" name="jobNo" >?????????
											????????????(DBA)</label>
										<br>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="8" name="jobNo" >????????????/????????????</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="9" name="jobNo" >????????? ????????????</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="10" name="jobNo"  checked>??????</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="11" name="jobNo" >QA</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="12" name="jobNo" >???????????? ?????????</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="13" name="jobNo" >HW/????????????</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="14" name="jobNo" >SW/?????????</label>
									</c:when>
									<c:when test="${ detail.jobNo eq 11 }">
										<label> <input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="1" name="jobNo" >??????/?????????
										</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="2" name="jobNo" >???????????????</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="3" name="jobNo" >??? ?????????</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="4" name="jobNo" >????????? ???</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="5" name="jobNo" >?????? ???????????????</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="6" name="jobNo" >?????? ??????</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="7" name="jobNo" >?????????
											????????????(DBA)</label>
										<br>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="8" name="jobNo" >????????????/????????????</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="9" name="jobNo" >????????? ????????????</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="10" name="jobNo" >??????</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="11" name="jobNo"  cheked>QA</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="12" name="jobNo" >???????????? ?????????</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="13" name="jobNo" >HW/????????????</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="14" name="jobNo" >SW/?????????</label>
									</c:when>
									<c:when test="${ detail.jobNo eq 12 }">
										<label> <input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="1" name="jobNo" >??????/?????????
										</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="2" name="jobNo" >???????????????</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="3" name="jobNo" >??? ?????????</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="4" name="jobNo" >????????? ???</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="5" name="jobNo" >?????? ???????????????</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="6" name="jobNo" >?????? ??????</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="7" name="jobNo" >?????????
											????????????(DBA)</label>
										<br>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="8" name="jobNo" >????????????/????????????</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="9" name="jobNo" >????????? ????????????</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="10" name="jobNo" >??????</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="11" name="jobNo" >QA</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="12" name="jobNo"  checked>????????????
											?????????</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="13" name="jobNo" >HW/????????????</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="14" name="jobNo" >SW/?????????</label>
									</c:when>
									<c:when test="${ detail.jobNo eq 13 }">
										<label> <input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="1" name="jobNo" >??????/?????????
										</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="2" name="jobNo" >???????????????</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="3" name="jobNo" >??? ?????????</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="4" name="jobNo" >????????? ???</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="5" name="jobNo" >?????? ???????????????</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="6" name="jobNo" >?????? ??????</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="7" name="jobNo" >?????????
											????????????(DBA)</label>
										<br>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="8" name="jobNo" >????????????/????????????</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="9" name="jobNo" >????????? ????????????</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="10" name="jobNo" >??????</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="11" name="jobNo" >QA</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="12" name="jobNo" >???????????? ?????????</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="13" name="jobNo"  checked>HW/????????????</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="14" name="jobNo" >SW/?????????</label>
									</c:when>
									<c:when test="${ detail.jobNo eq 14 }">
										<label> <input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="1" name="jobNo" >??????/?????????
										</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="2" name="jobNo" >???????????????</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="3" name="jobNo" >??? ?????????</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="4" name="jobNo" >????????? ???</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="5" name="jobNo" >?????? ???????????????</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="6" name="jobNo" >?????? ??????</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="7" name="jobNo" >?????????
											????????????(DBA)</label>
										<br>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="8" name="jobNo" >????????????/????????????</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="9" name="jobNo" >????????? ????????????</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="10" name="jobNo" >??????</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="11" name="jobNo" >QA</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="12" name="jobNo" >???????????? ?????????</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="13" name="jobNo" >HW/????????????</label>
										<label><input
											style="width: 20px; height: 20px; border: 1px;" type="radio"
											id="jobNo" value="14" name="jobNo"  checked>SW/?????????</label>
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
										<label>????????? *</label> <input type="date"
											value="${ detail.careerHistoryList[status.index].carHireDate }"
											name="carHireDate" >
									</div>
								</div>
								<div class="col-lg-3 col-md-3 col-md-3 col-xs-12">
									<div class="jp_adp_form_wrapper">
										<label>????????? *</label> <input type="date"
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
													?????? ?????? ???</label>
											</c:when>
											<c:otherwise>
												<label><input
													style="width: 17px; height: 17px; border: 1px;"
													type="checkbox" name="carStatus" > ?????? ?????? ???</label>
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
										<label>???????????? ?????????</label> <input type="date"
											value="${ detail.careerHistoryList[status.index].projectStartDate }"
											name="projectStartDate" >
									</div>
								</div>
								<div class="col-lg-3 col-md-3 col-md-3 col-xs-12">
									<div class="jp_adp_form_wrapper">
										<label>???????????? ?????????</label> <input type="date"
											value="${ detail.careerHistoryList[status.index].projectEndDate }"
											name="projectEndDate" >
									</div>
								</div>
							</div>

							<div class="jp_adp_form_wrapper">
								
										
										<h3>??????????????? ??????</h3>
										<br> ??????, ???????????? ????????? ??????????????? ?????? or ?????? ???????????? ?????? ??? ?????? ????????? ????????? ??? ??????
										????????? ????????? ??????????????????. <input type="text"
											value="${ detail.portFolioList[status.index].potLinkAddress }"
											name="potLinkAddress" >
									

										<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
											<div class="jp_adp_choose_resume">
												<h3>??????????????? ??????</h3>
												<div class="custom-input">
													<span><i class="fa fa-upload"></i>????????????</span> <input
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
								<h3>???????????????</h3>
								<c:choose>
									<c:when
										test="${ detail.itemAndContentList[status.index].selfIntroItemNo eq 1 }">
										<select name="selfIntroItemNo" >
											<option value="">-- ???????????? ?????? --</option>
											<option value="1" selected>????????????</option>
											<option value="2">????????????</option>
											<option value="3">???????????????</option>
											<option value="4">???????????????</option>
										</select>
									</c:when>
									<c:when
										test="${ detail.itemAndContentList[status.index].selfIntroItemNo eq 2 }">
										<select name="selfIntroItemNo" >
											<option value="">-- ???????????? ?????? --</option>
											<option value="1">????????????</option>
											<option value="2" selected>????????????</option>
											<option value="3">???????????????</option>
											<option value="4">???????????????</option>
										</select>
									</c:when>
									<c:when
										test="${ detail.itemAndContentList[status.index].selfIntroItemNo eq 3 }">
										<select name="selfIntroItemNo" >
											<option value="">-- ???????????? ?????? --</option>
											<option value="1">????????????</option>
											<option value="2">????????????</option>
											<option value="3" selected>???????????????</option>
											<option value="4">???????????????</option>
										</select>
									</c:when>
									<c:when
										test="${ detail.itemAndContentList[status.index].selfIntroItemNo eq 4 }">
										<select name="selfIntroItemNo" >
											<option value="">-- ???????????? ?????? --</option>
											<option value="1">????????????</option>
											<option value="2">????????????</option>
											<option value="3">???????????????</option>
											<option value="4" selected>???????????????</option>
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
										<h3>????????? ??????</h3>
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
										<label>????????? ?????????</label> <input type="text"
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
										<h3>?????? ??????</h3>
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
										<label>?????? ?????????</label> <input type="date"
											value="${ detail.educationHistoryList[status.index].eduStartDate }"
											name="eduStartDate" >
									</div>
								</div>
								<div class="col-lg-3 col-md-3 col-md-3 col-xs-12">
									<div class="jp_adp_form_wrapper">
										<label>?????? ?????????</label> <input type="date"
											value="${ detail.educationHistoryList[status.index].eduEndDate }"
											name="eduEndDate" >
									</div>
								</div>
								<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
									<div class="jp_adp_textarea_main_wrapper">
										<h5>?????? ??????</h5>
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
										<h3>?????? ??????</h3>
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
										<label>?????? ??????</label> <input type="date"
											value="${ detail.awardHistoryList[status.index].awdDate }"
											name="awdDate" >
									</div>
								</div>
								<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
									<div class="jp_adp_textarea_main_wrapper">
										<h5>?????? ??????</h5>
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
					<button id="confirmUpdate" class="btn-info" type="submit">?????? ??????</button>
					<button id="cancleUpdate" class="btn-info" value="back" onClick="history.go(-1)">????????????</button>
			</div>
	</form>

	<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 jp_cl_right_bar"></div>
	<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 jp_cl_right_bar"></div>
	
	<jsp:include page="../common/footer.jsp" />
</body>
</html>