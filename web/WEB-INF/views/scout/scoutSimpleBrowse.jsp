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
	<jsp:include page="../common/header/companyHeader.jsp" />

	<div class="jp_tittle_main_wrapper">
		<div class="jp_tittle_img_overlay"></div>
		<div class="container">
			<div class="row">
				<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
					<div class="jp_tittle_heading_wrapper">
						<div class="jp_tittle_heading">
							<h2>기업 마이페이지</h2>
						</div>
						<div class="jp_tittle_breadcrumb_main_wrapper">
							<div class="jp_tittle_breadcrumb_wrapper">
								<ul>
									<li><a href="#">Home</a></li>
									<li><a href="#">기업 마이페이지</a></li>
									<li>기업 마이페이지</li>
								</ul>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="jp_cp_profile_main_wrapper">
		<div class="container">
			<div class="row">
				<div class="col-lg-4 col-md-4 col-sm-12 col-xs-12">
					<div class="jp_cp_left_side_wrapper">
						<div class="jp_cp_left_pro_wallpaper">
							<img
								src="${ pageContext.servletContext.contextPath }/resources/image/bmw.png"
								style="width: 300px; height: 300px;" alt="post_img" />
							<h2>이름와야함</h2>
							<p>
								<br>
							</p>
						</div>
						<div class="jp_cp_rd_wrapper">
							<br> <br> <br> 
							<ul>
								<li><a href="#"><i class="fa fa-download"></i> &nbsp;상세 이력서 보기</a></li>
								<li><a href="#"><i class="fa fa-phone"></i> &nbsp;후보자찜하기</a></li>
							</ul>
						</div>
					</div>
				</div>
				<div class="col-lg-8 col-md-8 col-sm-12 col-xs-12">
					<div class="jp_cp_right_side_wrapper">
						<div class="jp_cp_right_side_inner_wrapper">
							<h2>인재 소개란</h2>
							<table>
								<tbody>
									<tr>
										<td class="td-w25">이름</td>
										<td class="td-w10">:</td>
										<td class="td-w65">이름와야함</td>
									</tr>
									<tr>
										<td class="td-w25">보유기술</td>
										<td class="td-w10">:</td>
										<td class="td-w65">보유기술와야함</td>
									</tr>
									<tr>
										<td class="td-w25">직무</td>
										<td class="td-w10">:</td>
										<td class="td-w65">직무밸류</td>
									</tr>
									<tr>
										<td class="td-w25">경력</td>
										<td class="td-w10">:</td>
										<td class="td-w65">경력밸류</td>
									</tr>
								</tbody>
							</table>
						</div>
					</div>
					<!-- 					이쪽에 상세이력서 폼 추가하기 -->
				</div>

			</div>

		</div>
	</div>


	<jsp:include page="../common/footer.jsp" />

	<%-- 	<script src="${ pageContext.servletContext.contextPath }/resources/js/jquery_min.js"></script> --%>
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<script type="text/javascript" src="../../../resources/js/bootstrap.js"></script>
	<script src="/resources/js/jquery_min.js"></script>
	<script src="/resources/js/bootstrap.js"></script>
	<script src="/resources/js/jquery.menu-aim.js"></script>
	<script src="/resources/js/jquery.countTo.js"></script>
	<script src="/resources/js/jquery.inview.min.js"></script>
	<script src="/resources/js/owl.carousel.js"></script>
	<script src="/resources/js/modernizr.js"></script>
	<script src="/resources/js/jquery.magnific-popup.js"></script>
	<script src="/resources/js/custom_II.js"></script>
</body>
</html>