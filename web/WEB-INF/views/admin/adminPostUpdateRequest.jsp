<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
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

</head>
<body>
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
												<br>
												<p>
												<p align="center">
													<a href="#">자기소개서 항목 관리</a>
												</p>
												<br>
												<p align="center">
													<a href="#">직무분야 관리</a>
												</p>
												<br>
												<p align="center">
													<a href="#">기술 및 카테고리 관리</a>
												</p>
												<br> <br>
												<h3 style="font-weight: bold">결제 관리</h3>
												<br>
												<p>
												<p align="center">
													<a href="#">상품 관리</a>
												</p>
												<br>
												<p align="center">
													<a href="${ pageContext.servletContext.contextPath }/admin/payment/select">결제 내역 조회</a>
												</p>
												<br>
												<p align="center">
													<a href="${ pageContext.servletContext.contextPath }/admin/refund/select">환불 요청 관리</a>
												</p>
												<br> <br>
												<h3 style="font-weight: bold">기업 요청 관리</h3>
												<br>
												<p>
												<p align="center">
													<a href="${ pageContext.servletContext.contextPath }/admin/post/insertRequest/select">공고 등록 요청</a>
												</p>
												<br>
												<p align="center">
													<a href="${ pageContext.servletContext.contextPath }/admin/post/updateRequest/select">공고 수정 요청</a>
												</p>
												<br>
												<p align="center">
													<a href="#">기업 회원 가입 요청</a>
												</p>
												<br>
												<p align="center">
													<a href="#">기업 정보 변경 요청</a>
												</p>

												<br> <br>
												<h3 style="font-weight: bold">회원 탈퇴</h3>
												<br>
												<p>
												<p align="center">
													<a href="#">회원 탈퇴 사유 조회</a>
												</p>
												<br> <br>
												<h3 style="font-weight: bold">게시물 관리</h3>
												<br>
												<p>
												<p align="center">
													<a href="#">공지사항 관리</a>
												</p>
												<br>
												<p align="left">
													<a href="#">개인정보 처리 방침 및 <br>이용약관 관리
													</a>
												</p>
												<br> <br>
												<h3 style="font-weight: bold">1:1 문의</h3>
												<br>
												<p>
												<p align="center">
													<a href="#">1:1 문의 조회</a>
												</p>
												<br>
												<p align="center">
													<a href="#">1:1 문의 카테고리 관리</a>
												</p>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>

				<div class="col-lg-9 col-md-9 col-sm-9 col-xs-12">
					<div class="row">
						<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
							<br><br><br>
							<h1>공고 수정 요청</h1>
							<div class="jp_listing_tabs_wrapper">
								<table id="table_postUpdate" class="hover cell-border stripe">
									<thead>
										<tr>
											<td align="center">요청번호</td>
											<td align="center">공고번호</td>
											<td align="center">기업명</td>
											<td align="center">요청일자</td>
											<td align="center">응답일자</td>
											<td align="center">상태</td>
											<td align="center">거절사유</td>
											<td align="center">상세보기</td>
										</tr>
									</thead>
									<c:forEach var="adminPostUpdate" items="${ requestScope.postInsertUpdateList }">							
									<tbody align="center">
											<tr>
												<td><c:out value="${ adminPostUpdate.jobPostReqNo }"/></td>								
												<td><c:out value="${ adminPostUpdate.jobPostNo }"/></td>								
												<td><c:out value="${ adminPostUpdate.coComName }"/></td>								
												<td><c:out value="${ adminPostUpdate.jobPostReqDate }"/></td>
												
												<c:if test="${ adminPostUpdate.jobPostAnsDate != null }">								
												<td><c:out value="${ adminPostUpdate.jobPostAnsDate }"/></td>		
												</c:if>		
												
												<c:if test="${ adminPostUpdate.jobPostAnsDate == null }">								
												<td>-</td>		
												</c:if>
												
												<td><c:out value="${ adminPostUpdate.jobPostAnsKinds }"/></td>
												
												<c:if test="${ adminPostUpdate.jobPostRejectReason != null }">								
												<td><c:out value="${ adminPostUpdate.jobPostRejectReason }"/></td>			
												</c:if>		
												
												<c:if test="${ adminPostUpdate.jobPostRejectReason == null }">								
												<td>-</td>			
												</c:if>
				
												<td><button type="submit" onclick="post3(this);">미리보기</button></td>
												
												<c:if test="${  adminPostUpdate.jobPostAnsDate != null }">
												<td><button disabled>승인</button></td>
												<td><button disabled>거절</button></td>
												</c:if>
												
												<c:if test="${  adminPostUpdate.jobPostAnsDate == null }">
												<td><button type="submit" onclick="jobPostApproval(this);">승인</button></td>
												<td><button type="submit" onclick="jobPostReject(this);">거절</button></td>
												</c:if>																			
											</tr>
									</tbody>
									</c:forEach>															
								</table>
								<br>
								<br>
							</div>
						</div>
					</div>
					<br>
				</div>
				<br>
			</div>
		</div>
	</div>
<script>
	$(document).ready(function() {
		$('#table_postUpdate').DataTable();
	});
	
function jobPostApproval(button) {
		
	var jobPostReqNo = button.parentNode.parentNode.children[0].innerText;
	var jobPostNo = button.parentNode.parentNode.children[1].innerText;
		
	var $form = $("<form>").attr("action", "${ pageContext.servletContext.contextPath }/admin/post/update/app/update").attr("method", "get");
		
	$form.append($("<input>").attr("name", "jobPostReqNo").attr("type", "hidden").val(jobPostReqNo));
	$form.append($("<input>").attr("name", "jobPostNo").attr("type", "hidden").val(jobPostNo));
		
	$("body").append($form);
		
	$form.submit();
}

function jobPostReject(button) {
		
		var jobPostReqNo = button.parentNode.parentNode.children[0].innerText;
		var jobPostNo = button.parentNode.parentNode.children[1].innerText;
			
		var $form = $("<form>").attr("action", "${ pageContext.servletContext.contextPath }/admin/post/update/reject/update").attr("method", "get");
			
		$form.append($("<input>").attr("name", "jobPostReqNo").attr("type", "hidden").val(jobPostReqNo));
		$form.append($("<input>").attr("name", "jobPostNo").attr("type", "hidden").val(jobPostNo));
			
		$("body").append($form);
			
		$form.submit();	
		
}

function post3(button) { 
	
	const selectJobPostNo = button.parentNode.parentNode.children[1].innerText;
		
	location.href = "${ pageContext.servletContext.contextPath }/detail/jobPosting/select?selectJobPostNo=" +selectJobPostNo
				
}	

</script>
</body>
</html>