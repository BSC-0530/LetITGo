<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Let IT Go</title>
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
	<jsp:include page="../common/header/companyHeader.jsp" />

	<div class="jp_tittle_main_wrapper">
		<div class="jp_tittle_img_overlay"></div>
		<div class="container">
			<div class="row">
				<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
					<div class="jp_tittle_heading_wrapper">
						<div class="jp_tittle_heading">
							<h2>?????? ??????</h2>
						</div>
						<div class="jp_tittle_breadcrumb_main_wrapper">
							<div class="jp_tittle_breadcrumb_wrapper">
								<ul>
									<li><a
										href="${ pageContext.servletContext.contextPath }/mainPage/CoMember">Home</a></li>
									<li>></li>
									<li><a
										href="${ pageContext.servletContext.contextPath }/company/myPage/main">??????
											???????????????</a></li>
									<li>></li>
									<li><a
										href="${ pageContext.servletContext.contextPath }/company/refundHistory/select">??????
											??????</a></li>
									<li>></li>
									<li>?????? ??????</li>
								</ul>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<div class="jp_listing_sidebar_main_wrapper">
		<div class="container">
			<div class="row">
				<!-- ???????????? -->
				<div
					class="col-lg-3 col-md-3 col-sm-12 col-xs-12 hidden-sm hidden-xs">
					<div class="row">
						<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
							<div class="jp_rightside_job_categories_wrapper">
								<div class="jp_rightside_job_categories_heading">
									<h4 style="font-weight: bold">????????????</h4>
								</div>
								<div class="jp_rightside_job_categories_content">
									<div class="handyman_sec1_wrapper">
										<div class="content">
											<div class="box">
												<p>
													<a
														href="${ pageContext.servletContext.contextPath }/coMem/infomationServlet">????????????</a>
												</p>
												<br> <br>
												<p>
													<a
														href="${ pageContext.servletContext.contextPath }/companyTestServlet">????????????</a>
												</p>
												<br> <br>
												<p>
													<a
														href="${ pageContext.servletContext.contextPath }/company/paymentHistory/select">????????????</a>
												</p>
												<br> <br>
												<p>
													<a
														href="${ pageContext.servletContext.contextPath }/company/refundHistory/select">????????????</a>
												</p>
												<br> <br>
												<p>
													<a
														href="${ pageContext.servletContext.contextPath }/company/jobPostingHistory/select">????????????</a>
												</p>
												<br> <br>
												<p>
													<a
														href="${ pageContext.servletContext.contextPath }/Company/Scout/List/Select">??????????????????</a>
												</p>
												<br> <br>
												<p>
													<a
														href="${ pageContext.servletContext.contextPath }/company/scout/wish/select">???????????????</a>
												</p>
												<br> <br>
												<p>
													<a
														href="${ pageContext.servletContext.contextPath }/login/comember/withdrawal/yn">????????????</a>
												</p>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				
				<!-- ??????????????? -->

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
										<h1>?????? ??????</h1>
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
			<br> <br>
		</div>
	</div>




	<jsp:include page="../common/footer.jsp" />
</body>
</html>