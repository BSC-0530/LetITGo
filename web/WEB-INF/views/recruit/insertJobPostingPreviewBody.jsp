<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

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
<link rel="stylesheet" type="text/css"
	href="${ pageContext.servletContext.contextPath }/resources/css/letitgo/letitgo.css" />
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script type="text/javascript" charset="utf8"
	src="https://cdn.datatables.net/1.10.25/js/jquery.dataTables.js"></script>
<link rel="stylesheet" type="text/css"
	href="https://cdn.datatables.net/1.10.25/css/jquery.dataTables.css">
	
	
	<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=97941150b25f0a25943e14669f10478b"></script>
</head>
<body>

	<div class="jp_tittle_main_wrapper">
		<div class="jp_tittle_img_overlay"></div>
		<div class="container">
			<div class="row">
				<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
					<div class="jp_tittle_heading_wrapper">
						<div class="jp_tittle_heading">
							<h2>공고 미리보기</h2>
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
                            <p><c:out value="${ requestScope.jobPostContents }"/></p>
                            <ul>
                            	<c:if test="${ requestScope.memberloginDTO.coWebsite ne null }">
                                <li><i class="fa fa-globe"></i>&nbsp;&nbsp; <a href="#"><c:out value="${ requestScope.memberloginDTO.coWebsite }"></c:out></a></li>
                                </c:if>
                                <c:if test="${ requestScope.memberloginDTO.coWebsite eq null }">
                                <li><i class="fa fa-globe"></i>&nbsp;&nbsp; <c:out value="등록된 웹사이트 주소가 없습니다."></c:out></li>
                                </c:if>
                                <!--  자사이력서 있을 경우에 그 경로 넣어주기 -->
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
                                        <label style="font-size:20px;"><c:out value="${ requestScope.jobPostTitle }"/></label>
                                        <br>
                                        <p  style="cursor:pointer; font-size: 20px;"><c:out value="${ requestScope.memberloginDTO.coComName }"/></p>
 										<br>
 										<input type="hidden" name=""id="coMemNo" value="${ requestScope.memberloginDTO.memNo }">
                                    </div>
                                </div>
                                <div class="jp_job_post_right_overview_btn_wrapper">
                                    <div class="jp_job_post_right_overview_btn">
                                        <ul>
                                            <li><a href="#">141 Jobs</a></li>
                                        </ul>
                                    </div>
                                    <div class="jp_job_post_right_overview_btn">
                                        <ul>
                                        	<li><a id="bookmarkLink">북마크</a></li>
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
												<c:set var="coAddress" value="${ requestScope.memberloginDTO.coAddress }"/>
												
												<c:set var="area" value="${fn:split(pageScope.coAddress,'$')[0]} ${fn:split(pageScope.coAddress,'$')[1]}"/>
												<c:set var="postCode" value="${fn:split(pageScope.coAddress,'$')[2]}"/>
												<li>
													<c:out value="${ pageScope.area }"></c:out>
													<c:out value="우)${ pageScope.postCode }"></c:out>
												</li>
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
                                                <c:forEach var="skillsList" items="${ requestScope.skillsList }">
                                                <li><c:out value="${ skliisList }"/></li>
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
                                                <li><c:out value="${ requestScope.jobName }"/></li>
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
												<c:set var="minExp" value="${ requestScope.jobPostMinExperience }"></c:set>
												<c:set var="maxExp" value="${ requestScope.jobPostMaxExperience }"></c:set>
												<c:choose>
													<c:when test="${ minExp ne maxExp }">
														<li><c:out value="${ minExp } ~ ${ maxEmp }"/></li>
													</c:when>
													<c:when test="${ (minExp eq maxExp) &&  (minExp eq 0)}">
														<li><c:out value="신입"></c:out></li>
													</c:when>
													<c:when test="${ (minExp eq maxExp) && (minExp ne 0)}">
														<li><c:out value="${ maxExp }년 이상"/></li>
													</c:when>
													<c:when test="${ (minExp eq 0)  && (maxExp eq 10)}">
														<li><c:out value="경력 무관"></c:out></li>
													</c:when>
												</c:choose>                                          
											</ul>
                                        </div>
                                    </div>
                                     <div class="jp_listing_overview_list_main_wrapper jp_listing_overview_list_main_wrapper2">
                                        <div class="jp_listing_list_icon">
                                            <i class="fa fa-th-large"></i>
                                        </div>
                                        <div class="jp_listing_list_icon_cont_wrapper">
                                            <ul>
                                                <li>공고 마감일: </li>
                                                <li><c:out value="${ requestScope.jobPostDeadLine }"/></li>
                                            </ul>
                                        </div>
                                    </div>
                                    <div class="jp_listing_right_bar_btn_wrapper">
                                        <div class="jp_listing_right_bar_btn">
											<ul>
                                                <li><a onclick="closeWin();" style="width:200px"><i class="fa fa-plus-circle"></i> &nbsp; 닫기</a></li>
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
    

	<script>
		var container = document.getElementById('map');
		var options = {
			center: new kakao.maps.LatLng(33.450701, 126.570667),
			level: 3
		};

		var map = new kakao.maps.Map(container, options);
		
		
		function closeWin() {
			
			window.close();
		}
	</script>
	


 
</body>
</html>