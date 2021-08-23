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
</head>
<body>
	<!-- 상단 검은색바탕 -->
	<div class="jp_tittle_main_wrapper">
		<div class="jp_tittle_img_overlay"></div>
		<div class="container">
			<div class="row">
				<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
					<div class="jp_tittle_heading_wrapper">
						<div class="jp_tittle_heading">
							<h2>환불내역</h2>
						</div>
						<div class="jp_tittle_breadcrumb_main_wrapper">
							<div class="jp_tittle_breadcrumb_wrapper">
								<ul>
									<li><a
										href="${ pageContext.servletContext.contextPath }/mainPage/CoMember">Home</a></li>
									<li>></li>
									<li><a href="${ pageContext.servletContext.contextPath }/company/myPage/main">기업 마이페이지</a></li>
									<li>></li>
									<li>환불내역</li>
								</ul>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<!-- 전체 묶음 -->
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
									<h4 style="font-weight: bold">환불내역</h4>
								</div>
								<div class="jp_rightside_job_categories_content">
									<div class="handyman_sec1_wrapper">
										<div class="content">
											<div class="box">
												<p>
													<a href="${ pageContext.servletContext.contextPath }/coMem/infomationServlet">회원정보</a>
												</p>
												<br> <br>
												<p>
													<a
														href="${ pageContext.servletContext.contextPath }/companyTestServlet">기업정보</a>
												</p>
												<br> <br>
												<p>
													<a
														href="${ pageContext.servletContext.contextPath }/company/paymentHistory/select">결제내역</a>
												</p>
												<br> <br>
												<p>
													<a
														href="${ pageContext.servletContext.contextPath }/company/refundHistory/select">환불내역</a>
												</p>
												<br> <br>
												<p>
													<a
														href="${ pageContext.servletContext.contextPath }/company/jobPostingHistory/select">공고관리</a>
												</p>
												<br> <br>
												<p>
													<a
														href="${ pageContext.servletContext.contextPath }/Company/Scout/List/Select">스카우트현황</a>
												</p>
												<br> <br>
												<p>
													<a href="${ pageContext.servletContext.contextPath }/company/scout/wish/select">찜한후보자</a>
												</p>
												<br> <br>
												<p>
													<a href="${ pageContext.servletContext.contextPath }/login/comember/withdrawal/yn">회원탈퇴</a>
												</p>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>

				<!-- 데이터 테이블 내역모음 -->

				<div class="col-lg-9 col-md-9 col-sm-12 col-xs-12">
					<div class="row">
						<br>
						<br>
						<br>
						<h1>환불 내역</h1>
						<br>
						<table id="table_refund" class="hover cell-border stripe">
							<thead>
								<tr align="center">
									<td>상품명</td>
									<td>상태</td>
									<td>요청일</td>
									<td>요청응답일</td>
									<td>사유</td>
									<td>환불취소</td>
								</tr>
							</thead>
								<tbody align="center">
							<c:forEach var="refund" items="${ requestScope.refundHistoryList }">
									<tr>
										<td>
										<input type="hidden" name="payChangeNo" value="${ refund.payChangeNo }">
										<input type="hidden" name="payNo" value="${ refund.payNo }">
										<c:out value="${ refund.productName }" /></td>
										<td><c:out value="${ refund.payChangeStatus }" /></td>
										<td><c:out value="${ refund.payReqDate }" /></td>

										<c:if
											test="${refund.payAnsDate eq null && refund.payChangeStatus != '환불요청취소' }">
											<td><c:out value="요청진행중" /></td>
										</c:if>

										<c:if test="${refund.payAnsDate != null }">
											<td><c:out value="${ refund.payAnsDate }" /></td>
										</c:if>
										
										<td><button type=button onclick="browse(this);" >상세보기</button></td>
										<c:if test="${refund.payAnsDate == null && refund.payChangeStatus eq '환불요청취소' }">
											<td>-</td>
										</c:if>

										<c:if test="${ refund.payChangeStatus eq '환불요청' }">
											<td><button type="submit" onclick="req(this);">환불취소</button></td>
										</c:if>

										<c:if test="${ refund.payChangeStatus eq '환불거절'  }">
											<td><button type="submit" disabled>환불불가</button></td>
										</c:if>

										<c:if test="${ refund.payChangeStatus eq '환불완료'  }">
											<td><button type="submit" disabled>환불완료</button></td>
										</c:if>

										<c:if test="${ refund.payChangeStatus eq '환불요청취소'  }">
											<td><button type="submit" disabled>요청취소완료</button></td>
										</c:if>

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

	<!-- 데이터테이블 사용 -->
	<script>
		$(document).ready(function() {
			$('#table_refund').DataTable();
		});

		// 환불요청취소시 
		function req(button) {

			var refundNo = button.parentNode.parentNode.children[0].children[0].value;
			
			var $form = $("<form>")
					.attr("action",
							"${ pageContext.servletContext.contextPath }/company/refundHistory/select")
					.attr("method", "post");

			$form.append($("<input>").attr("name", "refundNo").attr("type",
					"hidden").val(refundNo));

			console.log($form.children().val());

			$("body").append($form);

			$form.submit();
		}
		
		//상세보기시
		function browse(button){
			
			const payChangeNo = button.parentNode.parentNode.children[0].children[0].value;
			
			location.href="${ pageContext.servletContext.contextPath }/company/refundHistory/reason/select?payChangeNo="+payChangeNo
					
		}	
	</script>
</body>
</html>