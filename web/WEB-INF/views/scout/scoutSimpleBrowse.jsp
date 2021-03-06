<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
	<jsp:include page="../common/header/companyHeader.jsp" />

	<div class="jp_tittle_main_wrapper">
		<div class="jp_tittle_img_overlay"></div>
		<div class="container">
			<div class="row">
				<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
					<div class="jp_tittle_heading_wrapper">
						<div class="jp_tittle_heading">
							<h2>얕은열람</h2>
						</div>
						<div class="jp_tittle_breadcrumb_main_wrapper">
							<div class="jp_tittle_breadcrumb_wrapper">
								<ul>
									<li><a href="${ pageContext.servletContext.contextPath }/mainPage/CoMember">Home</a></li>
                                    <li>></li>
                                    <li><a href="${ pageContext.servletContext.contextPath }/main/Scout/List">스카우트</a></li>
                                    <li>></li>
                                    <li>얕은열람</li>
								</ul>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="jp_cp_profile_main_wrapper">
		<div class="container">
			<div class="row">
				<div class="col-lg-4 col-md-4 col-sm-12 col-xs-12">
					<div class="jp_cp_left_side_wrapper">
						<div class="jp_cp_left_pro_wallpaper">

						<c:if test="${  path ne null}">
							<img src="${ pageContext.servletContext.contextPath }${ path }" 
							style="width: 300px; height: 300px;" alt="post_img" />
						</c:if>
						 <c:if test="${ path eq null }">
                                <img src="${ pageContext.servletContext.contextPath }/resources/image/basic.png" alt="profile_img" style="width:350px; height: 400px;">
                         </c:if>

							<h2><c:out value="${ requestScope.browseName }"></c:out> </h2>
							<p>
								<br>
							</p>
						</div>
						<div class="jp_cp_rd_wrapper">
							<br> <br> <br> 
							<ul>
								<li><a onClick="detailResume(this);">
									<input type="hidden" value="${ number }"><i class="fa fa-download"></i> &nbsp;상세 이력서 보기</a></li>
								<li><a><button class="dibsbutton" type="button"
								 style="width:350px; background-color:transparent; border:0px transparent solid;" 
								 onclick="addWishList(this);" value="${ number }">
								 <i class="fa fa-phone"></i> &nbsp;후보자찜하기</button></a></li>
							</ul>
							<input type="hidden" id="hiddenResumeNo" value="${ number }">
						</div>
					</div>
				</div>
				<div class="col-lg-8 col-md-8 col-sm-12 col-xs-12">
					<div class="jp_cp_right_side_wrapper">
						<div class="jp_cp_right_side_inner_wrapper">
							<h2>인재 소개란</h2>
							<table>
								<tbody>
									<tr>
										<td class="td-w25">이름</td>
										<td class="td-w10">:</td>
										<td class="td-w65"><c:out value="${ requestScope.browseName }"></c:out></td>
									</tr>
									<tr>
										<td class="td-w25">보유기술</td>
										<td class="td-w10">:</td>
										<c:forEach items="${ requestScope.browseSkills }" var="holdingSkill">
										<c:if test="${requestScope.number eq holdingSkill.resumeNo }">
										<td class="td-w65"><c:out value="${ holdingSkill.skillsAndCategory.skillsName }"></c:out></td>
										</c:if>
										</c:forEach>
									</tr>
									<tr>
										<td class="td-w25">직무</td>
										<td class="td-w10">:</td>
										<td class="td-w65"><c:out value="${ requestScope.jobName }"></c:out></td>
									</tr>
									<tr>
										<td class="td-w25">경력</td>
										<td class="td-w10">:</td>
<%-- 									<c:forEach items="${ brosweSimplelDTO }" var="career" varStatus="status"> --%>
									
										<td class="td-w65"><c:out value="${requestScope.careeaNumber} 개월"/>
<%-- 										<c:out value=" :  ${ requestScope.browseCareer.carHireDate } ~ "></c:out> --%>
<%-- 										<c:out value="${  requestScope.browseCareer.carEntDate } "></c:out> --%>
										</td>
