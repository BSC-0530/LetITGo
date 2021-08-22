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

	<jsp:include page="../../common/header/personalHeader.jsp" />
	
	<div class="jp_tittle_main_wrapper">
		<div class="jp_tittle_img_overlay"></div>
		<div class="container">
			<div class="row">
				<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
					<div class="jp_tittle_heading_wrapper">
						<div class="jp_tittle_heading">
							<h2>북마크</h2>
						</div>
						<div class="jp_tittle_breadcrumb_main_wrapper">
							<div class="jp_tittle_breadcrumb_wrapper">
								<ul>
									<li><a href="${ pageContext.servletContext.contextPath }/mainPage/InMember">Home</a></li>
									<li>></li>
									<li><a href="${ pageContext.servletContext.contextPath }/personal/myPage/select">개인 마이페이지</a></li>
									<li>></li>
									<li>북마크</li>
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
				<div style="height: 1000px;"
					class="col-lg-3 col-md-3 col-sm-12 col-xs-12 hidden-sm hidden-xs">
					<div class="row">
						<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
							<div class="jp_rightside_job_categories_wrapper">
								<div class="jp_rightside_job_categories_heading">
									<h4 align="left" style="font-weight: bold">북마크</h4>
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
					<h3>북마크 목록</h3>
				</div>

				<c:forEach items="${ bookmarkList }" var="bm">

					<div class="col-lg-9 col-md-9 col-sm-9 col-xs-12 jp_cl_right_bar">
						<div class="row">
							<div class="col-lg-9 col-md-9 col-sm-9 col-xs-12"></div>
							<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
								<div class="jp_recent_resume_box_wrapper">

									<div class="jp_recent_resume_cont_wrapper"
										style="cursor: pointer;" onClick="onDetail(this);">
										<input type="hidden" value="${ bm.jobPostNo }">
										<h3>
											<c:out value="${ bm.coComName }"></c:out>
										</h3>
									</div>
									<div class="jp_recent_resume_btn_wrapper"
										onClick="onDelete(this);">
										<input type="hidden" value="${ bm.jobPostNo }">
										<ul>
											<li><a href="#">북마크 삭제</a></li>
										</ul>
									</div>


								</div>
							</div>
						</div>

					</div>


				</c:forEach>

			</div>
		</div>
	</div>
	
	<script>
		function onDelete(div) {
			const jobPostNo = div.children[0].value;
			alert('북마크 목록에서 삭제되었습니다.');
			location.href = "${ pageContext.servletContext.contextPath }/jobposting/bookmark/delete?jobPostNo=" + jobPostNo;
		}
	</script>
	
	<jsp:include page="../../common/footer.jsp" />
</body>
</html>