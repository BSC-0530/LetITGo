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
<script type="text/javascript" src="/let/resources/js/bongean/button.js"></script>
<link rel="stylesheet" type="text/css" href="${ pageContext.servletContext.contextPath }/resources/css/letitgo/letitgo.css"/>
<!-- 제이쿼리 -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<!-- 상세주소 -->
<script
		src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>

</head>
<style>
#noCheck{
width: 100px; height: 50px; background-color:transparent; 
}
.searchZipCode{
width: 100px; height: 50px; background-color:transparent;
}
</style>

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
                                <li>기업 정보</li>
                                <li>이미지 변경</li>
                            </ul>
                        </div>
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
 <form id="fileUpLoad" method="post" enctype="multipart/form-data" action="${ pageContext.servletContext.contextPath }/modify/comImge">
            <div class="col-lg-9 col-md-9 col-sm-12 col-xs-12">
                <div class="row">
                    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                        <div class="jp_listing_tabs_wrapper">
                            <!--                             이거는 이제 정보뜨는 칸 -->
                            <div class="tab-pane fade in active register_left_form"
                                id="contentOne-1">

                                <div class="jp_regiter_top_heading">
                                    <p><h1>이미지 변경</h1></p>
                                    <input type="text" name="memNo" value= " ${ memNo }" >
                                    <div
									class="form-group col-md-12 col-sm-6 col-xs-12 custom_input">
									<p>회사 로고</p>
									<img name="repreFile" src="${ pageContext.servletContext.contextPath }${ logoFile }" width="300" height="300">
									<p></p>
									<p>회사 대표이미지</p>
									<img name="repreFile" src="${ pageContext.servletContext.contextPath }${ repreFile }" width="300" height="300">
									<p></p>
									<p>사업자 등록증</p>
                              	<img name="businFile" src="${ pageContext.servletContext.contextPath }${ businFile }" width="300" height="300">
                                </div>
                				 <div class="row">
                                    <!--Form Group-->
									<p>회사 로고</p>
									<input type="file" name="coLogo" id="coLogo" >
									<p></p>
									<p>회사 대표이미지</p>
									<input type="file" name="coRepresentativImage"id="coRepresentativImage" >
									<p></p>
									<p>사업자 등록증</p>
									<input type="file" name="businessRegistration"id="businessRegistration" >
									<p></p>
                           			 </div>
                      			  </div>               
                    </div>
                </div>
                </div>
                </div>
                </div>
                
                     <button type="submit" class="btn btn-info" style="float: right;" >이미지 정보 변경 요청 </button>
      </form>
                <br>
                    
	            </div>
	</div>		
	</div>
        
<script>
// 변경 요청 버튼 
function requestAdminChange(button){
	var answer;
	answer = confirm('변경 요청을 하시겠습니까?');
	
	if(answer == true){
		alert('정보수정 요청되었습니다.')
	}
	else if(answer == false){
		return false;
	}
	
}
</script>

</body>
</html>








