<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

    <div class="jp_tittle_main_wrapper">
        <div class="jp_tittle_img_overlay"></div>
	        <div class="container">
	            <div class="row">
	                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
	                    <div class="jp_tittle_heading_wrapper">
	                        <div class="jp_tittle_heading">
	                            <h2>기업정보</h2>
	                        </div>
	                        <div class="jp_tittle_breadcrumb_main_wrapper">
	                            <div class="jp_tittle_breadcrumb_wrapper">
	                                <ul>
                                    <li><a href="#">Home</a> <i class="fa fa-angle-right"></i></li>
                                    <li><a href="#">채용공고</a> <i class="fa fa-angle-right"></i></li>
                                    <li><a href="#">공고 상세조회</a> <i class="fa fa-angle-right"></i></li>
                                    <li>기업정보</li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- jp Tittle Wrapper End -->
	<!-- aboutus_section start-->
    <div class="aboutus_section">
        <div class="container">
            <div class="row">
                <div class="col-lg-6 col-md-6 col-xs-12 col-sm-12">
                    <div class="about_text_wrapper">
                        <div class="section_heading section_2_heading">
                            <c:forEach var="companyAddInfo" items="${ requestScope.companyAddInfo }">
                            <h2><c:out value="${ companyAddInfo.coComName }"></c:out></h2>
                            </c:forEach>
                        </div>
                       	<br>
                        <c:forEach var="companyAddInfo" items="${ requestScope.companyAddInfo }">
	                        <ul>
	                            <li><i class="fa fa-check-square" aria-hidden="true"></i><a>대표자명 : <c:out value="${ companyAddInfo.coCeoName }"/></a></li>
	                            <li><i class="fa fa-check-square" aria-hidden="true"></i><a>업종       : <c:out value="${ companyAddInfo.coSectors }"/></a></li>
	                            <li><i class="fa fa-check-square" aria-hidden="true"></i><a>회사주소 : <c:out value="${ companyAddInfo.webSite }"/></a></li>
	                            <li><i class="fa fa-check-square" aria-hidden="true"></i><a href="${ companyAddInfo.webSite }">홈페이지 : <c:out value="${ companyAddInfo.coCeoName }"/></a></li>
	                            <li><i class="fa fa-check-square" aria-hidden="true"></i><a>사업장전화번호 : <c:out value="${ companyAddInfo.coPhone }"/></a></li>
	                            <li><i class="fa fa-check-square" aria-hidden="true"></i><a>사업장팩스번호 : <c:out value="${ companyAddInfo.coPax }"/></a></li>
	                        </ul>
                        </c:forEach>
                    </div>
                </div>
                <div class="col-lg-6 col-md-6 col-xs-12 col-sm-12">
                    <div class="about_image_wrapper">
                        <img class="img-responsive" src="images/content/register_bg.jpg" alt="about-img">
                    </div>
                </div>
                <div class="col-lg-12 col-md-12 col-xs-12 col-sm-12">
                    <div class="about_text_wrapper abt_2_para">
                        <div class="section_heading section_2_heading">
                            <h2>기업 간단소개</h2>
                        </div>
                        <c:forEach var="companyAddInfo" items="${ requestScope.companyAddInfo }">
                        <p><c:out value="${ companyAddInfo.coIntro }"/></p>
                        </c:forEach>
                    </div>
                </div>
            </div>
        </div>
    </div>
	<!-- jp best deal Wrapper Start -->
   
    <!-- jp best deal Wrapper End -->
    <!-- jp career Wrapper Start -->
    <div class="jp_career_main_wrapper">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                    <div class="jp_hiring_slider_main_wrapper">
                        <div class="jp_career_slider_heading_wrapper">
                            <h2>채용중 공고</h2>
                        </div>
                        <div class="jp_career_slider_wrapper">
                            <div class="owl-carousel owl-theme">
                                <!-- 공고 반복 -->
                                <c:forEach var="myJobPosting" items="${ requestScope.myJobPosting }">
	                                <div class="item jp_recent_main">
	                                    <div class="jp_career_main_box_wrapper">
	                                        <div class="jp_career_img_wrapper">
	                                            <img src="/let/resources/image/content/car_img1.jpg" alt="career_img" /> <!-- 370 X 250 로고이미지-->
	                                        </div>
	                                        <div class="jp_career_cont_wrapper">
	                                            <p><i class="fa fa-calendar"></i>&nbsp;&nbsp; <a><c:out value="${ myJobPosting.jobPostDeadline }"/></a></p>
	                                            <h3><a href="#"><c:out value="${ myJobPosting.jobPostTitle }"/></a></h3>
	                                            <P>경력 :<c:out value="${ myJobPosting.jobPostMinExperience }"/> ~ <c:out value="${ myJobPosting.jobPostMaxExperience }"/> 년</P><br>
	                                            
	                                        </div>
	                                    </div>
	                                </div>
                                </c:forEach>
                            </div>
                        </div>
                    </div>
                </div><c:out value=""/>
            </div>
        </div>
    </div>
    <!-- jp career Wrapper End -->
	<!--main js file start-->
    <script type="text/javascript" src="/web/resources/js/jquery_min.js"></script>
    <script type="text/javascript" src="${ pageContext.servletContext.contextPath }/resources/js/bootstrap.js"></script>
    <script type="text/javascript" src="${ pageContext.servletContext.contextPath }/resources/js/jquery.menu-aim.js"></script>
    <script type="text/javascript" src="${ pageContext.servletContext.contextPath }/resources/js/jquery.countTo.js"></script>
    <script type="text/javascript" src="${ pageContext.servletContext.contextPath }/resources/js/jquery.inview.min.js"></script>
    <script type="text/javascript" src="${ pageContext.servletContext.contextPath }/resources/js/owl.carousel.js"></script>
    <script type="text/javascript" src="${ pageContext.servletContext.contextPath }/resources/js/modernizr.js"></script>
    <script type="text/javascript" src="${ pageContext.servletContext.contextPath }/resources/js/jquery.magnific-popup.js"></script>
    <script type="text/javascript" src="${ pageContext.servletContext.contextPath }/resources/js/custom_II.js"></script>
    <!--main js file end-->
</body>
</html>