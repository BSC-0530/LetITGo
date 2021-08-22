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
	
<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">

<script src="https://code.jquery.com/jquery-1.12.4.js"></script>

<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>


<script type="text/javascript">
	
	$(document).ready(function() {
		$("#searchSkillsAuto").autocomplete({
			source: function(request, response) {
				$.ajax({
					url: "${ pageContext.servletContext.contextPath }/search/auto/skills",
					type: "POST",
					data: { term: request.term },
					dataType: "json",
					success: function(data, textStatus, xnr) {
						response($.map(data, function(item) {
							console.log(item);
							return {
								label: item.skillsName,
								value: item.value
							};
						}));
					},
					error: function(xnr, status, error) {
						console.log(xnr);
					}
				});
			},
		});
	});
		
</script>

	
</head>
<body>
<!-- -----------------------헤더------------------------------------- -->
	<jsp:include page="../common/header/companyHeader.jsp"/>
	<!-- -----------------------헤더끝------------------------------------- -->
	<div class="jp_tittle_main_wrapper">
        <div class="jp_tittle_img_overlay"></div>
        <div class="container">
            <div class="row">
                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                    <div class="jp_tittle_heading_wrapper">
                        <div class="jp_tittle_heading">
                            <h2>스카우트</h2>
                        </div>
                        <div class="jp_tittle_breadcrumb_main_wrapper">
                            <div class="jp_tittle_breadcrumb_wrapper">
                                <ul>
                                    <li><a href="#">Home</a></li>
                                    <li><a href="#">스카우트</a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
	 <!-- jp listing sidebar Wrapper Start -->
	 
    <div class="jp_listing_sidebar_main_wrapper">
		<div class="container">
			<div class="row">
				<form action="${ pageContext.servletContext.contextPath }/main/Scout/List"
	 					method="post">
					<div class="col-lg-3 col-md-3 col-sm-12 col-xs-12 hidden-sm hidden-xs">
						<div class="row">
							<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
								<div class="jp_rightside_job_categories_wrapper">
									<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
									<div class="jp_rightside_job_categories_wrapper">
										<div class="jp_rightside_job_categories_heading">
											<h4>경력</h4>
										</div>
										<div style="height: 200px; background: white;"
											class="jp_form_location_wrapper">
											
											<select style="border: 1px solid;" name="experience">
												<option value="0" selected>경력을 선택해주세요</option>
												<option value="1">신입</option>
												<option value="2">경력직</option>
											</select>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
							<div class="jp_rightside_job_categories_wrapper">
								<div class="jp_rightside_job_categories_heading">
									<h4>보유기술</h4>
								</div>
								<div style="height: 200px; background: white;"
									class="jp_form_location_wrapper">
									<label for="searchSkillsAuto" style="border: 1px solid; width: 500px" >
										<input id="searchSkillsAuto" name="inputSkill"  style="border: 1px solid; width: 260px">
									</label>
								</div>
							</div>
						</div>
						<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
							<button type="submit" class="btn btn-info">조회하기</button>
						</div>
					</div>
				</div>
			 </form>
				  
				<div class="col-lg-9 col-md-9 col-sm-12 col-xs-12 jp_cl_right_bar">
					<c:forEach items="${ requestScope.mainScoutList }" var="mainScout">
					<div class="row">
						<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
							<div class="jp_recent_resume_box_wrapper">
								<div class="jp_recent_resume_img_wrapper" id="detailResume">
									<img src="images/content/resume_img1.jpg" alt="resume_img" />
								</div>
								<div id="skills" class="jp_recent_resume_cont_wrapper">
								<input type="hidden" id="skillss" value="${ holdingSkill.skillsAndCategory.skillsName }">
								<input type="hidden" value="${  holdingSkill.resumeNo eq mainScout.resumeNo }">
									<h3><c:out value="${ mainScout.memberDTO.memName }"></c:out>  </h3>
									<p><i class="fa fa-folder-open-o"></i>
									
									<c:forEach items="${ requestScope.scoutListSkills }" var="holdingSkill">
									<c:if test="${  holdingSkill.resumeNo eq mainScout.resumeNo }">
										<c:out value="${ holdingSkill.skillsAndCategory.skillsName }"/>
									</c:if>
									 </c:forEach>
									</p>
									<c:forEach items="${ requestScope.scoutCareea }" var="careea" varStatus="status">
									<c:if test="${ mainScout.resumeNo eq careea.RESUME_NO}">
									<i><c:out value= " 경력  ${ careea.CAREER } 개월"/> </i>
									</c:if>
									</c:forEach>
								</div>
								<div class="jp_recent_resume_btn_wrapper">
									<button style="margin-left:150px; margin-top:20px;" type="button" class="btn btn-info" onclick="browse(this);">간단 조회</button>
									<input type="hidden" id="hiddenResumeNo" value="${ mainScout.resumeNo }">
								</div>
							</div>
						</div>
					</div>
					</c:forEach>
				</div>
			</div>
			
		</div>
		
		<!-- jp listing sidebar Wrapper End -->
		</div><!-- -----------------------풋터------------------------------------- -->	
		
	<jsp:include page="../common/footer.jsp"/>
	<!-- -----------------------풋터끝------------------------------------- -->
	
<script>
	function browse(button){
		
		const num = button.parentNode.children[1].value;
		
// 		location.href="${ pageContext.servletContext.contextPath }/Company/Scout/List/Select?num="+num
		
		location.href="${ pageContext.servletContext.contextPath }/simple/browse/select?num=" + num;
				
	}	
	$.support.cors = true;
	
</script>


</body>
</html>