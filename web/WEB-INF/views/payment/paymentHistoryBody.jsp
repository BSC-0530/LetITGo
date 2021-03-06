<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
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
<script>

	/* ????????? ????????? ?????? */
	$(document).ready(function() {
		$('#table_payment').DataTable();
	});

	$(document).ready(function() {
		$('#table_Browsing').DataTable();
	});
	$(document).ready(function() {
		$('#table_exposure').DataTable();
	});

	/* ??????????????? ???????????? ?????????????????? ?????? */
	function req(button) {
		
		/* ????????? ????????????  parentNode??? td / parentNode??? tr /  children[0]??? td / children[0]??? payNo */
		var payNo = button.parentNode.parentNode.children[0].innerText;

		/* ???????????? ????????? ?????? */
		var $form = $("<form>").attr("action", "${ pageContext.servletContext.contextPath }/refund/request/insert").attr("method", "get");

		/* ?????? ???????????? hidden ????????? input????????? ???????????? ?????? ????????? */
		$form.append($("<input>").attr("name", "payNo").attr("type", "hidden").val(payNo));
	
		/* ???????????? ??????????????? ????????? */
		$("body").append($form);
		
		/* ????????? ?????? ?????? submit ??? */
		$form.submit();
	}
	
	/*????????? ?????? ????????? ??? ????????? ???????????? ?????? */
	function openResume(td) {
		
		/* td??? ????????????  children[0]??? resumeNo */
		var resumeNo = td.children[0].value;

		/* url ????????? ????????? ?????? ????????? */
		location.href = "${ pageContext.servletContext.contextPath }/detail/browse/select?resumeNo=" + resumeNo;

	}
	
	/* ???????????? ????????? ??? ?????????????????? ?????? */
	function openPost(td) {
		
		/* td??? ????????????  children[0]??? jobPostNo */
		var jobPostNo = td.children[0].value;
		
		/* url ????????? ????????? ?????? ????????? */
		location.href = "${ pageContext.servletContext.contextPath }/detail/jobPosting/select?jobPostNo="+ jobPostNo;

	}
