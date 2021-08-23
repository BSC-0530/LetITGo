<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Let IT Go</title>
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
	
	
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=78b48235e398b3e2421dd3b9095893d6&libraries=services"></script>
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
	
	<div class="jp_listing_single_main_wrapper">
        <div class="container">
            <div class="row">
                <div class="col-lg-8 col-md-8 col-sm-12 col-xs-12">
                    <div class="jp_listing_left_sidebar_wrapper">
                    	
                        <div style="width:100%; height:300px;">
                        <!-- 경로가 널이 아닐때 대표이미지 출력해줘야함 -->
                            <img style=" height: 280px;"src="${ pageContext.servletContext.contextPath }${ requestScope.titleFilePath }" alt="대표이미지 없음" />
                        </div>
                        
                        <div class="jp_job_des">
                            <h2><c:out value="주요업무"/></h2>
                            <p>
                            <c:if test="${ requestScope.jobPostContents ne null}">
                            <c:out value="${ requestScope.jobPostContents }"/>
                            </c:if>
                            </p>
                        </div>
                        <div class="jp_job_des">
                        <h2><c:out value="자격요건"/></h2>
                            <p>
                            <c:if test="${ requestScope.qualificationRequirements ne null}">
                            <c:out value="${ requestScope.qualificationRequirements }"/>
                            </c:if>
                            </p>
                        </div>
                        <div class="jp_job_des">
                            <h2><c:out value="우대사항"/></h2>
                            <p>
                            <c:if test="${ requestScope.preferentialMatters ne null}">
                            <c:out value="${ requestScope.preferentialMatters }"/>
                            </c:if>
                            </p>
                        </div>
                        <div class="jp_job_des">
                            <h2><c:out value="혜택 및 복지"/></h2>
                            <p>
                            <c:if test="${ requestScope.benefitAndWelfare ne null}">
                            <c:out value="${ requestScope.benefitAndWelfare }"/>
                            </c:if>
                            </p>
                        </div>
                        <div class="jp_job_des">
                            <ul>
                            	<li>website</li>
                            	<c:if test="${ jobPosting.coMemberAddInfoDTO.coWebsite ne null }">
                                <li><i class="fa fa-globe"></i>&nbsp;&nbsp; <a href="${ requestScope.memberloginDTO.coWebsite }"><c:out value="${ requestScope.memberloginDTO.coWebsite }"></c:out></a></li>
                                </c:if>
                                <c:if test="${ jobPosting.coMemberAddInfoDTO.coWebsite eq null }">
                                <li><i class="fa fa-globe"></i>&nbsp;&nbsp; <c:out value="등록된 웹사이트 주소가 없습니다."></c:out></li>
                                </c:if>
                                <c:if test="${ jobPosting.companyResumeLink ne null }">
                                <li><i class="fa fa-file-pdf-o"></i>&nbsp;&nbsp; <a href="${ jobPosting.companyResumeLink }">자사이력서 다운로드 링크</a></li>
                                </c:if>
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
                                        <img src="${ pageContext.servletContext.contextPath }${ requestScope.filePath.logoPath }" alt="로고 없음" />
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
													<c:out value="${ area }"></c:out>
													<c:out value="우)${ postCode }"></c:out>
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
                                                <c:forEach var="selectSkills" items="${ requestScope.selectSkills }">
                                                <li><c:out value="${ selectSkills }"/></li>
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
												<c:if test="${ minExp ne maxExp }">
													<c:choose>
														<c:when test="${ (minExp eq 0) && (maxExp eq 10) }">
															<c:out value="경력 무관"></c:out>
														</c:when>
														<c:when test="${ (minExp eq 0) && (maxExp ne 10) }">
															<c:out value="신입"/><c:out value="~${ maxExp }년"/>
														</c:when>
														<c:otherwise>
															<c:out value="${ minExp }"/><c:out value="~${ maxExp }년"/>
														</c:otherwise>
													</c:choose>
												</c:if>
												<c:if test="${ (minExp eq maxExp) && (minExp eq 0)}">
													<c:out value="신입"></c:out>
												</c:if>
												<c:if test="${( minExp eq maxExp) && (minExp ne 0)}">
													<c:out value="${ maxExp }년 이상"/>
												</c:if>                                          
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
		
		var geocoder = new daum.maps.services.Geocoder();
		
		var scriptCoAddress = document.getElementById('hiddenCoAddress').value;
	
		// 주소로 좌표를 검색합니다
		geocoder.addressSearch(scriptCoAddress, function(result, status) {
	
		    // 정상적으로 검색이 완료됐으면 
		     if (status === kakao.maps.services.Status.OK) {
	
		        var coords = new kakao.maps.LatLng(result[0].y, result[0].x);
	
		        // 결과값으로 받은 위치를 마커로 표시합니다
		        var marker = new kakao.maps.Marker({
		            map: map,
		            position: coords
		        });
	
		        // 지도의 중심을 결과값으로 받은 위치로 이동시킵니다
		        map.setCenter(coords);
		    } 
		});    
		
		function closeWin() {
			
			window.close();
		}
	</script>
	


 
</body>
</html>