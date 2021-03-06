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
<link rel="stylesheet" type="text/css"
	href="${ pageContext.servletContext.contextPath }/resources/css/letitgo/letitgo.css" />
<script type="text/javascript" charset="utf8"
	src="https://cdn.datatables.net/1.10.25/js/jquery.dataTables.js"></script>
<link rel="stylesheet" type="text/css"
	href="https://cdn.datatables.net/1.10.25/css/jquery.dataTables.css">
</head>

<script>
	
	/* ????????? ????????? ?????? */
	$(document).ready(function() {
		$('#table_apply_whole').DataTable();
	});
	$(document).ready(function() {
		$('#table_apply_complete').DataTable();
	});
	$(document).ready(function() {
		$('#table_apply_cancel').DataTable();
	});

	/* ???????????? ????????? ????????? ??? */
	function cancel(button) {
	
		/* ????????? ????????????  parentNode??? td / parentNode??? tr /  children[0]??? td / children[0]??? resumeNo */
		var resumeNo = button.parentNode.parentNode.children[0].children[0].value;
		
		/* ????????? ????????????  parentNode??? td / parentNode??? tr/  children[0]??? td / children[1]??? jobPostNo */
		var jobPostNo = button.parentNode.parentNode.children[0].children[1].value;
		
		/* ???????????? ????????? ?????? */
		var $form = $("<form>").attr("action", "${ pageContext.servletContext.contextPath }/personal/apply/status/update").attr("method", "get");

		/* ?????? ???????????? hidden ????????? input????????? ???????????? ?????? ????????? */
		$form.append($("<input>").attr("name", "resumeNo").attr("type", "hidden").val(resumeNo));
		$form.append($("<input>").attr("name", "jobPostNo").attr("type", "hidden").val(jobPostNo));
	
		/* ???????????? ??????????????? ????????? */
		$("body").append($form);
		
		/* ????????? ?????? ?????? submit ??? */
		$form.submit();
	}
	
	/* ?????? ????????? ????????? ??? ?????? */
	function post1(td) {
		
		/* td??? ????????????  children[1]??? jobPostNo */
		const jobPostNo = td.children[1].value;
		
		/* url ????????? ????????? ?????? ????????? */
		location.href = "${ pageContext.servletContext.contextPath }/detail/jobPosting/select?jobPostNo=" + jobPostNo;

	}
	
	/* ????????? ?????? ????????? ????????? ??? ?????? */
	function resume(button) {
		
		/* ????????? ????????????  parentNode??? tr / parentNode??? body /  children[0]??? td / children[0]??? resumeNo */
		var resumeNo = button.parentNode.parentNode.children[0].children[0].value;
	
		/* url ????????? ????????? ?????? ????????? */
		location.href = "${ pageContext.servletContext.contextPath }/resume/detail?selectedDetailResumeNo=" + resumeNo 

	}
