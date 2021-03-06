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
<link rel="stylesheet" type="text/css" href="${ pageContext.servletContext.contextPath }/resources/css/letitgo/letitgo.css"/>
</head>

<body>

	<jsp:include page="../common/header/companyHeader.jsp"/>

<!-- ======================================================================== -->

	<div class="jp_tittle_main_wrapper">
		<div class="jp_tittle_img_overlay"></div>
		<div class="container">
			<div class="row">
				<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
					<div class="jp_tittle_heading_wrapper">
						<div class="jp_tittle_heading">
							<h2>???????????????</h2>
						</div>
						<div class="jp_tittle_breadcrumb_main_wrapper">
							<div class="jp_tittle_breadcrumb_wrapper">
								<ul>
									<li><a href="${ pageContext.servletContext.contextPath }/mainPage/CoMember">Home</a></li>
									<li>></li>
									<li><a href="${ pageContext.servletContext.contextPath }/company/myPage/main">?????? ???????????????</a></li>
									<li>></li>
									<li>???????????????</li>
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
				<div
					class="col-lg-3 col-md-3 col-sm-12 col-xs-12 hidden-sm hidden-xs">
					<div class="row">
						<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
							<div class="jp_rightside_job_categories_wrapper">
								<div class="jp_rightside_job_categories_heading">
									<h4 style="font-weight: bold">???????????????</h4>
								</div>
								<div class="jp_rightside_job_categories_content">
									<div class="handyman_sec1_wrapper">
										<div class="content">
											<div class="box">
												<p>
													<a href="${ pageContext.servletContext.contextPath }/coMem/infomationServlet">????????????</a>
												</p>
												<br>
												<br>
												<p>
													<a
														href="${ pageContext.servletContext.contextPath }/companyTestServlet">????????????</a>
												</p>
												<br>
												<br>

												<p>
													<a
														href="${ pageContext.servletContext.contextPath }/company/paymentHistory/select">????????????</a>
												</p>
												<br>
												<br>
												<p>
													<a
														href="${ pageContext.servletContext.contextPath }/company/refundHistory/select">????????????</a>
												</p>
												<br>
												<br>
												<p>

													<a
														href="${ pageContext.servletContext.contextPath }/company/jobPostingHistory/select">????????????</a>
												</p>
												<br>
												<br>
												<p>
													<a
														href="${ pageContext.servletContext.contextPath }/Company/Scout/List/Select">??????????????????</a>
												</p>
												<br>
												<br>
												<p>
													<a href="${ pageContext.servletContext.contextPath }/company/scout/wish/select">???????????????</a>
												</p>
												<br>
												<br>
												<p>
													<a href="${ pageContext.servletContext.contextPath }/login/member/withdrawal/yn">????????????</a>
												</p>
												<br>
												<br>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="col-lg-9 col-md-9 col-sm-9 col-xs-12 jp_cl_right_bar">
				<br>
					<h3>?????? ?????????</h3>
				</div>


					<div class="col-lg-9 col-md-9 col-sm-9 col-xs-12 jp_cl_right_bar">
						<div class="row">
				<c:forEach items="${ requestScope.wishInfoList }" var="info">
							<div class="col-lg-9 col-md-9 col-sm-9 col-xs-12"></div>
							<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
								<div class="jp_recent_resume_box_wrapper">

									<div class="jp_recent_resume_cont_wrapper"
										style="cursor: pointer;" onClick="onDetail(this);">
										<input type="hidden" value="${ info.resumeNo }">
										<h3>
											<c:out value="${ info.memName }"></c:out>
										</h3>
										<p>
											<i class="fa fa-folder-open-o"></i>
											???????????? : 
										<c:forEach items="${ wishSkillsList }" var="skillsList">
											<c:out value="${ skillsList.skills }"></c:out>
										</c:forEach>
										</p>
									</div>
									<div class="jp_recent_resume_btn_wrapper"
										onClick="onDelete(this);">
										<input type="hidden" value="${ info.resumeNo }">
										<ul>
											<li><a href="#">????????? ??????</a></li>
										</ul>
									</div>


								</div>
							</div>
				</c:forEach>
						</div>

					</div>



			</div>
		</div>
	</div>
	
	<script>
		function onDelete(div) {
			const resumeNo = div.children[0].value;
			alert('????????? ???????????? ?????????????????????.');
			location.href = "${ pageContext.servletContext.contextPath }/company/scout/wish/delete?resumeNo=" + resumeNo;
		}
		
		function onDetail(div) {
			const resumeNo = div.children[0].value;
			location.href = "${ pageContext.servletContext.contextPath }/detail/browse/select?resumeNo=" + resumeNo;
		}
	</script>

	<jsp:include page="../common/footer.jsp" />
</body>
</html>