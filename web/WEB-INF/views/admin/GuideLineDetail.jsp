<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
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
	href="https://cdn.datatables.net/1.10.25/css/jquery.dataTables.css">

<script type="text/javascript" charset="utf8"
	src="https://cdn.datatables.net/1.10.25/js/jquery.dataTables.js"></script>

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script type="text/javascript" charset="utf8"
	src="https://cdn.datatables.net/1.10.25/js/jquery.dataTables.js"></script>
<link rel="stylesheet" type="text/css"
	href="https://cdn.datatables.net/1.10.25/css/jquery.dataTables.css">

<!-- letitgo 제작 css -->
<link rel="stylesheet" type="text/css"
	href="${ pageContext.servletContext.contextPath }/resources/css/letitgo/letitgo.css" />

<style>
.h4 {
	font-weight: bold;
}

td {
	width: 400px;
}
</style>

</head>

<body>

	<div class="gc_main_menu_wrapper">
			<div class="jp_navi_right_btn_wrapper">
				<ul>
					<li><a href="${ pageContext.servletContext.contextPath }/loginPage">LOG IN</a></li>
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
		<br>
		<br>
		<br>
		<div class="jp_listing_sidebar_main_wrapper">
		<div class="container">
			<div class="row">
				<div
					class="col-lg-3 col-md-3 col-sm-12 col-xs-12 hidden-sm hidden-xs">
					<div class="row">
						<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
							<div class="jp_rightside_job_categories_wrapper">
								<div class="jp_rightside_job_categories_heading">
									<h4 style="font-weight : bold">고객센터</h4>
								</div>
								<div class="jp_rightside_job_categories_content">
									<div class="handyman_sec1_wrapper">
										<div class="content">
											<div class="box">
												<p align="center">
													<a href="${ pageContext.servletContext.contextPath }/coMem/infomationServlet">공지사항</a>
												</p>
												<br><br>
												<p align="center"> 
													<a href="${ pageContext.servletContext.contextPath }/guideline/list">개인정보처리방침</a>
												</p>
												<br><br>

												<p align="center">
													<a href="${ pageContext.servletContext.contextPath }/guideline/list">이용약관</a>
												</p>
												
												<br><br>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>

<!-- 상단 검은색 -->
   <div class="jp_tittle_main_wrapper">
        <div class="jp_tittle_img_overlay"></div>
        <div class="container">
            <div class="row">
                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                    <div class="jp_tittle_heading_wrapper">
                        <div class="jp_tittle_heading">
                            <h2>개인정보 처리 방침 및 이용약관</h2>
                        </div>
                        <div class="jp_tittle_breadcrumb_main_wrapper">
                            <div class="jp_tittle_breadcrumb_wrapper">
                                <ul>
                                    <li><a href="#">Home >> </a></li>
                                    <li><a href="#">개인정보 처리 방침 및 이용약관</a></li>
                                 </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>


				<!-- 옆에 넣으려면 여기에 넣어야함 -->
				<!--   				111~114번이 있어야 사이드바 옆에 내용이 입력됨       -->
				<br> <br> <br>

				<div class="col-lg-9 col-md-9 col-sm-9 col-xs-12">
					<div class="row">
						<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
							<br>
							<br>
							<br>

							<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
								<div class="jp_contact_form_heading_wrapper">
									<h2>개인정보 처리 방침 및 이용약관</h2>
								</div>
							</div>
							<form
								action="${ pageContext.servletContext.contextPath }/guideline/detail" 
								method="post">
								<div class="jp_contact_form_box">
									<br><br>
									
									<div class="col-lg-12 col-md-6 col-sm-12 col-xs-12">
										<div
											class="jp_contact_inputs_wrapper jp_contact_inputs2_wrapper">
											<label>구분</label><input name="postKinds"
												value="${ detailList.postKinds }" readonly="readonly">
										</div>
									</div>
									
									<div class="col-lg-12 col-md-6 col-sm-12 col-xs-12">
			<!-- 제목  -->					<div
											class="jp_contact_inputs_wrapper jp_contact_inputs2_wrapper">
											<label>제목</label><input name="postTitle"
												value="${ detailList.postTitle }" readonly="readonly">
										</div>
									</div>				
									
			<!-- 내용 -->				<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
										<div
											class="jp_contact_inputs_wrapper jp_contact_inputs4_wrapper">
											<label>내용</label><textarea style="overflow-x: hidden; overflow-y: auto;"
												rows="16" placeholder="${ detailList.postContent }" name="postContent" readonly="readonly"></textarea>
										</div>
									</div>

									<button type="button" onClick="history.go(-1)">뒤로가기</button>
									
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>

<!--  			내용				<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">  -->

<!--  									<button type="button" onClick="history.go(-1)">취소하기</button>  -->
<!--  									<button type="submit"  -->
<%-- 											onclick="href='${ pageContext.servletContext.contextPath }/personalinfopolicy/list'">수정하기</button>  --%>

<!-- 			</div> -->
		</div>
	</div>




</body>
</html>







