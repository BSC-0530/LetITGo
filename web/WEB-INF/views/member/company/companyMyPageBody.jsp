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
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
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
<!-- 기업정보화면입니다. --><!-- 기업정보화면입니다. --><!-- 기업정보화면입니다. --><!-- 기업정보화면입니다. --><!-- 기업정보화면입니다. --><!-- 기업정보화면입니다. --><!-- 기업정보화면입니다. -->
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
									<h4 style="font-weight : bold">My Page</h4>
								</div>
								<div class="jp_rightside_job_categories_content">
									<div class="handyman_sec1_wrapper">
										<div class="content">
											<div class="box">
												<p align="center">
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
													<a href="${ pageContext.servletContext.contextPath }/Company/Scout/List/Select">스카우트 현황</a>
												</p>
												<br><br>
												<p>
													<a href="${ pageContext.servletContext.contextPath }/company/scout/wish/select">찜한 후보자</a>
												</p>
												<br><br>
												<p>
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
<form action="${ pageContext.servletContext.contextPath }/company/info/change/servlet" method="post" accept-charset="utf-8">
					<div class="row">
						<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
							<div class="jp_listing_tabs_wrapper">

								<!--                             이거는 이제 정보뜨는 칸 -->
								<input type="hidden" name="comDTO" value="${ comDTO }">
								<input id="memNo" type="hidden" name="coMemNo" value="${ comDTO.coMemNo }">
								<div class="tab-pane fade in active register_left_form"
									id="contentOne-1">

									<div class="jp_regiter_top_heading">
										<p><h1>기업정보</h1></p>
										<img name=logoFile src="${ pageContext.servletContext.contextPath }${ logoFile }" width="150" height="150">
									</div>
									
									<div class="row">
										<!--Form Group-->
										<div class="form-group col-md-6 col-sm-6 col-xs-12">
											<label>사업자등록번호:</label><input type="text" name="coNo" value="${ comDTO.coNo }" readonly>
										</div>
										<!--Form Group-->
										<div class="form-group col-md-6 col-sm-6 col-xs-12">
											<label>웹사이트:</label><input type="text" name="webSite" value="${ comDTO.webSite }" readonly>
										</div>
										<!--Form Group-->
										<div class="form-group col-md-6 col-sm-6 col-xs-12">


											<label>회사이름:</label><input type="text" name="coComName" value="${comDTO.coComName }" readonly>
										</div>
										<!--Form Group-->
										<div class="form-group col-md-6 col-sm-6 col-xs-12">
											<label>대표자이름:</label><input type="text" name="coCeoName" value="${comDTO.coCeoName }" readonly>
										
										</div>
										<!--Form Group-->
										<div class="form-group col-md-6 col-sm-6 col-xs-12">
											<label>업종:</label><input type="text" name="secTors" value="${ comDTO.coSectors }" readonly>
										</div>
										<div class="form-group col-md-6 col-sm-6 col-xs-12">
											<label>업태:</label><input type="text" name="coStatus" value="${ comDTO.coStatus }" readonly>
										</div>
										<div class="form-group col-md-6 col-sm-6 col-xs-12">
											<label>주소:</label><input type="text" name="address" value="${ comDTO.coAddress }" readonly>
										</div>
										<div class="form-group col-md-6 col-sm-6 col-xs-12">
											<label>회사전화번호:</label><input type="text" name="coPhone" value="${ comDTO.coPhone }" readonly>
										</div>
										<div class="form-group col-md-6 col-sm-6 col-xs-12">
											<label>팩스번호:</label><input type="text" name="coPax" value="${ comDTO.coPax }" readonly>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<br>
					<div class="companyText">	
                              	<label>회사소개</label><input id="textArea" name="intro" value="${ comDTO.coIntro  }" readonly >
                    	</div>
                              	<img name="repreFile" src="${ pageContext.servletContext.contextPath }${ repreFile }" width="300" height="300">
                              	<img name="businFile" src="${ pageContext.servletContext.contextPath }${ businFile }" width="300" height="300">
            		
						 <button type="submit" class="btn btn-info" id="coInfoChange" style=" float: right;" >기업 정보 변경</button>
						 <button type="button" class="btn btn-info" id="coImageChange" onclick="imgChange();" style=" float: left;" >이미지 정보 변경</button>
					</form>	 
            	</div>
			</div>
		</div>
	</div>
<script>
function imgChange(button){
	
	let no = document.getElementById("memNo").value;
// 	alert(no);
	location.href ="${ pageContext.servletContext.contextPath }/company/image/change?no="+no
	
}
</script>
	
</body>
</html>