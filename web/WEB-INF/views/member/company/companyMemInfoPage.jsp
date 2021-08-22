<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>	
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
<jsp:include page="../../common/header/companyHeader.jsp"/>
<!-- 상단 검은색 -->
   <div class="jp_tittle_main_wrapper">
        <div class="jp_tittle_img_overlay"></div>
        <div class="container">
            <div class="row">
                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                    <div class="jp_tittle_heading_wrapper">
                        <div class="jp_tittle_heading">
                            <h2>회원정보</h2>
                        </div>
                        <div class="jp_tittle_breadcrumb_main_wrapper">
                            <div class="jp_tittle_breadcrumb_wrapper">
                                <ul>
                                    <li><a href="${ pageContext.servletContext.contextPath }/mainPage/CoMember">Home</a></li>
                                    <li>></li>
                                    <li><a href="${ pageContext.servletContext.contextPath }/company/myPage/main">기업 마이페이지</a></li>
                                    <li>></li>
                                    <li>회원정보</li>
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
									<h4 style="font-weight : bold">회원정보</h4>
								</div>
								<div class="jp_rightside_job_categories_content">
									<div class="handyman_sec1_wrapper">
										<div class="content">
											<div class="box">
												<p>
													<a href="${ pageContext.servletContext.contextPath }/coMem/infomationServlet">회원정보</a>
												</p>
												<br><br>
												<p> 
													<a href="${ pageContext.servletContext.contextPath }/companyTestServlet">기업정보</a>
												</p>
												<br><br>

												<p>
													<a href="${ pageContext.servletContext.contextPath }/company/paymentHistory/select">결제내역</a>
												</p>
												<br><br>
												<p>
													<a href="${ pageContext.servletContext.contextPath }/company/refundHistory/select">환불내역</a>
												</p>
												<br><br>
												<p>

													<a href="${ pageContext.servletContext.contextPath }/company/jobPostingHistory/select">공고관리</a>
												</p>
												<br><br>
												<p>
													<a href="${ pageContext.servletContext.contextPath }/Company/Scout/List/Select">스카우트현황</a>
												</p>
												<br><br>
												<p>
													<a href="${ pageContext.servletContext.contextPath }/company/scout/wish/select">찜한후보자</a>
												</p>
												<br><br>
												<p>
													<a href="#">회원탈퇴</a>
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
				<form action="${ pageContext.servletContext.contextPath }/coMemInfo/change/servlet" method="post" >
					<div class="row">
						<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
							<div class="jp_listing_tabs_wrapper">

								<!--                             이거는 이제 정보뜨는 칸 -->
<%-- 								<input type="hidden" name="comDTO" value="${ comDTO }"> --%>
								<div class="tab-pane fade in active register_left_form"
									id="contentOne-1">

									<div class="jp_regiter_top_heading">
										<p><h1>회원 정보</h1></p>
									</div>
									
									<div class="row">
										<!--Form Group-->
										<div class="form-group col-md-6 col-sm-6 col-xs-12">
											<input type="text" name="coMemId" value="${ coMemDTO.memId }" readonly>
										</div>
										<!--Form Group-->
										<div class="form-group col-md-6 col-sm-6 col-xs-12">
											<input type="text" name="email" value="${ coMemDTO.memEmail }" readonly>
										</div>
										<!--Form Group-->
										<div class="form-group col-md-6 col-sm-6 col-xs-12">


											<input type="text" name="coMemName" value="${coMemDTO.memName }" readonly>
										</div>
										<!--Form Group-->
										<div class="form-group col-md-6 col-sm-6 col-xs-12">
											<input type="text" name="coMemPhone" value="${coMemDTO.memPhone }" readonly>
										
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
<!-- 					<img src="images/200x200.png" alt="My Image"> -->
					<br>
					<div class="companyText">	
                    	</div>
            	<!-- end --> 
						 <button type="submit" class="btn btn-info" id="coMemInfoChange" style=" float: right;" >회원 정보 변경</button>
						 <button type="button" class="btn btn-info" id="coPassChange" style=" float: right; margin-right:10px  " >비밀번호 변경</button>
					</form>	 
            	</div>
			</div>
		</div>
	</div>
<script>
// function infoChange(button){
	
// 	location.href="${ pageContext.servletContext.contextPath }/company/info/change/servlet"	
// }

</script>	
	
	<jsp:include page="../../common/footer.jsp"/>
</body>
</html>