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
	src="https://cdn.datatables.net/1.10.25/css/jquery.dataTables.min.css"></script>
<link rel="stylesheet" type="text/css"
	href="https://cdn.datatables.net/1.10.25/css/jquery.dataTables.min.css">

</head>
<body>
	<div class="jp_listing_sidebar_main_wrapper">
		<div class="container">
			<div class="row">
			
				<!-- 사이드바 -->
			
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
													<a
														href="${ pageContext.servletContext.contextPath }/admin/payment/select">결제
														내역 조회</a>
												</p>
												<br>
												<p align="center">
													<a
														href="${ pageContext.servletContext.contextPath }/admin/refund/select">환불
														요청 관리</a>
												</p>
												<br> <br>
												<h3 style="font-weight: bold">기업 요청 관리</h3>
												<br>
												<p>
												<p align="center">
													<a
														href="${ pageContext.servletContext.contextPath }/admin/post/insertRequest/select">공고
														등록 요청</a>
												</p>
												<br>
												<p align="center">
													<a
														href="${ pageContext.servletContext.contextPath }/admin/post/updateRequest/select">공고
														수정 요청</a>
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

				<!-- 환불내역조회 데이터테이블 -->

				<div class="col-lg-9 col-md-9 col-sm-9 col-xs-12">
					<div class="row">
						<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
							<br> <br> <br>
							<h1>환불 요청 관리</h1>
							<div class="jp_listing_tabs_wrapper">
								<table id="table_refund" class="hover cell-border stripe">
									<thead>
										<tr align="center">
											<td>결제번호</td>
											<td>요청일</td>
											<td>응답일</td>
											<td>상태</td>
											<td>환불사유</td>
											<td>거절사유</td>
											<td></td>
											<td></td>
										</tr>
									</thead>
									<c:forEach var="adminRefund" items="${ requestScope.refundHistoryList }">
										
										<tbody align="center">
											<tr>
												<td>
												<input type="hidden" name="payChangeNo"value="${ adminRefund.payChangeNo }">
												<c:out value="${ adminRefund.payNo }" />
												</td>											
												<td><c:out value="${ adminRefund.payReqDate }" /></td>

												<c:if test="${ adminRefund.payAnsDate != null }">
													<td><c:out value="${ adminRefund.payAnsDate }" /></td>
												</c:if>

												<c:if test="${ adminRefund.payAnsDate eq null }">
													<td>-</td>
												</c:if>

												<td><c:out value="${ adminRefund.payChangeStatus }" /></td>
												<td><c:out value="${ adminRefund.payChangeReason }" /></td>
												<td><c:out value="${ adminRefund.payRejectReason }" /></td>

												<c:if test="${ adminRefund.payChangeStatus eq '환불요청'  }">
													<td><button type="submit" onclick="approval(this);">승인</button></td>
													<td><button type="submit" onclick="reject(this);">거절</button></td>
												</c:if>

												<c:if test="${ adminRefund.payChangeStatus != '환불요청'  }">
													<td><button disabled>승인</button></td>
													<td><button disabled>거절</button></td>
												</c:if>
											</tr>
										</tbody>
									</c:forEach>
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

	<!-- 데이터테이블 사용 -->
	<script>
		$(document).ready(function() {
			$('#table_refund').DataTable();
		});
	</script>

	<!-- 환불 승인시 -->
	<script>
		function approval(button) {
			var payChangeNo = button.parentNode.parentNode.children[0].children[0].value;
			var payNo = button.parentNode.parentNode.children[0].innerText;

			var $form = $("<form>")
					.attr("action",
							"${ pageContext.servletContext.contextPath }/admin/refund/app/update")
					.attr("method", "get");

			$form.append($("<input>").attr("name", "payChangeNo").attr("type",
					"hidden").val(payChangeNo));
			$form.append($("<input>").attr("name", "payNo").attr("type",
					"hidden").val(payNo));

			$("body").append($form);

			$form.submit();
		}
	</script>

	<!-- 환불 거절시 -->
	<script>
		function reject(button) {

			var payChangeNo = button.parentNode.parentNode.children[0].children[0].value;
			var payNo = button.parentNode.parentNode.children[0].innerText;
			
			alert(payChangeNo);
			alert(payNo);
			
			var $form = $("<form>")
					.attr("action",
							"${ pageContext.servletContext.contextPath }/admin/refund/reject/update")
					.attr("method", "get");

			$form.append($("<input>").attr("name", "payChangeNo").attr("type",
					"hidden").val(payChangeNo));
			$form.append($("<input>").attr("name", "payNo").attr("type",
					"hidden").val(payNo));

			$("body").append($form);

			$form.submit();
		}
	</script>
</body>
</html>