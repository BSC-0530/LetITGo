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
	
	/* 데이터 테이블 사용 */
	$(document).ready(function() {
		$('#table_apply_whole').DataTable();
	});
	$(document).ready(function() {
		$('#table_apply_complete').DataTable();
	});
	$(document).ready(function() {
		$('#table_apply_cancel').DataTable();
	});

	/* 지원취소 버튼을 눌렀을 시 */
	function cancel(button) {
	
		/* 버튼을 기준으로  parentNode시 td / parentNode시 tr /  children[0]시 td / children[0]시 resumeNo */
		var resumeNo = button.parentNode.parentNode.children[0].children[0].value;
		
		/* 버튼을 기준으로  parentNode시 td / parentNode시 tr/  children[0]시 td / children[1]시 jobPostNo */
		var jobPostNo = button.parentNode.parentNode.children[0].children[1].value;
		
		/* 폼태그를 만드는 작업 */
		var $form = $("<form>").attr("action", "${ pageContext.servletContext.contextPath }/personal/apply/status/update").attr("method", "get");

		/* 만든 폼태그에 hidden 타입의 input태그를 만들어서 값을 넣어줌 */
		$form.append($("<input>").attr("name", "resumeNo").attr("type", "hidden").val(resumeNo));
		$form.append($("<input>").attr("name", "jobPostNo").attr("type", "hidden").val(jobPostNo));
	
		/* 폼태그를 바디영역에 붙여줌 */
		$("body").append($form);
		
		/* 폼태그 안에 값을 submit 함 */
		$form.submit();
	}
	
	/* 공고 제목을 눌렀을 시 이동 */
	function post1(td) {
		
		/* td를 기준으로  children[1]시 jobPostNo */
		const jobPostNo = td.children[1].value;
		
		/* url 주소를 다음과 같이 바꿔줌 */
		location.href = "${ pageContext.servletContext.contextPath }/detail/jobPosting/select?jobPostNo=" + jobPostNo;

	}
	
	/* 이력서 확인 버튼을 눌렀을 시 이동 */
	function resume(button) {
		
		/* 버튼을 기준으로  parentNode시 tr / parentNode시 body /  children[0]시 td / children[0]시 resumeNo */
		var resumeNo = button.parentNode.parentNode.children[0].children[0].value;
	
		/* url 주소를 다음과 같이 바꿔줌 */
		location.href = "${ pageContext.servletContext.contextPath }/resume/detail?selectedDetailResumeNo=" + resumeNo 

	}