<%-- 									</c:forEach>	 --%>
									</tr>
								</tbody>
							</table>
						</div>
					</div>
					<!-- 					이쪽에 상세이력서 폼 추가하기 -->
					<div class="row">
						<div class="col-lg-12 col-md-12 col-xs-12 col-sm-12">
							<div class="jp_cp_accor_heading_wrapper">
								<h2>상세이력서</h2>
								<p>아래의 메뉴에서 상세한 이력서를 조회하세요</p>
							</div>
						</div>
						<div class="col-lg-12 col-md-12 col-xs-12 col-sm-12">
							<div class="accordion_wrapper abt_page_2_wrapper">
								<div class="panel-group" id="accordion_threeLeft">
<!-- 									/.panel-default -->
									<div class="panel panel-default">
										<div class="panel-heading bell">
											<h4 class="panel-title">
												<a class="collapsed" data-toggle="collapse"
													data-parent="#accordion_threeLeft"
													href="#collapseTwentyLeftThree" aria-expanded="false">
													포트폴리오 </a>
											</h4>
										</div>
										<div id="collapseTwentyLeftThree"
											class="panel-collapse collapse" aria-expanded="false"
											role="tablist">
											<div class="panel-body">열람권이 필요합니다.</div>
										</div>
									</div>
									<div class="panel panel-default">
										<div class="panel-heading bell">
											<h4 class="panel-title">
												<a class="collapsed" data-toggle="collapse"
													data-parent="#accordion_threeLeft"
													href="#collapseTwentyLeftThree2" aria-expanded="false">
													자기소개 </a>
											</h4>
										</div>
										<div id="collapseTwentyLeftThree2"
											class="panel-collapse collapse" aria-expanded="false"
											role="tablist">
											<div class="panel-body">열람권이 필요합니다.</div>
										</div>
									</div>
									<div class="panel panel-default">
										<div class="panel-heading bell">
											<h4 class="panel-title">
												<a class="collapsed" data-toggle="collapse"
													data-parent="#accordion_threeLeft"
													href="#collapseTwentyLeftThree3" aria-expanded="false">
													경력, 프로젝트 이력, 자격증, 교육, 수상 이력</a>
											</h4>
										</div>
										<div id="collapseTwentyLeftThree3"
											class="panel-collapse collapse" aria-expanded="false"
											role="tablist">
											<div class="panel-body">열람권이 필요합니다.</div>
										</div>
									</div>
<!-- 									/.panel-default -->
								</div>
<!-- 								end of /.panel-group -->
							</div>
						</div>
					</div>
				</div>

			</div>

		</div>
	</div>
	<jsp:include page="../common/footer.jsp" />

<script>

	
	
// function dibsbutton(dibsbutton){
	
// 	const num = button.parentNode.children[3].value
	
// 	alert(num);
	
// 	location.href="${ pageContext.servletContext.contextPath }/simple/browse/select?num="+num
			
// }	

	function detailResume(a) {
		var answer;
		answer = confirm('상세이력서를 조회하시겠습니까? \n (열람권 1개가 차감됩니다.)');
		
		if(answer == true) {
						
			const resumeNo = a.children[0].value;
			location.href = "${ pageContext.servletContext.contextPath }/detail/browse/select?resumeNo=" + resumeNo;
		}
	}
	
	function addWishList(button) {
		
		const resumeNo = button.value;
		const inputPage = 'simple';
		location.href = "${ pageContext.servletContext.contextPath }/company/scout/wish/insert?resumeNo=" + resumeNo
						+ "&inputPage=" + inputPage;
	}
	
	


</script>

	<script type="text/javascript" src="/let/resources/js/jquery_min.js"></script>
    <script type="text/javascript" src="/let/resources/js/bootstrap.js"></script>
    <script type="text/javascript" src="/let/resources/js/jquery.menu-aim.js"></script>
    <script type="text/javascript" src="/let/resources/js/jquery.countTo.js"></script>
    <script type="text/javascript" src="/let/resources/js/jquery.inview.min.js"></script>
    <script type="text/javascript" src="/let/resources/js/owl.carousel.js"></script>
    <script type="text/javascript" src="/let/resources/js/modernizr.js"></script>
    <script type="text/javascript" src="/let/resources/js/jquery.magnific-popup.js"></script>
    <script type="text/javascript" src="/let/resources/js/custom_II.js"></script>
    
</body>
</html>