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
<link rel="stylesheet" type="text/css"
	href="${ pageContext.servletContext.contextPath }/resources/css/letitgo/letitgo.css" />
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<link rel="stylesheet" type="text/css"
	href="${ pageContext.servletContext.contextPath }/resources/css/letitgo/letitgo.css" />

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script type="text/javascript" charset="utf8"
	src="https://cdn.datatables.net/1.10.25/js/jquery.dataTables.js"></script>
<link rel="stylesheet" type="text/css"
	href="https://cdn.datatables.net/1.10.25/css/jquery.dataTables.css">

</head>
<body>
	<jsp:include page="../../common/header/personalHeader.jsp" />

	<div class="jp_tittle_main_wrapper">
		<div class="jp_tittle_img_overlay"></div>
		<div class="container">
			<div class="row">
				<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
					<div class="jp_tittle_heading_wrapper">
						<div class="jp_tittle_heading">
							<h2>??????????????????</h2>
						</div>
						<div class="jp_tittle_breadcrumb_main_wrapper">
							<div class="jp_tittle_breadcrumb_wrapper">
								<ul>
									<li><a href="${ pageContext.servletContext.contextPath }/mainPage/InMember">Home</a></li>
									<li>></li>
									<li><a href="${ pageContext.servletContext.contextPath }/personal/myPage/select">?????? ???????????????</a></li>
									<li>></li>
									<li>??????????????????</li>
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
				<div style="height: 1000px;"
					class="col-lg-3 col-md-3 col-sm-12 col-xs-12 hidden-sm hidden-xs">
					<div class="row">
						<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
							<div class="jp_rightside_job_categories_wrapper">
								<div class="jp_rightside_job_categories_heading">
									<h4 align="left" style="font-weight: bold">??????????????????</h4>
								</div>
								<div class="jp_rightside_job_categories_content">
									<div class="handyman_sec1_wrapper">
										<div class="content">
											<div class="box">
												<p>
													<a
														href="${ pageContext.servletContext.contextPath }/personalMyInfo">????????????</a>
												</p>
												<br> <br>
												<p>
													<a
														href="${ pageContext.servletContext.contextPath }/personal/apply/select">????????????</a>
												</p>
												<br> <br>
												<p>
													<a
														href="${ pageContext.servletContext.contextPath }/scout/myPageList/servlet">??????????????????</a>
												</p>
												<br> <br>
												<p>
													<a href="${ pageContext.servletContext.contextPath }/personal/bookmark/select">?????????</a>
												</p>
												<br> <br>
												<p>
													<a href="${ pageContext.servletContext.contextPath }/login/member/withdrawal/yn">????????????</a>
												</p>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<!-- ?????? ???????????? ????????? ???????????? -->
				<!--   				111~114?????? ????????? ???????????? ?????? ????????? ?????????       -->
				<div class="col-lg-9 col-md-9 col-sm-12 col-xs-12">
					<div class="row">
						<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
						<br><br><br>
							<!-- ????????? ????????? -->
							<h2>????????? ?????? ??????</h2>
							<br>
							<br>
						</div>
						<table id="table_personal_scout" class="hover cell-border stripe">
							<thead>
								<tr>
									<td>????????????</td>
									<td>??????</td>
									<td>??????</td>
									<td>??????</td>
									<td>????????????</td>
								</tr>
							</thead>
								<tbody align="center">
							<c:forEach var="list" items="${ readList }">
									<tr>
										<td><c:out value="${ list.coComName }"></c:out></td>
										<td><c:out value="${ list.address }"></c:out></td>
										<td><c:out value="${ list.coStatus }"></c:out></td>
										<td><c:out value="${ list.resumeBrowseKinds }"></c:out>
										</td>
										<td><button class="btn btn-info" type="button" onclick="browse(this);" value="${ list.coMemNo }">????????????</button>
											
									</tr>
							</c:forEach>
								</tbody>
						</table>
						<br><br>
						<h2>?????? ??????</h2><br><br>
						<table id="table_personal_interview" class="hover cell-border stripe">
							<thead>
								<tr>
									<th>????????????</th>
									<th>??????</th>
									<th>??????</th>
									<th>??????</th>
									<th>????????????</th>
								</tr>
							</thead>
								<tbody align="center">
							<c:forEach var="list" items="${ readList }">
									<tr>
										<td><c:out value="${ list.coComName }"></c:out></td>
										<td><c:out value="${ list.address }"></c:out></td>
										<td><c:out value="${ list.coStatus }"></c:out></td>
										<td><c:out value="${ list.scoutKinds }"></c:out></td>
										<td>
											<c:choose>
												<c:when test="${ list.scoutKinds eq '??????'}">
													<button class="btn btn-info" type="button" id="selectedYN" value="${ list.resumeNo }" onclick="acceptInterview(this);">??????</button>
													
													<button class="btn btn-info" type="button" id="selectedYN" value="${ list.resumeNo }" onclick="refuseInterview(this);">
														??????
													</button>											
												</c:when>
												<c:otherwise>
													<button class="btn btn-info" type="button" value="${ list.resumeNo }" onclick="acceptInterview(this);" disabled>??????</button>
													
													<button class="btn btn-info" type="button" value="${ list.resumeNo }" onclick="refuseInterview(this);" disabled>??????</button>	
												</c:otherwise>
											</c:choose>
										</td>
									</tr>
							</c:forEach>
								</tbody>
						</table>

					</div>
				</div>

			</div>
		</div>
	</div>

	<jsp:include page="../../common/footer.jsp" />

	<script>
		$(document).ready(function() {
			$('#table_personal_scout').DataTable();
		});

		$(document).ready(function() {
			$('#table_personal_interview').DataTable();
		});
		
		function acceptInterview(button) {
			var answer;
			answer = confirm('?????? ????????? ????????????????????????? \n (?????? ????????? ??????????????? ???????????? ???????????????.)');
			const coMemNo = document.getElementById("returnCoMemNo").value;
			
			if(answer == true) {
				const btn = document.getElementById("selectedYN");
				const resumeNo = btn.value;
				const selectedYN = 'Y';
				document.getElementById("selectedYN").disabled = true;
				location.href = "${ pageContext.servletContext.contextPath }/personal/scout/response?selectedYN="
						+ selectedYN + "&resumeNo=" + resumeNo + "&coMemNo=" + coMemNo;
			}
		}
		
		function refuseInterview(button) {
			var answer;
			answer = confirm('?????? ????????? ????????????????????????? \n (?????? ?????? ????????? ??????????????? ???????????? ???????????????.)');
			
			if(answer == true) {
				const btn = document.getElementById("selectedYN");
				const resumeNo = btn.value;
				const selectedYN = 'N';
				const coMemNo = button.value;
				document.getElementById("selectedYN").disabled = true;
				location.href = encodeURI("${ pageContext.servletContext.contextPath }/personal/scout/response?selecteYN="
						+ selectedYN + "&resumeNo=" + resumeNo + "&coMemNo=" + coMemNo);
			}
		}
		
		function browse(button) {
			
			const coMemNo = button.value;
			
			location.href = "${ pageContext.servletContext.contextPath }/aboutCompany/select?coMemNo=" + coMemNo;
			
		}


	</script>


</body>
</html>