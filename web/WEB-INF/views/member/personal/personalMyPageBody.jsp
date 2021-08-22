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
</head>

<body>

	<!-- 상단 검은색 -->
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
									<li><a href="${ pageContext.servletContext.contextPath }/mainPage/InMember">Home</a></li>
									<li>></li>
									<li>개인 마이페이지</li>
								</ul>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<!-- 사이드바 -->

	<div class="jp_listing_sidebar_main_wrapper">
		<div class="container">
			<div class="row">
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
														href="${ pageContext.servletContext.contextPath }/personal/apply/select">지원현황</a>
												</p>
												<br> <br>
												<p>
													<a
														href="${ pageContext.servletContext.contextPath }/scout/myPageList/servlet">스카우트현황</a>
												</p>
												<br> <br>
												<p>
													<a href="${ pageContext.servletContext.contextPath }/personal/bookmark/select">북마크</a>
												</p>
												<br> <br>
												<p>
													<a href="${ pageContext.servletContext.contextPath }/login/member/withdrawal/yn">회원탈퇴</a>
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

				<!-- 스카우트 현황 파란색상자 3개 -->

				<div class="col-lg-9 col-md-9 col-sm-12 col-xs-12">
					<div class="row">
						<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
							<div class="jp_counter_main_wrapper">
								<br> <br>
								<h1 align="left">스카우트 현황</h1>
								<br>
								<div class="container">
									<div class="gc_counter_cont_wrapper">
										<div class="count-description">
											<span class="timer"><c:out
													value="${ requestScope.shallowBrowsingNum }" /></span> <i
												class="fa"></i>
											<h5 class="con1">얕은 열람</h5>
										</div>
									</div>
									<div class="gc_counter_cont_wrapper2">
										<div class="count-description">
											<span><c:out value="${ requestScope.deepBrowsingNum }" /></span>
											<i class="fa"></i>
											<h5 class="con2">깊은 열람</h5>
										</div>
									</div>
									<div class="gc_counter_cont_wrapper3">
										<div class="count-description">
											<span><c:out
													value="${ requestScope.interviewProposalNum }" /></span> <i
												class="fa"></i>
											<h5 class="con3">면접 제안</h5>
										</div>
									</div>
								</div>
							</div>
						</div>
						<br>
					</div>
				</div>

				<!-- 지원현황 / 북마크 파란색상자 3개 -->

				<div class="col-lg-9 col-md-9 col-sm-12 col-xs-12">
					<div class="row">
						<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
							<div class="jp_counter_main_wrapper">
								<br> <br>
								<h1 align="left">지원현황 / 북마크</h1>
								<br>
								<div class="container">
									<div class="gc_counter_cont_wrapper">
										<div class="count-description">
											<span><c:out
													value="${ requestScope.applicationCompletedNum }" /></span><i
												class="fa"></i>
											<h5 class="con1">지원 완료</h5>
										</div>
									</div>
									<div class="gc_counter_cont_wrapper2">
										<div class="count-description">
											<span><c:out
													value="${ requestScope.applicationCanceledNum }" /></span> <i
												class="fa"></i>
											<h5 class="con2">지원 취소</h5>
										</div>
									</div>
									<div class="gc_counter_cont_wrapper3">
										<div class="count-description">
											<span><c:out value="${ requestScope.bookmarkNum }" /></span>
											<i class="fa"></i>
											<h5 class="con3">북마크</h5>
										</div>
									</div>
								</div>
								<br>
								<br>
							</div>
						</div>
						<br>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>