</script>
</head>
<body>
	<!-- ?????? ??????????????? -->
	<div class="jp_tittle_main_wrapper">
		<div class="jp_tittle_img_overlay"></div>
		<div class="container">
			<div class="row">
				<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
					<div class="jp_tittle_heading_wrapper">
						<div class="jp_tittle_heading">
							<h2>????????????</h2>
						</div>
						<div class="jp_tittle_breadcrumb_main_wrapper">
							<div class="jp_tittle_breadcrumb_wrapper">
								<ul>
									<li><a href="${ pageContext.servletContext.contextPath }/mainPage/CoMember">Home</a></li>
									<li>></li>
									<li><a href="${ pageContext.servletContext.contextPath }/company/myPage/main">?????? ???????????????</a></li>
									<li>></li>
									<li>????????????</li>
								</ul>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<!-- ?????? ?????? -->
	<div class="jp_listing_sidebar_main_wrapper">
		<div class="container">
			<div class="row">
				<!-- ???????????? -->
				<div
					class="col-lg-3 col-md-3 col-sm-12 col-xs-12 hidden-sm hidden-xs">
					<div class="row">
						<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
							<div class="jp_rightside_job_categories_wrapper">
								<div class="jp_rightside_job_categories_heading">
									<h4 style="font-weight: bold">????????????</h4>
								</div>
								<div class="jp_rightside_job_categories_content">
									<div class="handyman_sec1_wrapper">
										<div class="content">
											<div class="box">
												<p>
													<a href="${ pageContext.servletContext.contextPath }/coMem/infomationServlet">????????????</a>
												</p>
												<br> <br>
												<p>
													<a
														href="${ pageContext.servletContext.contextPath }/companyTestServlet">????????????</a>
												</p>
												<br> <br>
												<p>
													<a
														href="${ pageContext.servletContext.contextPath }/company/paymentHistory/select">????????????</a>
												</p>
												<br> <br>
												<p>
													<a
														href="${ pageContext.servletContext.contextPath }/company/refundHistory/select">????????????</a>
												</p>
												<br> <br>
												<p>
													<a
														href="${ pageContext.servletContext.contextPath }/company/jobPostingHistory/select">????????????</a>
												</p>
												<br> <br>
												<p>
													<a
														href="${ pageContext.servletContext.contextPath }/Company/Scout/List/Select">??????????????????</a>
												</p>
												<br> <br>
												<p>
													<a href="${ pageContext.servletContext.contextPath }/company/scout/wish/select">???????????????</a>
												</p>
												<br> <br>
												<p>
													<a href="${ pageContext.servletContext.contextPath }/login/comember/withdrawal/yn">????????????</a>
												</p>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>

				<!-- ????????? ?????? -->

				<div class="col-lg-9 col-md-9 col-sm-12 col-xs-12">
					<div class="row">
						<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
							<div class="jp_counter_main_wrapper">
								<h1 align="left">?????? ???????????????</h1>
								<br>
								<div class="container">
									<div class="gc_counter_cont_wrapper">
										<div class="count-description">
											<span class="timer"><c:out
													value="${ requestScope.resumeBrowsingNum }" /></span> <i
												class="fa"></i>
											<h5 class="con1">????????? ?????????</h5>
										</div>
									</div>
									<div class="gc_counter_cont_wrapper2">
										<div class="count-description">
											<span class="timer"><c:out
													value="${ requestScope.exposureUsingPostNum }" /></span> <i
												class="fa"></i>
											<h5 class="con2">????????? ???????????? ??????</h5>
										</div>
									</div>
									<div class="gc_counter_cont_wrapper3">
										<div class="count-description">
											<c:if test="${ requestScope.exposureRestHour != null && requestScope.exposureRestMinute != null  }">
											<span class="timer"><c:out value="${ requestScope.exposureRestHour }" /></span> <span>:</span>
											<span class="timer"><fmt:formatNumber value="${ requestScope.exposureRestMinute}" pattern="#00" /></span>
											</c:if>
											
											<c:if test="${ requestScope.exposureRestHour == null && requestScope.exposureRestMinute != null  }">
											<span class="timer">00</span> <span>:</span>
											<span class="timer"><fmt:formatNumber value="${ requestScope.exposureRestMinute}" pattern="#00" /></span>
											</c:if>
											
											<c:if test="${ requestScope.exposureRestHour != null && requestScope.exposureRestMinute == null  }">
											<span class="timer"><c:out value="${ requestScope.exposureRestHour }" /></span> <span>:</span>
											<span class="timer">00</span>
											</c:if>
											
											
											<c:if test="${ requestScope.exposureRestHour == null && requestScope.exposureRestMinute == null }">
											<span class="timer">00</span> <span>:</span>
											<span class="timer">00</span>
											</c:if>
											<i class="fa"></i>
											<h5 class="con3">????????? ?????? ??????</h5>
										</div>
									</div>
								</div>
								<br> <br>
							</div>
						</div>
						<br>

						<!-- ???????????? ?????????????????? -->
						<h1>?????? ??????</h1>
						<br>
						<table id="table_payment" class="hover cell-border stripe">
							<thead>
								<tr align="center">
									<td>????????????</td>
									<td>?????????</td>
									<td>????????????</td>
									<td>????????????</td>
									<td>????????????</td>
									<td>????????????</td>
								</tr>
							</thead>

								<tbody align="center">
							<c:forEach var="payment" items="${ requestScope.paymentHistoryList }">
									<tr>
										<td><c:out value="${ payment.payNo }" /></td>
										<td><c:out value="${ payment.productName }" /></td>
										<td><fmt:formatNumber value="${ payment.payPrice }" pattern="###,###" /></td>
										<td><c:out value="${ payment.payDate }" /></td>
										<td><c:out value="${ payment.payKinds }" /></td>

										<c:if test="${ payment.payKinds eq '????????????' }">
											<td><button class="btn btn-info"type="submit" onclick="req(this);">????????????</button></td>
										</c:if>

										<c:if test="${ payment.payKinds eq '????????????' }">
											<td><button class="btn btn-info"type="button" disabled>????????????</button></td>
										</c:if>

										<c:if test="${ payment.payKinds eq '????????????' }">
											<td><button class="btn btn-info"type="button" disabled>????????????</button></td>
										</c:if>

										<c:if test="${ payment.payKinds eq '????????????' }">
											<td><button class="btn btn-info"type="button" disabled>???????????????</button></td>
										</c:if>

										<c:if
											test="${ payment.payKinds != ('????????????' or '????????????' or '????????????')  }">
											<td><button class="btn btn-info"type="submit" onclick="req(this);">????????????</button></td>
										</c:if>
									</tr>
							</c:forEach>
								</tbody>

						</table>
						<br> <br>

						<!-- ????????? ???????????? ?????????????????? -->

						<h1>????????? ????????????</h1>
						<br>
						<table id="table_Browsing" class="hover cell-border stripe">
							<thead>
								<tr align="center">
									<td>????????? ??????</td>
									<td>??????</td>
									<td>?????? ??????</td>
									<td>?????? ??????</td>
									<td>?????? ??????</td>
								</tr>
							</thead>
								<tbody align="center">
							<c:forEach var="browseUsingHistroy" items="${ requestScope.paymentBrowseUsingHistroyList }">
									<tr>
										<td onclick="openResume(this);">
										<input type="hidden" name="resumeNo" value="${ browseUsingHistroy.resumeNo }">
										<c:out value="${ browseUsingHistroy.resumeTitle }" /></td>
										<td><c:out value="${ browseUsingHistroy.memName }" /></td>
										<td><c:out value="${ browseUsingHistroy.jobName }" /></td>
										<td><c:forEach var="holdingSkillsList"
												items="${requestScope.paymentHoldingSkillsList }">
												<c:if
													test="${ browseUsingHistroy.resumeNo eq holdingSkillsList.resumeNo }">
													<c:out value="${ holdingSkillsList.skillsName }" />
													<span> </span>
												</c:if>
											</c:forEach></td>
										<td><c:out value="${ browseUsingHistroy.productUseDate }" /></td>
									</tr>
							</c:forEach>
								</tbody>
						</table>
						<br> <br>

						<!-- ????????? ???????????? ?????????????????? -->

						<h1>????????? ????????????</h1>
						<br>
						<table id="table_exposure" class="hover cell-border stripe">
							<thead>
								<tr align="center">
									<td>?????? ??????</td>
									<td>?????? ??????</td>
									<td>?????? ??????</td>
									<td>?????????</td>
									<td>????????????</td>
									<td>????????????</td>
								</tr>
							</thead>
								<tbody align="center">
							<c:forEach var="exposureUsingPostHistroy" items="${ requestScope.paymentExposureUsingHistoryList }">
									<tr>
										<td onclick="openPost(this);">
										<input type="hidden" name="resumeNo" value="${ exposureUsingPostHistroy.jobPostNo }">
										<c:out value="${ exposureUsingPostHistroy.jobPostTitle }" />
										</td>
										<td><c:out value="${ exposureUsingPostHistroy.jobName }" /></td>
										<td><c:forEach var="requestingSkillsList"
												items="${ requestScope.paymentrequestingSkillsList }">
												<c:if test="${ exposureUsingPostHistroy.jobPostNo eq requestingSkillsList.jobPostNo }">
													<c:out value="${ requestingSkillsList.skillsName }" />
													<span> </span>
												</c:if>
											</c:forEach></td>
										<td><c:out
												value="${ exposureUsingPostHistroy.jobPostDeadline }" /></td>
										<td><c:out
												value="${ exposureUsingPostHistroy.exposureUseDate }" /></td>
										<td><c:out
												value="${ exposureUsingPostHistroy.exposureEndDate }" /></td>
									</tr>
							</c:forEach>
								</tbody>
						</table>
					</div>
				</div>
			</div>
			<br> <br>
		</div>
	</div>
	
</body>
</html>