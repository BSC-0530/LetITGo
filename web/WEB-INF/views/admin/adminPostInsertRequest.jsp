<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Let IT Go admin</title>
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

	/* 데이터 테이블 사용 */
	$(document).ready(function() {
		$('#table_postReqest').DataTable();
	});

	/* 채용공고 승인시 */	
	function jobPostApproval(button) {

		/* 버튼을 기준으로  parentNode시 td / parentNode시 tr / children[0]시 td의 텍스트 값*/
		var jobPostReqNo = button.parentNode.parentNode.children[0].innerText;
		
		/* 버튼을 기준으로  parentNode시 td / parentNode시 tr / children[0]시 td의 텍스트 값*/
		var jobPostNo = button.parentNode.parentNode.children[1].innerText;

		/* 폼태그를 만드는 작업 */
		var $form = $("<form>").attr("action", "${ pageContext.servletContext.contextPath }/admin/post/app/update") .attr("method", "get");

		/* 만든 폼태그에 hidden 타입의 input태그를 만들어서 값을 넣어줌 */
		$form.append($("<input>").attr("name", "jobPostReqNo").attr("type", "hidden").val(jobPostReqNo));
		$form.append($("<input>").attr("name", "jobPostNo").attr("type", "hidden").val(jobPostNo));

		/* 폼태그를 바디영역에 붙여줌 */
		$("body").append($form);
		
		/* 폼태그 안에 값을 submit 함 */
		$form.submit();
	}

	/* 채용공고 거절시 */	
	function jobPostReject(button) {

		/* 버튼을 기준으로  parentNode시 td / parentNode시 tr / children[0]시 td의 텍스트 값*/
		var jobPostReqNo = button.parentNode.parentNode.children[0].innerText;
		
		/* 버튼을 기준으로  parentNode시 td / parentNode시 tr / children[1]시 td의 텍스트 값*/
		var jobPostNo = button.parentNode.parentNode.children[1].innerText;

		/* 폼태그를 만드는 작업 */
		var $form = $("<form>").attr("action","${ pageContext.servletContext.contextPath }/admin/post/reject/update").attr("method", "get");

		/* 만든 폼태그에 hidden 타입의 input태그를 만들어서 값을 넣어줌 */
		$form.append($("<input>").attr("name", "jobPostReqNo").attr("type", "hidden").val(jobPostReqNo));
		$form.append($("<input>").attr("name", "jobPostNo").attr("type", "hidden").val(jobPostNo));
		
		/* 폼태그를 바디영역에 붙여줌 */
		$("body").append($form);
	
		/* 폼태그 안에 값을 submit 함 */
		$form.submit();
	}

	/* 보기 버튼눌렀을 시 채용공고로 이동 */	
	function post2(button) {

		/* 버튼을 기준으로  parentNode시 td / parentNode시 tr / children[1]시 td의 텍스트 값*/
		var jobPostNo = button.parentNode.parentNode.children[1].innerText;
	
		/* url 주소를 다음과 같이 바꿔줌 */
		location.href = "${ pageContext.servletContext.contextPath }/detail/jobPosting/select?jobPostNo="
				+ jobPostNo

	}
	
	/* 거절사유 상세보기  */	
	function rejectBrowse(button){
		
		/* 버튼을 기준으로  parentNode시 td / parentNode시 tr / children[0]시 td의 텍스트 값*/
		var jobPostReqNo = button.parentNode.parentNode.children[0].innerText;
		
		/* url 주소를 다음과 같이 바꿔줌 */
		location.href="${ pageContext.servletContext.contextPath }/admin/post/rejectReason/select?jobPostReqNo="+jobPostReqNo
				
	}	
