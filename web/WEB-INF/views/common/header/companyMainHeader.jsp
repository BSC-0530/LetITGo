
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
	src="${ pageContext.servletContext.contextPath }/resources/js/payment/paymentMainpage.js">
</script>	
	
</head>
<body>

	<script src="${ pageContext.servletContext.contextPath }/resources/js/donggi/select.js"></script>

	<!-- Header Wrapper Start -->
	<div class="jp_top_header_img_wrapper">
		<div class="jp_slide_img_overlay"></div>
		<div class="gc_main_menu_wrapper">
			<div class="container-fluid">
				<div class="row">
					<div
						class="col-lg-2 col-md-2 col-sm-12 col-xs-12 hidden-xs hidden-sm full_width">
						<div class="gc_header_wrapper">
							<div class="gc_logo">
								<a href="index.jsp"><img  src="${ pageContext.servletContext.contextPath }/resources/image/로고.PNG" alt="Logo" title="Job Pro" class="img-responsive"></a>
							</div>
						</div>
					</div>
					<div
						class="col-lg-7 col-md-8 col-sm-12 col-xs-12 center_responsive">
						<div class="header-area hidden-menu-bar stick" id="sticker">
							<!-- mainmenu start -->
							<div class="mainmenu">

								<ul class="float_left">
									<li class="parent gc_main_navigation"><a href="${ pageContext.servletContext.contextPath }/mainPage/CoMember" class="gc_main_navigation">마이페이지</a></li>
									<li class="has-mega gc_main_navigation"><a href="${ pageContext.servletContext.contextPath }/productList/select" id="paymentMainPage" class="gc_main_navigation">채용공고</a></li>
									<li class="has-mega gc_main_navigation"><a href="${ pageContext.servletContext.contextPath }/main/Scout/List" class="gc_main_navigation">스카우트</a> </li>
									<li class="has-mega gc_main_navigation"><a href="${ pageContext.servletContext.contextPath }/productList/select" id="personalMyPage" class="gc_main_navigation" >결제페이지</a></li>
									<li class="gc_main_navigation parent"><a href="${ pageContext.servletContext.contextPath }/companyTestServlet" class="gc_main_navigation">1:1 문의</a></li>
								</ul>
							</div>
						</div>
					</div>
					<div class="col-lg-3 col-md-4 col-sm-12 col-xs-12 hidden-sm hidden-xs">
						<div class="jp_navi_right_btn_wrapper">
							<ul>
								<li><a
										href="${ pageContext.servletContext.contextPath }/member/logout"
										align="center"
										style="background: rgb(226, 113, 109); margin-right: 30px; border-radius: 10px; width: 130px">Log
											In</a></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>

		<div class="jp_banner_heading_cont_wrapper">
			<div class="container">
				<div class="row">
					<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
						<div class="jp_job_heading_wrapper">
							<div class="jp_job_heading">
								<h1>
									<span>IT</span> 개발자들을 위한
								</h1>
								<p>모든 직군이 모여있는 개발자들의 취업 공간</p>
								<p>지금 당장 지원하세요 !</p>
							</div>
						</div>
					</div>
				</div>
			</div>
			<br><br><br><br><br><br><br><br><br>
		</div>
	</div>
	
	<!-- Header Wrapper End -->
	




</body>
</html>
