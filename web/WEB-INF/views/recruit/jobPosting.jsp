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

</head>
<body>
	<jsp:include page="../common/header/personalHeader.jsp"/>

<!--    <div class="jp_bottom_footer_Wrapper_header_img_wrapper">
        <div class="jp_slide_img_overlay"></div>
        <div class="jp_banner_heading_cont_wrapper">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                        <div class="jp_job_heading_wrapper">
                            <div class="jp_job_heading">
                                <h1><span>30 </span>개의 진행 중 공고</h1>
                                <p style="margin-left: 30px;">채용 공고를 검색해보세요 </p>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                        <div class="jp_header_form_wrapper">
                            <div class="col-lg-4 col-md-4 col-sm-12 col-xs-12">
                                <input type="text" placeholder="Keyword e.g. (Job Title, Description, Tags)">
                            </div>
                            <div class="col-lg-3 col-md-3 col-sm-12 col-xs-12">
                                <div class="jp_form_location_wrapper">
                                    <select>
                                        <option>Select Location</option>
                                        <option>Select Location</option>
                                        <option>Select Location</option>
                                        <option>Select Location</option>
                                        <option>Select Location</option>
                                    </select><i class="fa fa-angle-down second_icon"></i>
                                </div>
                            </div>
                            <div class="col-lg-3 col-md-3 col-sm-12 col-xs-12">
                                <div class="jp_form_exper_wrapper">
                                    <select>
                                        <option>Experience</option>
                                        <option>Experience</option>
                                        <option>Experience</option>
                                        <option>Experience</option>
                                        <option>Experience</option>
                                    </select><i class="fa fa-angle-down second_icon"></i>
                                </div>
                            </div>
                            <div class="col-lg-2 col-md-2 col-sm-12 col-xs-12">
                                <div class="jp_form_btn_wrapper">
                                    <ul>
                                        <li><a href="#"><i class="fa fa-search"></i> Search</a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                        <div class="jp_banner_main_jobs_wrapper">
                            <div class="jp_banner_main_jobs">
                                <ul>
                                    <li>여기에 키워드 불러와서 넣어주면 될듯?</li>
                                    <li></li>
                                    <li></li>
                                    <li></li>
                                    <li></li>
                                    <li></li>
                                    <li></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>-->
    <!-- Header W rapper End -->
    <!-- jp listing sidebar Wrapper Start -->
    <!-- 상단 검은색 -->
   <div class="jp_tittle_main_wrapper">
        <div class="jp_tittle_img_overlay"></div>
        <div class="container">
            <div class="row">
                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                    <div class="jp_tittle_heading_wrapper">
                        <div class="jp_tittle_heading">
                            <h2>채용공고</h2>
                        </div>
                        <div class="jp_tittle_breadcrumb_main_wrapper">
                            <div class="jp_tittle_breadcrumb_wrapper">
                                <ul>
                                    <li><a href="#">Home</a></li>
                                  
                                    <li>></li>

                                    <li>채용공고</li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    
    <div class="jp_listing_sidebar_main_wrapper">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                    <div class="jp_listing_heading_wrapper">
                        <h2>We found <span>357</span> Matches for you.</h2>
                    </div>
                </div>
                <form>
                    <div class="col-lg-3 col-md-3 col-sm-12 col-xs-12 hidden-sm hidden-xs">
                        <div class="row">
                            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12" >
                                <div class="jp_rightside_job_categories_wrapper">
                                    <div class="jp_rightside_job_categories_heading">
                                        <h4>직무</h4>
                                    </div>
                                    <div style="height: 200px; background: white;"class="jp_form_location_wrapper">
                                        <select style="border: 1px solid;">
                                            <option value="" disabled selected>직무를 선택해주세요</option>
                                            <option value=""></option>
                                        </select>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                <div class="jp_rightside_job_categories_wrapper">
                                    <div class="jp_rightside_job_categories_heading">
                                        <h4>지역</h4>
                                    </div>
                                    <div style="height: 200px; background: white;" class="jp_form_location_wrapper">
                                        <select style="border: 1px solid;">
                                            <option value="" disabled selected>지역을 선택해주세요</option>
                                            <option value=""></option>
                                        </select>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                <div class="jp_rightside_job_categories_wrapper">
                                    <div class="jp_rightside_job_categories_heading">
                                        <h4>경력</h4>
                                    </div>
                                    <div style="height: 200px; background: white;" class="jp_form_location_wrapper">
                                        <select style="border: 1px solid;">
                                            <option value="" disabled selected>경력을 선택해주세요</option>
                                            <option value=""></option>
                                        </select>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-9 col-md-9 col-sm-12 col-xs-12">
                        <div class="row">
                            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                <div class="jp_listing_tabs_wrapper">
                                    <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
                                        <div class="gc_causes_select_box_wrapper">
                                            <div class="gc_causes_select_box">
                                                <select>
                                                    <option>최신순</option>
                                                    <option>Sort Default</option>
                                                    <option>Sort Default</option>
                                                </select><i class="fa fa-angle-down"></i>
                                            </div>
                                        </div>
                                    </div>
                                    <div style="width:150px; float: left;" class="col-lg-5 col-md-5 col-sm-5 col-xs-12">
                                            <div class="jp_form_btn_wrapper">
                                                <ul>
                                                    <li><a href="#"><i class="fa fa-search"></i> Search</a></li>
                                                </ul>
                                            </div>
                                        
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                <div class="tab-content">
                                    <div id="grid" class="tab-pane fade in active">
                                        <div class="row">
                                        <!--  jobPostKinds가 승인된 공고일때 forEach를 통해서 모두 출력 -->
                                        	<c:forEach  var="jobPosting" items="${ requestScope.jobPostingList }">
                                        	<c:if test="${ jobPosting.jobPostKinds eq '승인된공고'}">
	                                            <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
	                                                <div class="jp_job_post_main_wrapper_cont jp_job_post_grid_main_wrapper_cont">
	                                                    <div class="jp_job_post_main_wrapper jp_job_post_grid_main_wrapper">
	                                                        <div class="row">
	                                                            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
	                                                                <div class="jp_job_post_side_img">
	                                                                    <img src="${ pageContext.servletContext.contextPath }/resources/image/bmw.png" style="width: 120px; height: 120px;"alt="post_img" />
	                                                                </div>
	                                                                <div class="jp_job_post_right_cont jp_job_post_grid_right_cont">
																		<a href= "" style="font-weight:bold; font-size: 25px; color: black; "><c:out value="${ jobPosting.jobPostTitle }"/></a><br>																
																		<a href="">사명 : <c:out value="${ jobPosting.companyAddInfoDTO.coComName }"/></a><br>
																		<a>서울</a><br>
																		<a>
																		<c:if test="${ jobPosting.jobPostMinExperience != jobPosting.jobPostMaxExperience }">
																			<c:out value="${ jobPosting.jobPostMinExperience }"/> ~ <c:out value="${ jobPosting.jobPostMaxExperience }"/> 년
																		</c:if>
																		</a><br>
																		<a>직무</a><br>
																		<a><c:out value="${ jobPosting.jobPostDeadline }"/></a><br>
																		
	                                                                </div>
	                                                            </div>
<!-- 	                                                            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12"> -->
<!-- 	                                                                <div class="jp_job_post_right_btn_wrapper jp_job_post_grid_right_btn_wrapper"> -->
<!-- 	                                                                    <ul> -->
<!-- 	                                                                        <li><a href="#"><i class="fa fa-heart-o"></i></a></li> -->
<!-- 	                                                                        <li><a href="#">Part Time</a></li> -->
<!-- 	                                                                        <li><a href="#">Apply</a></li> -->
<!-- 	                                                                    </ul> -->
<!-- 	                                                                </div> -->
<!-- 	                                                            </div> -->
	                                                        </div>
	                                                    </div>
	                                                    <div class="jp_job_post_keyword_wrapper">
	                                                        <ul>
	                                                            <li> 요구 기술 :</li>
	                                                            <li><a href="#">ui designer,</a></li>
	                                                            <li><a href="#">developer,</a></li>
	                                                        </ul>
	                                                    </div>
	                                                </div>
	                                            </div>
	                                            </c:if>
                                            </c:forEach>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
    
	<jsp:include page="../common/footer.jsp"/>

</body>
</html>