<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<title>Insert title here</title>
</head>
<body>

	<!-- 	임시 상단바 -->
	<div class="gc_main_menu_wrapper">
		<div class="container-fluid">
			<div class="row">
				<div
					class="col-lg-2 col-md-2 col-sm-12 col-xs-12 hidden-xs hidden-sm full_width">
					<div class="gc_header_wrapper">
						<div class="gc_logo">
							<a href="${ pageContext.servletContext.contextPath }/mainPage"><img
								src="${ pageContext.servletContext.contextPath }/resources/image/로고.PNG"
								class="img-responsive"></a>
						</div>
					</div>
				</div>
				<div class="col-lg-8 col-md-8 col-sm-12 col-xs-12 full_width">
					<div class="header-area hidden-menu-bar stick" id="sticker">
						<div class="mainmenu">
							<ul class="float_left">
								<li class="has-mega gc_main_navigation"><a
									href="${ pageContext.servletContext.contextPath }/main/Scout/List"
									class="gc_main_navigation" class="gc_main_navigation">봉석</a></li>
								<li class="has-mega gc_main_navigation"><a
									href="${ pageContext.servletContext.contextPath }/admin/product/insert"
									class="gc_main_navigation" class="gc_main_navigation">승수</a></li>
								<li class="has-mega gc_main_navigation"><a
									href="${ pageContext.servletContext.contextPath }/productList/select"
									id="paymentMainPage" class="gc_main_navigation"
									class="gc_main_navigation">현수</a></li>
								<li class="has-mega gc_main_navigation"><a
									href="${ pageContext.servletContext.contextPath }/company/myPage/main"
									class="gc_main_navigation" class="gc_main_navigation">본근</a></li>
								<li class="has-mega gc_main_navigation"><a
									href="${ pageContext.servletContext.contextPath }/admin/mainPage"
									class="gc_main_navigation" class="gc_main_navigation">태훈</a></li>
								<li class="has-mega gc_main_navigation">
									<a
									href="${ pageContext.servletContext.contextPath }/member/allJobPosting/select"
									class="gc_main_navigation" class="gc_main_navigation">동기</a>
								</li>
								
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>


	<!-- 진짜 상단바 -->
	<c:if test="${ empty sessionScope.loginMember }">
		<div class="gc_main_menu_wrapper">
			<div class="jp_top_header_right_cont">
				<ul>
					<li><a
						href="${ pageContext.servletContext.contextPath }/loginPage"
						align="center"
						style="background: rgb(102, 114, 173); margin-right: 30px; border-radius: 10px; width: 100px">Log
							In</a></li>
				</ul>
			</div>
			<div class="container-fluid">
				<div class="row">
					<div class="jp_top_header_right_cont"></div>
					<div
						class="col-lg-2 col-md-2 col-sm-12 col-xs-12 hidden-xs hidden-sm full_width">
						<div class="gc_header_wrapper">
							<div class="gc_logo">
								<a href="${ pageContext.servletContext.contextPath }/mainPage"><img
									src="${ pageContext.servletContext.contextPath }/resources/image/로고.PNG"
									class="img-responsive"></a>
							</div>
						</div>
					</div>
					<div class="col-lg-8 col-md-8 col-sm-12 col-xs-12 full_width">
						<div class="header-area hidden-menu-bar stick" id="sticker">
							<div class="mainmenu">
								<ul class="float_left">
									<li class="has-mega gc_main_navigation"><a
										href="${ pageContext.servletContext.contextPath }/request/inquiry/servlet"
										class="gc_main_navigation" class="gc_main_navigation">1:1
											문의</a></li>
								</ul>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</c:if>



</body>
</html>