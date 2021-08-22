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
    <div class="aboutus_section">
        <div class="container">
            <div class="row">
                <div class="col-lg-6 col-md-6 col-xs-12 col-sm-12">
                    <div class="about_text_wrapper">
                        <div class="section_heading section_2_heading">
                            <h2><c:out value="${ requestScope.companyAddInfo.coComName }"></c:out></h2>
                        </div>
                       	<br>
                        <ul>
                            <li><i class="fa fa-check-square" aria-hidden="true"></i><a>대표자명 : <c:out value="${ requestScope.companyAddInfo.coCeoName }"/></a></li>
                            <li><i class="fa fa-check-square" aria-hidden="true"></i><a>업종       : <c:out value="${ requestScope.companyAddInfo.coSectors }"/></a></li>
                            <li><i class="fa fa-check-square" aria-hidden="true"></i><a>회사주소 : <c:out value="${ requestScope.companyAddInfo.webSite }"/></a></li>
                            <li><i class="fa fa-check-square" aria-hidden="true"></i><a href="${ requestScope.companyAddInfo.webSite }">홈페이지 : <c:out value="${ companyAddInfo.coCeoName }"/></a></li>
                            <li><i class="fa fa-check-square" aria-hidden="true"></i><a>사업장전화번호 : <c:out value="${ requestScope.companyAddInfo.coPhone }"/></a></li>
                            <li><i class="fa fa-check-square" aria-hidden="true"></i><a>사업장팩스번호 : <c:out value="${ requestScope.companyAddInfo.coPax }"/></a></li>
                        </ul>
                    </div>
                </div>
                <div class="col-lg-6 col-md-6 col-xs-12 col-sm-12">
                    <div class="about_image_wrapper">
                        <img class="img-responsive" src="${ pageContext.servletContext.contextPath }${ requestScope.companyAddInfo.memFilePath }" alt="about-img">
                    </div>
                </div>
                <div class="col-lg-12 col-md-12 col-xs-12 col-sm-12">
                    <div class="about_text_wrapper abt_2_para">
                        <div class="section_heading section_2_heading">
                            <h2>기업 간단소개</h2>
                        </div>
                        <p><c:out value="${ requestScope.companyAddInfo.coIntro }"/></p>
                    </div>
                </div>
            </div>
        </div>
    </div>

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
	                                            <img src="${ pageContext.servletContext.contextPath }${ requestScope.companyAddInfo.memFilePath }" alt="career_img" />
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
    <script type="text/javascript" src="/web/resources/js/jquery_min.js"></script>
    <script type="text/javascript" src="${ pageContext.servletContext.contextPath }/resources/js/bootstrap.js"></script>
    <script type="text/javascript" src="${ pageContext.servletContext.contextPath }/resources/js/jquery.menu-aim.js"></script>
    <script type="text/javascript" src="${ pageContext.servletContext.contextPath }/resources/js/jquery.countTo.js"></script>
    <script type="text/javascript" src="${ pageContext.servletContext.contextPath }/resources/js/jquery.inview.min.js"></script>
    <script type="text/javascript" src="${ pageContext.servletContext.contextPath }/resources/js/owl.carousel.js"></script>
    <script type="text/javascript" src="${ pageContext.servletContext.contextPath }/resources/js/modernizr.js"></script>
    <script type="text/javascript" src="${ pageContext.servletContext.contextPath }/resources/js/jquery.magnific-popup.js"></script>
    <script type="text/javascript" src="${ pageContext.servletContext.contextPath }/resources/js/custom_II.js"></script>

</body>
</html>