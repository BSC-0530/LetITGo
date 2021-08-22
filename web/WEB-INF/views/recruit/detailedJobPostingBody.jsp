<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ page import="java.util.List,javax.servlet.http.HttpSession, javax.servlet.http.HttpServlet, com.itsme.letitgo.login.model.dto.MemberLoginDTO"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=78b48235e398b3e2421dd3b9095893d6&libraries=services"></script>
</head>
<body>

<%
	MemberLoginDTO dto = (MemberLoginDTO) session.getAttribute("loginMember");

	String memKinds = dto.getMemKinds();
	
%>	
<%
	if(memKinds.equals("개인회원")) {
%>
	<jsp:include page="../common/header/personalHeader.jsp"/>
<%
	}
%>
<%
	if(memKinds.equals("기업회원")) {
%>
	<jsp:include page="../common/header/companyHeader.jsp"/>
<%
	}
%>	

	<c:set var="jobPosting" value="${ requestScope.detailedJobPosting }"></c:set>
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
									<li><a href="#">Home</a></li>
									<li>></li>
									<li><a href="${ pageContext.servletContext.contextPath }/member/allJobPosting/select">채용공고</a></li>
									<li>></li>
									<li>상세공고</li>
								</ul>
							</div>
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
                            <img style=" height: 280px;"src="images/content/web.png" alt="대표이미지 없음" />
                        </div>
                        
                        <div class="jp_job_des">
                            <h2><c:out value="주요업무"/></h2>
                            <p>
                            <c:if test="${ jobPosting.jobPostContents ne null}">
                            <c:out value="${ jobPosting.jobPostContents }"/>
                            </c:if>
                            </p>
                        </div>
                        <div class="jp_job_des">
                        <h2><c:out value="자격요건"/></h2>
                            <p>
                            <c:if test="${ jobPosting.qualificationRequirements }">
                            <c:out value="${ jobPosting.qualificationRequirements }"/>
                            </c:if>
                            </p>
                        </div>
                        <div class="jp_job_des">
                            <h2><c:out value="우대사항"/></h2>
                            <p>
                            <c:if test="${ jobPosting.preferentialMatters }">
                            <c:out value="${ jobPosting.preferentialMatters }"/>
                            </c:if>
                            </p>
                        </div>
                        <div class="jp_job_des">
                            <h2><c:out value="혜택 및 복지"/></h2>
                            <p>
                            <c:if test="${ jobPosting.benefitAndWelfare }">
                            <c:out value="${ jobPosting.benefitAndWelfare }"/>
                            </c:if>
                            </p>
                        </div>
                        <div class="jp_job_des">
                            <ul><li>website</li>
                            	<c:if test="${ jobPosting.coMemberAddInfoDTO.coWebsite ne null }">
                                <li><i class="fa fa-globe"></i>&nbsp;&nbsp; <a href="${ jobPosting.coMemberAddInfoDTO.coWebsite }"><c:out value="${ jobPosting.coMemberAddInfoDTO.coWebsite }"></c:out></a></li>
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
                            <h2>Location</h2>
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
                                        <label style="font-size:20px;"><c:out value="${ jobPosting.jobPostTitle }"/></label>
                                        <br>
                                        <p  style="cursor:pointer; font-size: 20px;" onclick="aboutCompany(this);"><c:out value="${ requestScope.detailedJobPosting.coMemberAddInfoDTO.coComName }"/></p>
 										<br>
 										<input type="hidden" name=""id="coMemNo" value="${ jobPosting.coMemNo }">
                                    </div>
                                </div>
                                <div class="jp_job_post_right_overview_btn_wrapper">
                                    
                                    <div class="jp_job_post_right_overview_btn">
                                        <ul>
                                        	<li><a id="bookmarkLink" onClick="addBookmark(this);">북마크</a></li>
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
												<c:set var="coAddress" value="${ requestScope.detailedJobPosting.coMemberAddInfoDTO.coAddress }"/>
												<c:set var="area" value="${fn:split(pageScope.coAddress,'$')[0]} ${fn:split(pageScope.coAddress,'$')[1]}"/>
												<c:set var="postCode" value="${fn:split(pageScope.coAddress,'$')[2]}"/>
												<li>
													<c:out value="${ pageScope.area }"></c:out>
													<c:out value="우)${ pageScope.postCode }"></c:out>
												</li>
                                            </ul>
				                            <input type="hidden" id="hiddenCoAddress" value="${fn:split(pageScope.coAddress,'$')[1]}">
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
                                                <li><c:out value="${ jobPosting.jobFieldDTO.jobName }"/></li>
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
												<c:set var="minExp" value="${ jobPosting.jobPostMinExperience }"></c:set>
												<c:set var="maxExp" value="${ jobPosting.jobPostMaxExperience }"></c:set>
												<c:choose>
													<c:when test="${ minExp ne maxExp }">
														<li><c:out value="${ minExp } ~ ${ maxEmp }"/></li>
													</c:when>
													<c:when test="${ (minExp eq maxExp) &&  (minExp eq 0)}">
														<li><c:out value="신입"></c:out></li>
													</c:when>
													<c:when test="${( minExp eq maxExp) && (minExp ne 0)}">
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
                                                <li><c:out value="${ jobPosting.jobPostDeadline }"/></li>
                                            </ul>
                                        </div>
                                    </div>
                                    <div class="jp_listing_right_bar_btn_wrapper">
                                        <div class="jp_listing_right_bar_btn">
	                                        
	                                        <%
											    MemberLoginDTO dto = (MemberLoginDTO) session.getAttribute("loginMember");
											    String memKinds = dto.getMemKinds();
											%>
											<%
											    if(memKinds.equals("개인회원")) {
											%>
										    <!--  requestScope에 담긴 applyingResult 가 != null 인경우 지원완료, null인경우 지원하지 않았음 -->
	                                        <c:if test="${ requestScope.applyingResult eq null }">
												<ul>
	                                                <li><a onclick="apply();" style="width:200px"><i class="fa fa-plus-circle"></i> &nbsp; 지원 하기</a></li>
	                                                <li><a onclick="selectResume();" style="width:200px"><i class="fa fa-plus-circle"></i> &nbsp; 이력서 선택</a></li>
	                                            </ul>
		                                            <input type="text" id="resumeNo" readonly>
	                                        </c:if>
	                                        <c:if test="${ requestScope.applyingResult ne null }">
	                                            <ul>
	                                                <li><a onclick="cancel();" style="width:200px"><i class="fa fa-plus-circle"></i> &nbsp; 지원 취소</a></li>
		                                            <li><input type="text" id="resumeNo" value="${ requestScope.applyingResult.resumeNo }" readonly></li>
	                                            </ul>
	                                        </c:if>
											<%
											    }
											%>
											<%
											    if(memKinds.equals("기업회원")) {
											%> 
											<%
											    }
											%>
	                                        <ul>
	                                        	<li><a onclick="goBack();" style="width:200px"><i class="fa fa-plus-circle"></i> &nbsp; 뒤로가기</a></li>
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
    

	
	<script>
		function goBack() {
			window.history.back();
		}
		function aboutCompany(label) {
			
			const coMemNo = label.parentNode.children[4].value;
			
			
			location.href = "${ pageContext.servletContext.contextPath }/aboutCompany/select?coMemNo="+ coMemNo;
	
		};
		
		function selectResume() {
			
			// 공고번호 변수에 저장
			var jobPostNo = "${ requestScope.detailedJobPosting.jobPostNo }";
			 
			 
			var path = "${ pageContext.servletContext.contextPath }/resumeForApply/select?jobPostNo="+ jobPostNo;
			 
			window.open( path , "이력서 선택", "width=800, height=700, toolbar=no, menubar=no, scrollbars=no, resizable=yes");

		}
		
		function apply() {
			
			// 이력서 번호 변수에 저장
			var resumeNo = document.getElementById("resumeNo").value;
			
			// 공고번호 변수에 저장
			var jobPostNo = "${ requestScope.detailedJobPosting.jobPostNo }";
			
			// 이력서를 선택했을때만 지원 가능
			if(resumeNo != "") {
				var answer;
				
				// confirm창으로 확인 후  확인시에 경로 이동
				answer = confirm('공고에 지원 하시겠습니까?');
				
				if(answer == true) {
					var path = "${ pageContext.servletContext.contextPath }/recruit/apply/insert?resumeNo=" + resumeNo + "&jobPostNo=" + jobPostNo;				
		  			location.href = path;
				}
	  			
			} else {
				alert("이력서를 선택하지 않았습니다. 이력서를 선택해주세요");
			}
		}
		
		function cancel() {

			// 이력서 번호 변수에 저장
			var resumeNo = document.getElementById("resumeNo").value;

			// 공고번호 변수에 저장
			var jobPostNo = "${ requestScope.detailedJobPosting.jobPostNo }";

			var answer;

			// confirm창으로 확인 후  확인시에 경로 이동
			answer = confirm('공고에 취소 하시겠습니까? \n (지원 취소 후 같은 이력서로 재 지원이 불가능합니다.)');

			if (answer == true) {
				
				var path = "${ pageContext.servletContext.contextPath }/recruit/cancelApply/update?resumeNo="+ resumeNo + "&jobPostNo=" + jobPostNo;
				location.href = path;
			}

		}
		
		function addBookmark() {
			
			var jobPostNo = "${ requestScope.detailedJobPosting.jobPostNo }";
			
			location.href = "${ pageContext.servletContext.contextPath }/jobposting/bookmark/insert?jobPostNo=" + jobPostNo;
		}

	</script>
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
		
		
	</script>

 
</body>
</html>