</script>
<body>

	<!-- ?????? ????????? ?????? -->
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
									<li><a href="${ pageContext.servletContext.contextPath }/mainPage/InMember">Home</a></li>
									<li>></li>
									<li><a href="${ pageContext.servletContext.contextPath }/personal/myPage/select">?????? ???????????????</a></li>
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

	<!-- ????????? ???????????? -->

	<div class="jp_listing_sidebar_main_wrapper">
		<div class="container">
			<div class="row">

				<!-- ???????????? -->

				<div style="height: 1500px;"
					class="col-lg-3 col-md-3 col-sm-12 col-xs-12 hidden-sm hidden-xs">
					<div class="row">
						<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
							<div class="jp_rightside_job_categories_wrapper">
								<div class="jp_rightside_job_categories_heading">
									<h4 align="left" style="font-weight: bold">????????????</h4>
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
													<a href="${ pageContext.servletContext.contextPath }/scout/myPageList/servlet">??????????????????</a>
												</p>
												<br> <br>
												<p>
													<a href="${ pageContext.servletContext.contextPath }/personal/bookmark/select">?????????</a>
												</p>
												<br> <br>
												<p>
													<a href="${ pageContext.servletContext.contextPath }/login/member/withdrawal/yn">????????????</a>
												</p>
												<br> <br>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>

				<!-- ???????????? ?????????-->

				<div class="col-lg-9 col-md-9 col-sm-12 col-xs-12">
					<div class="row">
						<br> <br> <br>
						<h1>?????? ??????</h1>
						<br>
						<table id="table_apply_whole" class="hover cell-border stripe">
							<thead>
								<tr align="center">
									<td>????????????</td>
									<td>??????</td>
									<td>?????????</td>
									<td>?????????</td>
									<td>??????</td>
									<td>??????</td>
									<td>??????</td>
									<td>?????????</td>

								</tr>
							</thead>
								<tbody align="center">

							<c:forEach var="whole" items="${ requestScope.PersonalApplyList }">

									<tr>
										<td onclick="post1(this);"><input type="hidden"
											name="resumeNo" value="${ whole.resumeNo }"> <input
											type="hidden" name="jobPostNo" value="${ whole.jobPostNo }">
											<c:out value="${ whole.jobPostTitle }" /></td>
										<td><c:out value="${ whole.coComName }" /></td>
										<td><c:out value="${ whole.jobPostEnrollDate }" /></td>
										<td><c:out value="${ whole.jobPostDeadLine }" /></td>
										<td><c:out value="${ whole.jobPostApplyingStatus }" /></td>
										<td><c:out value="${ whole.jobPostBrowesStatus }" /></td>

										<c:if test="${whole.jobPostApplyingStatus eq '????????????' }">
											<td><button class="btn btn-info" type="submit" onclick="cancel(this);">??????</button></td>
										</c:if>

										<c:if test="${whole.jobPostApplyingStatus != '????????????' }">
											<td><button class="btn btn-info" disabled>????????????</button></td>
										</c:if>

										<c:if test="${whole.jobPostApplyingKinds eq '???????????????' }">
											<td><button class="btn btn-info" type="button" onclick="resume(this);">??????</button></td>
										</c:if>

										<c:if test="${whole.jobPostApplyingKinds eq '????????????' }">
											<td><button class="btn btn-info" type="submit" disabled>????????????</button></td>
										</c:if>



									</tr>
							</c:forEach>
								</tbody>
						</table>
					</div>
				</div>

				<!-- ???????????? ?????????-->

				<div class="col-lg-9 col-md-9 col-sm-12 col-xs-12">
					<div class="row">
						<br> <br> <br>
						<h1>?????? ??????</h1>
						<br>
						<table id="table_apply_complete" class="hover cell-border stripe">
							<thead>
								<tr align="center">
									<td>????????????</td>
									<td>??????</td>
									<td>?????????</td>
									<td>?????????</td>
									<td>?????????</td>
									<td>??????</td>
									<td>??????</td>
									<td>?????????</td>
								</tr>
							</thead>
								<tbody align="center">

							<c:forEach var="complete" items="${ requestScope.PersonalApplyCompletedList }">

									<tr>
										<td onclick="post1(this);">
										<input type="hidden" name="resumeNo" value="${ complete.resumeNo }">
										<input type="hidden" name="jobPostNo" value="${ complete.jobPostNo }"> 
										<c:out value="${ complete.jobPostTitle }" /></td>
										<td><c:out value="${ complete.coComName }" /></td>
										<td><c:out value="${ complete.jobPostEnrollDate }" /></td>
										<td><c:out value="${ complete.jobPostDeadLine }" /></td>
										<td><c:out value="${ complete.jobPostApplyingDate }" /></td>
										<td><c:out value="${ complete.jobPostBrowesStatus }" /></td>

										<c:if test="${complete.jobPostApplyingStatus eq '????????????' }">
											<td><button class="btn btn-info" type="submit" onclick="cancel(this);">??????</button></td>
										</c:if>

										<c:if test="${complete.jobPostApplyingStatus != '????????????' }">
											<td><button class="btn btn-info" disabled>????????????</button></td>
										</c:if>

										<c:if test="${complete.jobPostApplyingKinds eq '???????????????' }">
											<td><button class="btn btn-info" type="button" onclick="resume(this);">??????</button></td>
										</c:if>

										<c:if test="${complete.jobPostApplyingKinds eq '????????????' }">
											<td><button class="btn btn-info" type="submit" disabled>????????????</button></td>
										</c:if>
									</tr>
							</c:forEach>
								</tbody>
						</table>
					</div>
				</div>

				<!-- ???????????? ?????????-->

				<div class="col-lg-9 col-md-9 col-sm-12 col-xs-12">
					<div class="row">
						<br> <br> <br>
						<h1>?????? ??????</h1>
						<br>
						<table id="table_apply_cancel" class="hover cell-border stripe">
							<thead>
								<tr align="center">
									<td>????????????</td>
									<td>?????????</td>
									<td>?????????</td>
									<td>?????????</td>
									<td>?????????</td>
									<td>?????????</td>
									<td>??????</td>

								</tr>
							</thead>
								<tbody align="center">

							<c:forEach var="canceled" items="${ requestScope.PersonalApplyCanceledList }">

									<tr>
										<td onclick="post1(this);"><input type="hidden"
											name="resumeNo" value="${ canceled.resumeNo }"> <input
											type="hidden" name="jobPostNo"
											value="${ canceled.jobPostNo }"> <c:out
												value="${ canceled.jobPostTitle }" /></td>
										<td><c:out value="${ canceled.coComName }" /></td>
										<td><c:out value="${ canceled.jobPostEnrollDate }" /></td>
										<td><c:out value="${ canceled.jobPostDeadLine }" /></td>
										<td><c:out value="${ canceled.jobPostApplyingDate }" /></td>
										<td><c:out
												value="${ canceled.jobPostApplyingCancelDate }" /></td>
										<td><c:out value="${ canceled.jobPostBrowesStatus }" /></td>
									</tr>
							</c:forEach>
								</tbody>
						</table>
					</div>
				</div>

			</div>
		</div>
	</div>

</body>
</html>