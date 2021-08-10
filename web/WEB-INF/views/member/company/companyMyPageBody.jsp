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

<!-- letitgo 제작 css -->
<link rel="stylesheet" type="text/css" href="${ pageContext.servletContext.contextPath }/resources/css/letitgo/letitgo.css"/>
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

<!-- 사이드바 -->
	<div class="jp_listing_sidebar_main_wrapper">
		<div class="container">
			<div class="row">
				<div
					class="col-lg-3 col-md-3 col-sm-12 col-xs-12 hidden-sm hidden-xs">
					<div class="row">
						<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
							<div class="jp_rightside_job_categories_wrapper">
								<div class="jp_rightside_job_categories_heading">
									<h4 align="center" style="font-weight : bold">My Page</h4>
								</div>
								<div class="jp_rightside_job_categories_content">
									<div class="handyman_sec1_wrapper">
										<div class="content">
											<div class="box">
												<p align="center">
													<a href="#">회원정보</a>
												</p>
												<br><br>
												<p align="center">
													<a href="${ pageContext.servletContext.contextPath }/companyTestServlet">기업정보</a>
												</p>
												<br><br>
												<p align="center">
													<a href="#">결제내역</a>
												</p>
												<br><br>
												<p align="center">
													<a href="#">공고관리</a>
												</p>
												<br><br>
												<p align="center">
													<a href="${ pageContext.servletContext.contextPath }/Company/Scout/List/Select">스카우트 현황</a>
												</p>
												<br><br>
												<p align="center">
													<a href="#">찜한 후보자</a>
												</p>
												<br><br>
												<p align="center">
													<a href="#">결제 내역</a>
												</p>
												<br><br>
												<p align="center">
													<a href="#">회원 탈퇴</a>
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
<!-- 옆에 넣으려면 여기에 넣어야함 -->
<!--   				111~114번이 있어야 사이드바 옆에 내용이 입력됨       -->
				<div class="col-lg-9 col-md-9 col-sm-12 col-xs-12">
					<div class="row">
						<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
							<div class="jp_listing_tabs_wrapper">

								<!--                             이거는 이제 정보뜨는 칸 -->
								<div class="tab-pane fade in active register_left_form"
									id="contentOne-1">

									<div class="jp_regiter_top_heading">
										<p><h1>기업정보</h1></p>
									</div>
									<div class="row">
										<!--Form Group-->
										<div class="form-group col-md-6 col-sm-6 col-xs-12">
											<input type="text" name="field-name" value=""placeholder="사업자등록증번호" readonly>
										</div>
										<!--Form Group-->
										<div class="form-group col-md-6 col-sm-6 col-xs-12">

											<input type="text" name="field-name" value=""placeholder="주소" readonly>
										</div>
										<!--Form Group-->
										<div class="form-group col-md-6 col-sm-6 col-xs-12">

											<input type="password" name="field-name" value=""placeholder="기업이름" readonly>
										</div>
										<!--Form Group-->
										<div class="form-group col-md-6 col-sm-6 col-xs-12">
											<input type="password" name="field-name" value=""placeholder="대표자이름" readonly>
										</div>
										<!--Form Group-->
										<div class="form-group col-md-6 col-sm-6 col-xs-12">
											<input type="text" name="field-name" value=""placeholder="업종" readonly>
										</div>
										<div class="form-group col-md-6 col-sm-6 col-xs-12">
											<input type="text" name="field-name" value=""placeholder="업태" readonly>
										</div>
										<div class="form-group col-md-6 col-sm-6 col-xs-12">
											<input type="text" name="field-name" value=""placeholder="웹사이트 주소" readonly>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<br>
								<div class="companyText">	
                                	<label>회사소개</label><input id="textArea" type="text"  placeholder="회사소개" >
                            	</div>
					
            	<!-- end --> 
            	</div>
			</div>
		</div>
	</div>
</body>
</html>