</script>
<body>

	<!-- 상단 검은색 바탕 -->
	<div class="jp_tittle_main_wrapper">
		<div class="jp_tittle_img_overlay"></div>
		<div class="container">
			<div class="row">
				<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
					<div class="jp_tittle_heading_wrapper">
						<div class="jp_tittle_heading">
							<h2>지원현황</h2>
						</div>
						<div class="jp_tittle_breadcrumb_main_wrapper">
							<div class="jp_tittle_breadcrumb_wrapper">
								<ul>
									<li><a href="${ pageContext.servletContext.contextPath }/mainPage/InMember">Home</a></li>
									<li>></li>
									<li><a href="${ pageContext.servletContext.contextPath }/personal/myPage/select">개인 마이페이지</a></li>
									<li>></li>
									<li>지원현황</li>
								</ul>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<!-- 나머지 전체구역 -->

	<div class="jp_listing_sidebar_main_wrapper">
		<div class="container">
			<div class="row">

				<!-- 사이드바 -->

				<div style="height: 1500px;"
					class="col-lg-3 col-md-3 col-sm-12 col-xs-12 hidden-sm hidden-xs">
					<div class="row">
						<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
							<div class="jp_rightside_job_categories_wrapper">
								<div class="jp_rightside_job_categories_heading">
									<h4 align="left" style="font-weight: bold">지원현황</h4>
								</div>
								<div class="jp_rightside_job_categories_content">
									<div class="handyman_sec1_wrapper">
										<div class="content">
											<div class="box">
												<p>
													<a
														href="${ pageContext.servletContext.contextPath }/personalMyInfo">회원정보</a>
												</p>
												<br> <br>
												<p>
													<a
														href="${ pageContext.servletContext.contextPath }/personal/apply/select">지원현황</a>
												</p>
												<br> <br>
												<p>
													<a href="${ pageContext.servletContext.contextPath }/scout/myPageList/servlet">스카우트현황</a>
												</p>
												<br> <br>
												<p>
													<a href="${ pageContext.servletContext.contextPath }/personal/bookmark/select">북마크</a>
												</p>
												<br> <br>
												<p>
													<a href="${ pageContext.servletContext.contextPath }/login/member/withdrawal/yn">회원탈퇴</a>
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

				<!-- 전체지원 테이블-->

				<div class="col-lg-9 col-md-9 col-sm-12 col-xs-12">
					<div class="row">
						<br> <br> <br>
						<h1>전체 지원</h1>
						<br>
						<table id="table_apply_whole" class="hover cell-border stripe">
							<thead>
								<tr align="center">
									<td>공고제목</td>
									<td>기업</td>
									<td>등록일</td>
									<td>마감일</td>
									<td>지원</td>
									<td>열람</td>
									<td>취소</td>
									<td>이력서</td>

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

										<c:if test="${whole.jobPostApplyingStatus eq '지원완료' }">
											<td><button class="btn btn-info" type="submit" onclick="cancel(this);">취소</button></td>
										</c:if>

										<c:if test="${whole.jobPostApplyingStatus != '지원완료' }">
											<td><button class="btn btn-info" disabled>취소완료</button></td>
										</c:if>

										<c:if test="${whole.jobPostApplyingKinds eq '플랫폼양식' }">
											<td><button class="btn btn-info" type="button" onclick="resume(this);">확인</button></td>
										</c:if>

										<c:if test="${whole.jobPostApplyingKinds eq '자사양식' }">
											<td><button class="btn btn-info" type="submit" disabled>자샤양식</button></td>
										</c:if>



									</tr>
							</c:forEach>
								</tbody>
						</table>
					</div>
				</div>

				<!-- 지원완료 테이블-->

				<div class="col-lg-9 col-md-9 col-sm-12 col-xs-12">
					<div class="row">
						<br> <br> <br>
						<h1>지원 완료</h1>
						<br>
						<table id="table_apply_complete" class="hover cell-border stripe">
							<thead>
								<tr align="center">
									<td>공고제목</td>
									<td>기업</td>
									<td>등록일</td>
									<td>마감일</td>
									<td>지원일</td>
									<td>열람</td>
									<td>취소</td>
									<td>이력서</td>
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

										<c:if test="${complete.jobPostApplyingStatus eq '지원완료' }">
											<td><button class="btn btn-info" type="submit" onclick="cancel(this);">취소</button></td>
										</c:if>

										<c:if test="${complete.jobPostApplyingStatus != '지원완료' }">
											<td><button class="btn btn-info" disabled>취소완료</button></td>
										</c:if>

										<c:if test="${complete.jobPostApplyingKinds eq '플랫폼양식' }">
											<td><button class="btn btn-info" type="button" onclick="resume(this);">확인</button></td>
										</c:if>

										<c:if test="${complete.jobPostApplyingKinds eq '자사양식' }">
											<td><button class="btn btn-info" type="submit" disabled>자샤양식</button></td>
										</c:if>
									</tr>
							</c:forEach>
								</tbody>
						</table>
					</div>
				</div>

				<!-- 지원취소 테이블-->

				<div class="col-lg-9 col-md-9 col-sm-12 col-xs-12">
					<div class="row">
						<br> <br> <br>
						<h1>지원 취소</h1>
						<br>
						<table id="table_apply_cancel" class="hover cell-border stripe">
							<thead>
								<tr align="center">
									<td>공고제목</td>
									<td>기업명</td>
									<td>등록일</td>
									<td>마감일</td>
									<td>지원일</td>
									<td>취소일</td>
									<td>열람</td>

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