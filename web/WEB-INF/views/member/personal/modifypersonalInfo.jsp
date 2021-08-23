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
	<!-- 상단 검은색 바탕 -->
	<div class="jp_tittle_main_wrapper">
		<div class="jp_tittle_img_overlay"></div>
		<div class="container">
			<div class="row">
				<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
					<div class="jp_tittle_heading_wrapper">
						<div class="jp_tittle_heading">
							<h2>개인 마이페이지</h2>
						</div>
						<div class="jp_tittle_breadcrumb_main_wrapper">
							<div class="jp_tittle_breadcrumb_wrapper">
								<ul>
									<li><a href="#">Home</a></li>
									<li>></li>
									<li><a
										href="${ pageContext.servletContext.contextPath }/personal/myPage/select">개인
											마이페이지</a></li>
									<li>></li>
									<li>개인정보 정보 수정</li>
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
											href="${ pageContext.servletContext.contextPath }/personalMyInfo">회원정보</a>
									</p>
									<br> <br>
									<p>
										<a
											href="${ pageContext.servletContext.contextPath }/personal/apply/select">지원
											현황</a>
									</p>
									<br> <br>
									<p>
										<a href="${ pageContext.servletContext.contextPath }">스카우트현황</a>
									</p>
									<br> <br>
									<p>
										<a
											href="${ pageContext.servletContext.contextPath }/login/member/withdrawal/yn">회원탈퇴</a>
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
	<!-- body시작 -->
	<form
		action="${ pageContext.servletContext.contextPath }/member/personal/modifyinfo"
		method="post">
		<div class="col-lg-9 col-md-9 col-sm-12 col-xs-12">
			<div class="row">
				<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
					<div class="jp_listing_tabs_wrapper">
						<label style="font-size: 30px;">개인회원 정보 수정</label><br> 
						<img
							alt="대표이미지없음" src="/let/resources/image/bmw.png"
							style="width: 300px; height: 300px">
						<!--                             이거는 이제 정보뜨는 칸 -->
						<div class="tab-pane fade in active register_left_form"
							id="contentOne-1">
						<div class="form-group col-md-6 col-sm-6 col-xs-12 custom_input">
						<input type="file" name="changeImage" id="changeImage" required>
						<p></p>
						<p>변경 할 이미지</p>
						</div>
							<div class="jp_regiter_top_heading"></div>
							<div class="row">
								<!--Form Group-->
								<div class="form-group col-md-6 col-sm-6 col-xs-12">
									<input type="hidden" name="memNo"
										value="${ requestScope.memNo }">
								</div>
								<div class="form-group col-md-6 col-sm-6 col-xs-12">
									<input type="text" name="personalEmail" placeholder="이메일"
										style="text-transform: lowercase;">
								</div>
								<div class="form-group col-md-6 col-sm-6 col-xs-12">
									<input type="text" name="personalName" placeholder="이름"
										style="text-transform: lowercase;">
								</div>
								<div class="form-group col-md-6 col-sm-6 col-xs-12">
									<input type="text" name="personalPhone" placeholder="phone"
										style="text-transform: lowercase;">
								</div>
							</div>
						</div>
						<div class="jp_listing_tabs_wrapper">
							<label style="font-size: 30px;">열람제한기업</label><br>
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
					style="float: right; background: red; border: 0px; margin: 5px">취소</button>
				<button type="submit" class="btn btn-info" id="coInfoChange"
					style="float: right; background: skyblue; margin: 5px">확인</button>
				</div>
			</div>
	</form>

</body>
</html>