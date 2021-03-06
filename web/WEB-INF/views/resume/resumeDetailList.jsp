<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="Scripts/bootstrap.min.js"></script>
<link rel="stylesheet" type="text/css"
	href="${ pageContext.servletContext.contextPath }/resources/css/bootstrap.css" />
<link rel="stylesheet" type="text/css"
	href="${ pageContext.servletContext.contextPath }/resources/css/animate.css" />
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
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
</head>
<body>

	<jsp:include page="../common/header/personalHeader.jsp" />
	
	<div class="jp_tittle_main_wrapper">
		<div class="jp_tittle_img_overlay"></div>
		<div class="container">
			<div class="row">
				<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
					<div class="jp_tittle_heading_wrapper">
						<div class="jp_tittle_heading">
							<h2>?????? ?????????</h2>
						</div>
						<div class="jp_tittle_breadcrumb_main_wrapper">
							<div class="jp_tittle_breadcrumb_wrapper">
								<ul>
									<li><a href="${ pageContext.servletContext.contextPath }/mainPage/CoMember">Home</a></li>
                                    <li>></li>
                                    <li><a href="${ pageContext.servletContext.contextPath }/main/Scout/List">?????????</a></li>
                                    <li>></li>
                                    <li><a href="">?????? ?????????</a></li>
                                   
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
								<img src="images/content/cp1.png" alt="profile_img">
									
									<h2>${ detailList[0].memName }</h2>						
								
								

							</div>
							<div class="jp_cp_rd_wrapper">
							
								
								
							</div>
						</div>
					</div>
					<div class="col-lg-8 col-md-8 col-sm-12 col-xs-12">
						<div class="jp_cp_right_side_wrapper">
							<div class="jp_cp_right_side_inner_wrapper">
								<h2>?????? ?????????</h2>
								<table>
									<tbody>
										
										<tr>
											<td class="td-w25">??????</td>
											<td class="td-w10">:</td>
											
											<td class="td-w65">${ requestScope.detailResume[0].memName }</td>
											
										</tr>
										<tr>
											<td class="td-w25">????????????</td>
											<td class="td-w10">:</td>
											<c:forEach items="${ requestScope.detailSkills }" var="detailSkills" varStatus="status">
												<td class="td-w65">
													${ detailSkills.skillsName }
												</td>
											</c:forEach>
										</tr>
										<tr>
											<td class="td-w25">??????</td>
											<td class="td-w10">:</td>
											
											<td class="td-w65">${ requestScope.detailJobField[0].jobName }</td>
											
										</tr>
										<tr>
											<td class="td-w25">??????</td>
											<td class="td-w10">:</td>
											<c:forEach items="${ requestScope.detailCareer }" var="detail" varStatus="status">
												<td class="td-w65">
													${ detail.carHireDate } ~ ${ detail.carEntDate }
												</td>
											</c:forEach>
										</tr>

									</tbody>
								</table>
							</div>
						</div>
						<div class="row">
							<div class="col-lg-12 col-md-12 col-xs-12 col-sm-12">
								<div class="jp_cp_accor_heading_wrapper">
									<h2>???????????????</h2>
									<p>????????? ???????????? ????????? ???????????? ???????????????.</p>
								</div>
							</div>
							<div class="col-lg-12 col-md-12 col-xs-12 col-sm-12">
								<div class="accordion_wrapper abt_page_2_wrapper">
									<div class="panel-group" id="accordion_threeLeft">


										<!-- /.panel-default -->
										<div class="panel panel-default">
											<div class="panel-heading bell">
												<h4 class="panel-title">
													<a class="collapsed" data-toggle="collapse"
														data-parent="#accordion_threeLeft"
														href="#collapseTwentyLeftThree" aria-expanded="false">
														???????????????
													</a>
												</h4>
											</div>
											<div id="collapseTwentyLeftThree"
												class="panel-collapse collapse" aria-expanded="false"
												role="tablist">
												<div class="panel-body">	
													<c:forEach items="${ requestScope.detailPot }" var="detail" varStatus="status">
																${ detail.potLinkAddress }
													</c:forEach>
												</div>
											</div>
										</div>
										<div class="panel panel-default">
											<div class="panel-heading bell">
												<h4 class="panel-title">
													<a class="collapsed" data-toggle="collapse"
														data-parent="#accordion_threeLeft"
														href="#collapseTwentyLeftThree2" aria-expanded="false">
														????????????	
													</a>
												</h4>
											</div>
											<div id="collapseTwentyLeftThree2"
												class="panel-collapse collapse" aria-expanded="false"
												role="tablist">
												<div class="panel-body">
													<c:forEach items="${ requestScope.detailIntroContent }" var="detail" varStatus="status">
														${ detail.selfIntroItemName }<br>
														${ detail.selfIntroContent.selfIntroItemContent }<br><br>
													</c:forEach>
												</div>
											</div>
										</div>
										<div class="panel panel-default">
											<div class="panel-heading bell">
												<h4 class="panel-title">
													<a class="collapsed" data-toggle="collapse"
														data-parent="#accordion_threeLeft"
														href="#collapseTwentyLeftThree3" aria-expanded="false">														
														??????, ???????????? ??????, ?????????, ??????, ?????? ?????? 	
														</a>
												</h4>
											</div>
											<div id="collapseTwentyLeftThree3"
												class="panel-collapse collapse" aria-expanded="false"
												role="tablist">
												<div class="panel-body">
													<h4><label>??????</label></h4>
													<c:forEach items="${ requestScope.detailCareer }" var="detail" varStatus="status">
														????????? : ${ detail.carComName }<br>
														????????? : ${ detail.carDeptName }<br>
														?????? : ${ detail.carJobName }<br>
														?????? ?????? : ${ detail.carWorkField }<br>
														????????? : ${ detail.carHireDate }<br>
														????????? : ${ detail.carEntDate }<br>
														<br>
													</c:forEach>
													<h4><label>???????????? ??????</label></h4>
													<c:forEach items="${ requestScope.detailCareer }" var="detail" varStatus="status">
														??????????????? : ${ detail.projectName }<br>
														???????????? ?????? ?????? : ${ detail.projectContent }<br>
														???????????? ????????? : ${ detail.projectStartDate }<br>
														???????????? ????????? : ${ detail.projectEndDate }<br>
														<br>
														
													</c:forEach>
													<h4><label>?????????</label></h4>
													<c:forEach items="${ requestScope.detailLicense }" var="detail" varStatus="status">
														????????? ??? : ${ detail.licenseName }<br>
														????????? : ${ detail.licenseAgency }<br>
														????????? ????????? : ${ detail.licenseDate }<br>
														<br>
													
													</c:forEach>
													<h4><label>?????? ??????</label></h4>
													<c:forEach items="${ requestScope.detailEdu }" var="detail" varStatus="status">
														????????? : ${ detail.eduName }<br>
														???????????? : ${ detail.eduAgency }<br>
														?????? ????????? : ${ detail.eduStartDate }<br> 
														?????? ????????? : ${ detail.eduEndDate }<br>
														?????? ?????? : ${ detail.eduContent }<br>
														<br>
													
													</c:forEach>
													<h4><label>?????? ??????</label></h4>
													<c:forEach items="${ requestScope.detailAward }" var="detail" varStatus="status">
														????????? : ${ detail.awdName }<br>
														???????????? : ${ detail.awdAgency }<br>
														????????? : ${ detail.awdDate }<br>
														???????????? : ${ detail.awdContent }<br>
														<br>
													</c:forEach>
														
												</div>
											</div>
										</div>
										<!-- /.panel-default -->
									</div>
									<!--end of /.panel-group-->
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	<div class="col-lg-8 col-md-8 col-sm-8 col-xs-12 jp_cl_right_bar"></div>
	<div class="col-lg-4 col-md-4 col-sm-4 col-xs-12 jp_cl_right_bar">
		<button class="btn-info" onClick="updateResume(this);"
			value="${ requestScope.detailResume[0].resume[0].resumeNo }">????????????</button>
		<button class="btn-info" onClick="deleteResume(this);"
			value="${ requestScope.detailResume[0].resume[0].resumeNo }">????????????</button>
	</div>
	<!-- jp ad post Wrapper End -->


	<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 jp_cl_right_bar"></div>
	<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 jp_cl_right_bar"></div>

	<script type="text/javascript">
		function updateResume(button) {

			const selectedUpdateResumeNo = button.value;
			location.href = "${ pageContext.servletContext.contextPath }/resume/update?selectedUpdateResumeNo="
					+ selectedUpdateResumeNo;

		}

		function deleteResume(button) {

			const selectedDeleteResumeNo = button.value;
			location.href = "${ pageContext.servletContext.contextPath }/resume/delete?selectedDeleteResumeNo="
					+ selectedDeleteResumeNo;
		}

		$("input").filter("[value='null']").val("");
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
	

	<jsp:include page="../common/footer.jsp" />
</body>
</html>