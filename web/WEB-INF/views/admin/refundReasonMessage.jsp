<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Let IT Go admin</title>
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
<script type="text/javascript" charset="utf8"
	src="https://cdn.datatables.net/1.10.25/js/jquery.dataTables.js"></script>
<link rel="stylesheet" type="text/css"
	href="https://cdn.datatables.net/1.10.25/css/jquery.dataTables.css">

</head>
<body>
	<div class="jp_listing_sidebar_main_wrapper">
		<div class="container">
			<div class="row">
				<div
					class="col-lg-3 col-md-3 col-sm-12 col-xs-12 hidden-sm hidden-xs">
					<div class="row">
						<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
							<div class="jp_rightside_job_categories_wrapper">
								<div class="jp_rightside_job_categories_heading">
									<h4 style="font-weight: bold">Admin</h4>
								</div>
								<div class="jp_rightside_job_categories_content">
									<div class="handyman_sec1_wrapper">
										<div class="content">

											<div class="box">
												<h3 style="font-weight: bold">회원정보</h3>
												<p>
												<p align="left">
													<a
														href="${ pageContext.servletContext.contextPath }/selfintroductionitem/list">자기소개서
														항목 관리</a>
												</p>
												<p align="left">
													<a
														href="${ pageContext.servletContext.contextPath }/jobfield/list">직무분야
														관리</a>
												</p>
												<p align="left">
													<a
														href="${ pageContext.servletContext.contextPath }/skills/list">기술
														관리</a>
												</p>
												<p align="left">
													<a
														href="${ pageContext.servletContext.contextPath }/skillscategory/list">기술
														카테고리 관리</a>
												</p>
												<br> <br>
												<h3 style="font-weight: bold">결제 관리</h3>
												<p>
												<p align="left">
													<a
														href="${ pageContext.servletContext.contextPath }/admin/product/list">상품
														관리</a>
												</p>
												<p align="left">
													<a
														href="${ pageContext.servletContext.contextPath }/admin/payment/select">결제
														내역 조회</a>
												</p>
												<p align="left">
													<a
														href="${ pageContext.servletContext.contextPath }/admin/refund/select">환불
														요청 관리</a>
												</p>
												<br> <br>
												<h3 style="font-weight: bold">기업 요청 관리</h3>
												<p>
												<p align="left">
													<a
														href="${ pageContext.servletContext.contextPath }/admin/post/insertRequest/select">공고
														등록 요청</a>
												</p>
												<p align="left">
													<a
														href="${ pageContext.servletContext.contextPath }/admin/post/updateRequest/select">공고
														수정 요청</a>
												</p>
												<p align="left">
													<a
														href="${ pageContext.servletContext.contextPath }/info/requestList">기업
														회원 가입 요청</a>
												</p>
												<p align="left">
													<a
														href="${ pageContext.servletContext.contextPath }/admin/request/comInfo">기업
														정보 변경 요청</a>
												</p>
												<br> <br>
												<h3 style="font-weight: bold">회원 탈퇴</h3>
												<p>
												<p align="left">
													<a
														href="${ pageContext.servletContext.contextPath }/member/withdrawal">회원
														탈퇴 사유 조회</a>
												</p>
												<br> <br>
												<h3 style="font-weight: bold">게시물 관리</h3>
												<p>
												<p align="left">
													<a
														href="${ pageContext.servletContext.contextPath }/admin/notice/manger/servlet">공지사항
														관리</a>
												</p>
												<p align="left">
													<a
														href="${ pageContext.servletContext.contextPath }/personalinfopolicy/list">개인정보
														처리 방침, 이용약관 관리</a>
												</p>
												<br> <br>
												<h3 style="font-weight: bold">1:1 문의</h3>
												<p>
												<p align="left">
													<a
														href="${ pageContext.servletContext.contextPath }/admin/inquiry/select">1:1
														문의 조회</a>
												</p>
												<p align="left">
													<a
														href="${ pageContext.servletContext.contextPath }/admin/Category/Page">1:1
														문의 카테고리 관리</a>
												</p>
												<br> <br>
												<div align="center" style="background-color: green"
													style="color:white">
													<ul>
														<li><a
															href="${ pageContext.servletContext.contextPath }/member/logout">LOG
																OUT</a></li>
													</ul>
												</div>
											</div>
										</div>
									</div>
									
								</div>
							</div>
						
						
						</div>
					</div>
				</div>
				
				<br>
				
				<!-- 환불사유란 -->
				
				<div style="width:800px;" class="jp_contact_form_main_wrapper">
					<div class="container">
						<div class="row">
							<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
								<div class="jp_contact_form_heading_wrapper"></div>
							</div>
							<div class="col-lg-8 col-md-8 col-sm-12 col-xs-12">
								<div class="jp_contact_form_box">
									<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12"></div>
									<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
										<h1>환불 사유</h1>
										<div
											class="jp_contact_inputs_wrapper jp_contact_inputs4_wrapper">
											<textarea name="refundMessage" rows="6" readonly><c:out
													value="${ requestScope.refundMessage }" /></textarea>
										</div>
									</div>

								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			
			
		</div>
	</div>

</body>
</html>