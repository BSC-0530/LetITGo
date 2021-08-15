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
				<div
					class="col-lg-3 col-md-3 col-sm-12 col-xs-12 hidden-sm hidden-xs">
					<div class="row">
						<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
							<div class="jp_rightside_job_categories_wrapper">
								<div class="jp_rightside_job_categories_heading">
									<h4>경력</h4>
								</div>
								<div style="height: 200px; background: white;"
									class="jp_form_location_wrapper">
									<label style="border: 1px solid;">
										<input id="searchhBox">
									</label>
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
									<label style="border: 1px solid;">
										<input id="searchhBox">
									</label>
								</div>
							</div>
						</div>
					</div>
				</div>
				  
				<div class="col-lg-9 col-md-9 col-sm-12 col-xs-12 jp_cl_right_bar">
					<c:forEach items="${ requestScope.mainScoutList }" var="mainScout">
					<div class="row">
						<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
							<div class="jp_recent_resume_box_wrapper">
								<div class="jp_recent_resume_img_wrapper" id="detailResume">
									<img src="images/content/resume_img1.jpg" alt="resume_img" />
								</div>
								<div class="jp_recent_resume_cont_wrapper">
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
</script>
<script>
// $(function() {
//     $('#searchBox').autocomplete({
//         source : function(reuqest, response) {
//             $.ajax({
//                 type : 'post',
//                 url: '/LetITGo//main/Scout/List',
//                 dataType : 'json',
//                 success : function(data) {
//                     // 서버에서 json 데이터 response 후 목록 추가
//                     response(
//                         $.map(data, function(item) {
//                             return {
//                                 label : item + 'label',
//                                 value : item,
//                                 test : item + 'test'
//                             }
//                         })
//                     );
//                 }
//             });
//         },
//         select : function(event, ui) {
//             console.log(ui);
//             console.log(ui.item.label);
//             console.log(ui.item.value);
//             console.log(ui.item.test);
//         },
//         focus : function(event, ui) {
//             return false;
//         },
//         minLength : 1,
//         autoFocus : true,
//         classes : {
//             'ui-autocomplete': 'highlight'
//         },
//         delay : 500,
//         position : { my : 'right top', at : 'right bottom' },
//         close : function(event) {
//             console.log(event);
//         }
//     });
// });
 </script>
</body>
</html>