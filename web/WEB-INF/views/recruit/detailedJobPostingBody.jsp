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
							<h2>상세 공고</h2>
						</div>
						<div class="jp_tittle_breadcrumb_main_wrapper">
							<div class="jp_tittle_breadcrumb_wrapper">
								<ul>
									<li><a href="#">Home</a> <i class="fa fa-angle-right"></i></li>
									<li><a href="#">채용공고</a> <i class="fa fa-angle-right"></i></li>
									<li>상세공고</li>
								</ul>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>


	<!-- jp listing Single cont Wrapper Start -->
	<div class="jp_listing_single_main_wrapper">
        <div class="container">
            <div class="row">
                <div class="col-lg-8 col-md-8 col-sm-12 col-xs-12">
                    <div class="jp_listing_left_sidebar_wrapper">
                    	
                        <div style="width:100%; height:300px;">
                        <!-- 경로가 널이 아닐때 대표이미지 출력해줘야함 -->
                            <img style=" height: 280px;"src="images/content/web.png" alt="대표이미지 없음" />
                        </div>
                        
                        <div class="jp_job_des">
                            <h2><c:out value="The content of Job Posting"/></h2>
                            <p><c:out value="${ requestScope.detailedJobPosting.jobPostContents }"/></p>
                            <ul>
                            	<c:if test="${ requestScope.detailedJobPosting.coMemberAddInfoDTO.coWebsite ne null }">
                                <li><i class="fa fa-globe"></i>&nbsp;&nbsp; <a href="#"><c:out value="${ requestScope.detailedJobPosting.coMemberAddInfoDTO.coWebsite }"></c:out></a></li>
                                </c:if>
                                <c:if test="${ requestScope.detailedJobPosting.coMemberAddInfoDTO.coWebsite eq null }">
                                <li><i class="fa fa-globe"></i>&nbsp;&nbsp; <c:out value="등록된 웹사이트 주소가 없습니다."></c:out></li>
                                </c:if>
                                <li><i class="fa fa-file-pdf-o"></i>&nbsp;&nbsp; <a href="#">Download Info</a></li>

                            </ul>
                        </div>
                        <div class="jp_job_map">
                            <h2>Loacation</h2>
                            <div id="map" style="width:500px;height:400px;"></div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-md-4 col-sm-12 col-xs-12">
                    <div class="row">
                        <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                            <div class="jp_rightside_job_categories_wrapper jp_rightside_listing_single_wrapper">
                                <div class="jp_rightside_job_categories_heading">
                                    <h4>Company Overview</h4>
                                </div>
                                <div class="jp_jop_overview_img_wrapper">
                                    <div class="jp_jop_overview_img">
                                        <img src="images/content/web.png" alt="로고 없음" />
                                    </div>
                                </div>
                                <div class="jp_job_listing_single_post_right_cont">
                                    <div class="jp_job_listing_single_post_right_cont_wrapper">
                                        <h4><c:out value="${ requestScope.detailedJobPosting.jobPostTitle }"/></h4>
                                        <p><c:out value="${ requestScope.detailedJobPosting.coMemberAddInfoDTO.coComName }"/></p>
                                    </div>
                                </div>
                                <div class="jp_job_post_right_overview_btn_wrapper">
                                    <div class="jp_job_post_right_overview_btn">
                                        <ul>
                                            <li><a href="#">141 Jobs</a></li>
                                        </ul>
                                    </div>
                                </div>
                                <div class="jp_listing_overview_list_outside_main_wrapper">
                                    <div class="jp_listing_overview_list_main_wrapper">
                                        <div class="jp_listing_list_icon">
                                            <i class="fa fa-map-marker"></i>
                                        </div>
                                        <div class="jp_listing_list_icon_cont_wrapper">
                                            <ul>
                                                <li>위치:</li>
                                                <li><c:out value="${ requestScope.detailedJobPosting.coMemberAddInfoDTO.coAddress }"></c:out></li>
                                            </ul>
                                        </div>
                                    </div>
                                    <div class="jp_listing_overview_list_main_wrapper jp_listing_overview_list_main_wrapper2">
                                        <div class="jp_listing_list_icon">
                                            <i class="fa fa-info-circle"></i>
                                        </div>
                                        <div class="jp_listing_list_icon_cont_wrapper">
                                            <ul>
                                                <li>요구 기술</li>
                                                <c:forEach var="deteildeJpSkills" items="${ requestScope.deteildeJpSkills }">
                                                <li><c:out value="${ deteildeJpSkills.skillsName }"/></li>
                                            	</c:forEach>
                                            </ul>
                                        </div>
                                    </div>
                                    <div class="jp_listing_overview_list_main_wrapper jp_listing_overview_list_main_wrapper2">
                                        <div class="jp_listing_list_icon">
                                            <i class="fa fa-th-large"></i>
                                        </div>
                                        <div class="jp_listing_list_icon_cont_wrapper">
                                            <ul>
                                                <li>직무: </li>
                                                <li><c:out value="${ requestScope.detailedJobPosting.jobFieldDTO.jobName }"/></li>
                                            </ul>
                                        </div>
                                    </div>
                                    <div class="jp_listing_overview_list_main_wrapper jp_listing_overview_list_main_wrapper2">
                                        <div class="jp_listing_list_icon">
                                            <i class="fa fa-star"></i>
                                        </div>
                                        <div class="jp_listing_list_icon_cont_wrapper">
                                            <ul>
                                                <li>Experience:</li>
                                                <li><c:out value="${ requestScope.detailedJobPosting.jobPostMinExperience }"></c:out> ~ <c:out value="${ requestScope.detailedJobPosting.jobPostMaxExperience }"></c:out>년</li>
                                            </ul>
                                        </div>
                                    </div>
                                    <div class="jp_listing_right_bar_btn_wrapper">
                                        <div class="jp_listing_right_bar_btn">
                                            <ul>
                                                <li><a href="#"><i class="fa fa-plus-circle"></i> &nbsp; 지원하기</a></li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        
    </div>
   
<!--     main js file start -->
<!--     <script src="js/jquery_min.js"></script> -->
<!--     <script src="js/bootstrap.js"></script> -->
<!--     <script src="js/jquery.menu-aim.js"></script> -->
<!--     <script src="js/jquery.countTo.js"></script> -->
<!--     <script src="js/jquery.inview.min.js"></script> -->
<!--     <script src="js/owl.carousel.js"></script> -->
<!--     <script src="js/modernizr.js"></script> -->
<!--     <script src="js/jquery.magnific-popup.js"></script> -->
<!--     <script src="js/custom_II.js"></script> -->
<!--     main js file end -->
    

	<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=97941150b25f0a25943e14669f10478b"></script>
	<script>
		var container = document.getElementById('map');
		var options = {
			center: new kakao.maps.LatLng(33.450701, 126.570667),
			level: 3
		};

		var map = new kakao.maps.Map(container, options);
	</script>
</body>
</html>