<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
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
<link rel="stylesheet" type="text/css"
	href="${ pageContext.servletContext.contextPath }/resources/css/letitgo/letitgo.css" />
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<link rel="stylesheet" type="text/css"
	href="${ pageContext.servletContext.contextPath }/resources/css/letitgo/letitgo.css" />
<script type="text/javascript" charset="utf8"
	src="https://cdn.datatables.net/1.10.25/js/jquery.dataTables.js"></script>
<link rel="stylesheet" type="text/css"
	href="https://cdn.datatables.net/1.10.25/css/jquery.dataTables.css">
</head>
<body>
	<!-- ?????? ????????? ?????? -->
	<div class="jp_tittle_main_wrapper">
		<div class="jp_tittle_img_overlay"></div>
		<div class="container">
			<div class="row">
				<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
					<div class="jp_tittle_heading_wrapper">
						<div class="jp_tittle_heading">
							<h2>?????? ???????????????</h2>
						</div>
						<div class="jp_tittle_breadcrumb_main_wrapper">
							<div class="jp_tittle_breadcrumb_wrapper">
								<ul>
									<li><a href="#">Home</a></li>
									<li>></li>
									<li><a
										href="${ pageContext.servletContext.contextPath }/personal/myPage/select">??????
											???????????????</a></li>
									<li>></li>
									<li>???????????? ?????? ??????</li>
								</ul>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!--  -->
	<div style="height: 1000px;"
		class="col-lg-3 col-md-3 col-sm-12 col-xs-12 hidden-sm hidden-xs">
		<div class="row">
			<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
				<div class="jp_rightside_job_categories_wrapper">
					<div class="jp_rightside_job_categories_heading">
						<h4 align="left" style="font-weight: bold">My Page</h4>
					</div>
					<div class="jp_rightside_job_categories_content">
						<div class="handyman_sec1_wrapper">
							<div class="content">
								<div class="box">
									<p>
										<a
											href="${ pageContext.servletContext.contextPath }/personalMyInfo">????????????</a>
									</p>
									<br> <br>
									<p>
										<a
											href="${ pageContext.servletContext.contextPath }/personal/apply/select">??????
											??????</a>
									</p>
									<br> <br>
									<p>
										<a href="${ pageContext.servletContext.contextPath }">??????????????????</a>
									</p>
									<br> <br>
									<p>
										<a
											href="${ pageContext.servletContext.contextPath }/login/member/withdrawal/yn">????????????</a>
									</p>
									<br> <br>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- body?????? -->
	<form
		action="${ pageContext.servletContext.contextPath }/member/personal/modifyinfo"
		method="post">
		<div class="col-lg-9 col-md-9 col-sm-12 col-xs-12">
			<div class="row">
				<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
					<div class="jp_listing_tabs_wrapper">
						<label style="font-size: 30px;">???????????? ?????? ??????</label><br> 
						<img
							alt="?????????????????????" src="/let/resources/image/bmw.png"
							style="width: 300px; height: 300px">
						<!--                             ????????? ?????? ???????????? ??? -->
						<div class="tab-pane fade in active register_left_form"
							id="contentOne-1">
						<div class="form-group col-md-6 col-sm-6 col-xs-12 custom_input">
						<input type="file" name="changeImage" id="changeImage" required>
						<p></p>
						<p>?????? ??? ?????????</p>
						</div>
							<div class="jp_regiter_top_heading"></div>
							<div class="row">
								<!--Form Group-->
								<div class="form-group col-md-6 col-sm-6 col-xs-12">
									<input type="hidden" name="memNo"
										value="${ requestScope.memNo }">
								</div>
								<div class="form-group col-md-6 col-sm-6 col-xs-12">
									<input type="text" name="personalEmail" placeholder="?????????"
										style="text-transform: lowercase;">
								</div>
								<div class="form-group col-md-6 col-sm-6 col-xs-12">
									<input type="text" name="personalName" placeholder="??????"
										style="text-transform: lowercase;">
								</div>
								<div class="form-group col-md-6 col-sm-6 col-xs-12">
									<input type="text" name="personalPhone" placeholder="phone"
										style="text-transform: lowercase;">
								</div>
							</div>
						</div>
						<div class="jp_listing_tabs_wrapper">
							<label style="font-size: 30px;">??????????????????</label><br>
							<c:if test="${requestScope.restrictedCompany }">
								<c:forEach var="restricedComapny"
									items="${ requestScope.restricedCompany }">
									<c:out value="d${ restricedComapny.coComName }"></c:out>
								</c:forEach>
							</c:if>
						</div>
					</div>
				</div>
				<br>

				<button type="reset" class="btn btn-info" id="coInfoChange"
					style="float: right; background: red; border: 0px; margin: 5px">??????</button>
				<button type="submit" class="btn btn-info" id="coInfoChange"
					style="float: right; background: skyblue; margin: 5px">??????</button>
				</div>
			</div>
	</form>

</body>
</html>