</script>
</head>
<body>

	<!-- 전체 묶음 -->
	<div class="jp_listing_sidebar_main_wrapper">
		<div class="container">
			<div class="row">
				<div
					class="col-lg-3 col-md-3 col-sm-12 col-xs-12 hidden-sm hidden-xs">
					<div class="row">
						<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
							<div class="jp_rightside_job_categories_wrapper">
								<div class="jp_rightside_job_categories_heading">
									<h4 style="font-weight: bold">Admin</h4>
								</div>
								<div class="jp_rightside_job_categories_content">
									<div class="handyman_sec1_wrapper">
										<div class="content">

											<div class="box">
												<h3 style="font-weight: bold">회원정보</h3>
												<p>
												<p align="left">
													<a href="${ pageContext.servletContext.contextPath }/selfintroductionitem/list">자기소개서 항목 관리</a>
												</p>
												<p align="left">
													<a href="${ pageContext.servletContext.contextPath }/jobfield/list">직무분야 관리</a>
												</p>
												<p align="left">
													<a href="${ pageContext.servletContext.contextPath }/skills/list">기술 관리</a>
												</p>
												<p align="left">
													<a href="${ pageContext.servletContext.contextPath }/skillscategory/list">기술 카테고리 관리</a>
												</p>
												<br> <br>
												<h3 style="font-weight: bold">결제 관리</h3>
												<p>
												<p align="left">
													<a href="${ pageContext.servletContext.contextPath }/admin/product/list">상품 관리</a>
												</p>
												<p align="left">
													<a href="${ pageContext.servletContext.contextPath }/admin/payment/select">결제 내역 조회</a>
												</p>
												<p align="left">
													<a href="${ pageContext.servletContext.contextPath }/admin/refund/select">환불 요청 관리</a>
												</p>
												<br> <br>
												<h3 style="font-weight: bold">기업 요청 관리</h3>
												<p>
												<p align="left">
													<a href="${ pageContext.servletContext.contextPath }/admin/post/insertRequest/select">공고 등록 요청</a>
												</p>
												<p align="left">
													<a href="${ pageContext.servletContext.contextPath }/admin/post/updateRequest/select">공고 수정 요청</a>
												</p>
												<p align="left">
													<a href="${ pageContext.servletContext.contextPath }/info/requestList">기업 회원 가입 요청</a>
												</p>
												<p align="left">
													<a href="${ pageContext.servletContext.contextPath }/admin/request/comInfo">기업 정보 변경 요청</a>
												</p>
												<br> <br>
												<h3 style="font-weight: bold">회원 탈퇴</h3>
												<p>
												<p align="left">
													<a href="${ pageContext.servletContext.contextPath }/member/withdrawal">회원 탈퇴 사유 조회</a>
												</p>
												<br> <br>
												<h3 style="font-weight: bold">게시물 관리</h3>
												<p>
												<p align="left">
													<a href="${ pageContext.servletContext.contextPath }/admin/notice/manger/servlet">공지사항 관리</a>
												</p>
												<p align="left">
													<a href="${ pageContext.servletContext.contextPath }/personalinfopolicy/list">개인정보 처리 방침, 이용약관 관리</a>
												</p>
												<br> <br>
												<h3 style="font-weight: bold">1:1 문의</h3>
												<p>
												<p align="left">
													<a href="${ pageContext.servletContext.contextPath }/admin/inquiry/select">1:1 문의 조회</a>
												</p>
												<p align="left">
													<a href="${ pageContext.servletContext.contextPath }/admin/Category/Page">1:1 문의 카테고리 관리</a>
												</p>
												<br> <br>
												<div align="center" style="background-color:green" style="color:white">
                            						<ul>
														<li>
															<a href="${ pageContext.servletContext.contextPath }/member/logout">LOG OUT</a>
														</li>
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


				<!-- 데이터 테이블 -->

				<div class="col-lg-9 col-md-9 col-sm-9 col-xs-12">
					<div class="row">
						<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
							<br>
							<br>
							<br>
							<h1>공고 등록 요청</h1>
							<div class="jp_listing_tabs_wrapper">
								<table id="table_postReqest" class="hover cell-border stripe">
									<thead>
										<tr align="center">
											<td>요청</td>
											<td>공고</td>
											<td>기업</td>
											<td>요청일</td>
											<td>응답일</td>
											<td>상태</td>
											<td>거절사유</td>
											<td>공고</td>
											<td></td>
											<td></td>
										</tr>
									</thead>
									<tbody align="center">
										<c:forEach var="adminPostRequest"
											items="${ requestScope.postInsertRuqeustList }">
											<tr>
												<td><c:out value="${ adminPostRequest.jobPostReqNo }" /></td>
												<td><c:out value="${ adminPostRequest.jobPostNo }" /></td>
												<td><c:out value="${ adminPostRequest.coComName }" /></td>
												<td><c:out value="${ adminPostRequest.jobPostReqDate }" /></td>

												<c:if test="${ adminPostRequest.jobPostAnsDate != null }">
													<td><c:out
															value="${ adminPostRequest.jobPostAnsDate }" /></td>
												</c:if>

												<c:if test="${ adminPostRequest.jobPostAnsDate == null }">
													<td>-</td>
												</c:if>

												<td><c:out
														value="${ adminPostRequest.jobPostAnsKinds }" /></td>

												<c:if test="${ adminPostRequest.jobPostRejectReason != null }">
												<td><button class="btn btn-info" type=button class="btn btn-info" onclick="rejectBrowse(this);" >상세보기</button></td>
												</c:if>

												<c:if
													test="${ adminPostRequest.jobPostRejectReason == null }">
													<td>-</td>
												</c:if>

												<td><button class="btn btn-info" type="submit" onclick="post2(this);">보기</button></td>

												<c:if test="${  adminPostRequest.jobPostAnsDate != null }">
													<td><button class="btn btn-info" disabled>승인</button></td>
													<td><button class="btn btn-info" disabled>거절</button></td>
												</c:if>

												<c:if test="${  adminPostRequest.jobPostAnsDate == null }">
													<td><button class="btn btn-info" type="submit"
															onclick="jobPostApproval(this);">승인</button></td>
													<td><button class="btn btn-info" type="submit"
															onclick="jobPostReject(this);">거절</button></td>
												</c:if>
											</tr>
										</c:forEach>
									</tbody>
								</table>
								<br> <br>
							</div>
						</div>
					</div>
					<br>
				</div>
				<br>
			</div>
		</div>
	</div>

	
</body>
</html>