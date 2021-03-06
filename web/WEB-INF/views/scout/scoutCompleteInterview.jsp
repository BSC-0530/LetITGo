<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
</head>
<body>
	
	
	
	<c:forEach items="${ detailList }" var="detail" varStatus="status">

		<div class="jp_cp_profile_main_wrapper">
			<div class="container">
				<div class="row">
					<div class="col-lg-4 col-md-4 col-sm-12 col-xs-12">
						<div class="jp_cp_left_side_wrapper">
							<div class="jp_cp_left_pro_wallpaper">
								<img src="images/content/cp1.png" alt="profile_img">
								<h2>${ detail.memName }</h2>
								

							</div>
							<div class="jp_cp_rd_wrapper">
								<ul>
									<li>
										<a style="background: gray;">
											<input id="interviewMemNo" type="hidden" value="${ detail.scoutResume[status.index].inMemNo }">
											<i class="fa fa-download"></i>
											&nbsp;?????? ??????
										</a>
									</li>
									
									<li><a href="#"><i class="fa fa-phone"></i>
											&nbsp;????????? ?????????</a></li>
								</ul>
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
											<td class="td-w65">${ detail.memName }</td>
										</tr>
										<tr>
											<td class="td-w25">????????????</td>
											<td class="td-w10">:</td>
											<td class="td-w65">${ detail.scoutResume[status.index].holdingAndSkillsList[status.index].skillsAndCategory.skillsName }</td>
										</tr>
										<tr>
											<td class="td-w25">??????</td>
											<td class="td-w10">:</td>
											<td class="td-w65">${ detail.scoutResume[status.index].jobFieldList[status.index].jobName }</td>
										</tr>
										<tr>
											<td class="td-w25">??????</td>
											<td class="td-w10">:</td>
											<td class="td-w65">${ detail.scoutResume[status.index].careerHistoryList[status.index].projectStartDate }
											~ ${ detail.scoutResume[status.index].careerHistoryList[status.index].projectEndDate }</td>
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
														???????????????<br><br>
														<c:choose>
															<c:when test="${ detail.scoutResume[status.index].portFolioList[status.index].potKinds eq '??????' }">
																${ detail.scoutResume[status.index].portFolioList[status.index].potLinkAddress }															
															</c:when>
															<c:otherwise>
																${ detail.scoutResume[status.index].portFolioList[status.index].potOriginalName }
															</c:otherwise>
														</c:choose>
													</a>
												</h4>
											</div>
											<div id="collapseTwentyLeftThree"
												class="panel-collapse collapse" aria-expanded="false"
												role="tablist">
												<div class="panel-body">-----------</div>
											</div>
										</div>
										<div class="panel panel-default">
											<div class="panel-heading bell">
												<h4 class="panel-title">
													<a class="collapsed" data-toggle="collapse"
														data-parent="#accordion_threeLeft"
														href="#collapseTwentyLeftThree2" aria-expanded="false">
														????????????<br><br>
														${ detail.scoutResume[status.index].itemAndContentList[status.index].selfIntroContent.selfIntroItemContent }
													</a>
												</h4>
											</div>
											<div id="collapseTwentyLeftThree2"
												class="panel-collapse collapse" aria-expanded="false"
												role="tablist">
												<div class="panel-body">---------</div>
											</div>
										</div>
										<div class="panel panel-default">
											<div class="panel-heading bell">
												<h4 class="panel-title">
													<a class="collapsed" data-toggle="collapse"
														data-parent="#accordion_threeLeft"
														href="#collapseTwentyLeftThree3" aria-expanded="false">
														??????, ???????????? ??????, ?????????, ??????, ?????? ?????? <br><br>
														??????<br> 
														????????? : ${ detail.scoutResume[status.index].careerHistoryList[status.index].carComName }<br>
														????????? : ${ detail.scoutResume[status.index].careerHistoryList[status.index].carDeptName }<br>
														?????? : ${ detail.scoutResume[status.index].careerHistoryList[status.index].carJobName }<br></a>
														?????? ?????? : ${ detail.scoutResume[status.index].careerHistoryList[status.index].carWorkField }<br>
														????????? : ${ detail.scoutResume[status.index].careerHistoryList[status.index].carHireDate }<br>
														????????? : ${ detail.scoutResume[status.index].careerHistoryList[status.index].carEntDate }<br>
														<br>???????????? ??????<br>
														??????????????? : ${ detail.scoutResume[status.index].careerHistoryList[status.index].projectName }<br>
														???????????? ?????? ?????? : ${ detail.scoutResume[status.index].careerHistoryList[status.index].projectContent }<br>
														???????????? ????????? : ${ detail.scoutResume[status.index].careerHistoryList[status.index].projectStartDate }<br>
														???????????? ????????? : ${ detail.scoutResume[status.index].careerHistoryList[status.index].projectEndDate }<br>
														<br>
														?????????<br>
														????????? ??? : ${ detail.scoutResume[status.index].licenseHistoryList[status.index].licenseName }<br>
														????????? : ${ detail.scoutResume[status.index].licenseHistoryList[status.index].licenseAgency }<br>
														????????? ????????? : ${ detail.scoutResume[status.index].licenseHistoryList[status.index].licenseDate }<br>
														<br>
														?????? ??????<br>
														????????? : ${ detail.scoutResume[status.index].educationHistoryList[status.index].eduName }<br>
														???????????? : ${ detail.scoutResume[status.index].educationHistoryList[status.index].eduAgency }<br>
														?????? ????????? : ${ detail.scoutResume[status.index].educationHistoryList[status.index].eduStartDate }<br> 
														?????? ????????? : ${ detail.scoutResume[status.index].educationHistoryList[status.index].eduEndDate }<br>
														?????? ?????? : ${ detail.scoutResume[status.index].educationHistoryList[status.index].eduContent }<br>
														<br>
														?????? ??????<br>
														????????? : ${ detail.scoutResume[status.index].awardHistoryList[status.index].awdName }<br>
														???????????? : ${ detail.scoutResume[status.index].awardHistoryList[status.index].awdAgency }<br>
														????????? : ${ detail.scoutResume[status.index].awardHistoryList[status.index].awdDate }<br>
														???????????? : ${ detail.scoutResume[status.index].awardHistoryList[status.index].awdContent }<br>
														
												</h4>
											</div>
											<div id="collapseTwentyLeftThree3"
												class="panel-collapse collapse" aria-expanded="false"
												role="tablist">
												<div class="panel-body">-----</div>
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
		<input id="resumeNo" type="hidden" value="${ detail.scoutResume[status.index].resumeNo }">
<%-- 	<input type="hidden" value="${ detail.scoutResume[status.index].resumeNo }"> --%>
		
		
	</c:forEach>
</body>
</html>