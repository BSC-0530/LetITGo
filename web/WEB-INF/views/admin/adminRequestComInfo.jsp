<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>    
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
                                <h4 style="font-weight : bold">My Page</h4>
                            </div>
                            <div class="jp_rightside_job_categories_content">
                                <div class="handyman_sec1_wrapper">
                                    <div class="content">
                                        <div class="box">
                                            <p align="center">
                                                <a href="#">회원정보</a>
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
                                                <a href="#">찜한 후보자</a>
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
<form action="${ pageContext.servletContext.contextPath }/company/info/change/servlet" method="get">
            <div class="col-lg-9 col-md-9 col-sm-12 col-xs-12">
                <div class="row">
                    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                        <div class="jp_listing_tabs_wrapper">
                            <!--                             이거는 이제 정보뜨는 칸 -->
                            <div class="tab-pane fade in active register_left_form"
                                id="contentOne-1">

                                <div class="jp_regiter_top_heading">
                                    <p><h1>기업정보 변경</h1></p>
                                </div>
                                <div class="row">
                                    <!--Form Group-->
                                    
                                    <div class="form-group col-md-8 col-sm-6 col-xs-12">
                                        <input type="text" name="field-name" value=""placeholder="${ comDTO.coNo }" >
                                    </div>
                                    <div class="col-lg-3 col-md-8 col-sm-12 col-xs-12">
                                        <div class="jp_form_btn_wrapper" style="margin-left: 80px">
                                            <ul>
                                                <li><a href="#"></i><button class="fa fa-search" style="width: 100px; height: 50px; background-color:transparent; 
                                                                            border:0px transparent solid;">중복검사</button></a></li>
                                            </ul>
                                        </div>
                                    </div>
                                    <div class="form-group col-md-6 col-sm-6 col-xs-12">
                                        <input type="text" name="requestComName" placeholder="${ comDTO.coComName }" >
                                    </div>
                                    
                                                                       <!--Form Group-->
                                    <div class="form-group col-md-6 col-sm-6 col-xs-12">
                                        <input type="text" name="requestcoCeoName" placeholder="${ comDTO.coCeoName }" >
                                    </div>
                                   
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <br>
                <div class="companyText">	
                              <label>회사소개</label><input id="request.coIntro" type="text"  placeholder="${ comDTO.coIntro  }" >
                    </div>
                    <div style="margin-left: 450px;">
                        <span><i class="fa fa-upload"></i> &nbsp;Upload Job Post</span>
                        <input type="file" name="resume" id="resume" />
                         </div>
            <!-- end --> 
	            </div>
                 </form>
            
                     <button type="submit" onclick="requestAdminChange();" class="btn btn-info" id="coInfoChange" style=" float: right;" >기업 정보 변경 요청 </button>
        </div>
    </div>
</div>
<script>
function requestAdminChange(button){
// 	alert('asd');
}
</script>
</body>
</html>