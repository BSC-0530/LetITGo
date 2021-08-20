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
							<h2>결제 내역</h2>
						</div>
						<div class="jp_tittle_breadcrumb_main_wrapper">
							<div class="jp_tittle_breadcrumb_wrapper">
								<ul>
									<li><a
										href="${ pageContext.servletContext.contextPath }/mainPage/CoMember">Home</a></li>
									<li>></li>
									<li><a href="#">기업 마이페이지</a></li>
									<li>></li>
									<li>결제내역</li>
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
									<h4 style="font-weight: bold">결제내역</h4>
								</div>
								<div class="jp_rightside_job_categories_content">
									<div class="handyman_sec1_wrapper">
										<div class="content">
											<div class="box">
												<p align="center">
													<a href="#">회원정보</a>
												</p>
												<br> <br>
												<p align="center">
													<a
														href="${ pageContext.servletContext.contextPath }/companyTestServlet">기업정보</a>
												</p>
												<br> <br>
												<p align="center">
													<a
														href="${ pageContext.servletContext.contextPath }/company/paymentHistory/select">결제내역</a>
												</p>
												<br> <br>
												<p align="center">
													<a
														href="${ pageContext.servletContext.contextPath }/company/refundHistory/select">환불내역</a>
												</p>
												<br> <br>
												<p align="center">
													<a
														href="${ pageContext.servletContext.contextPath }/company/jobPostingHistory/select">공고관리</a>
												</p>
												<br> <br>
												<p align="center">
													<a
														href="${ pageContext.servletContext.contextPath }/Company/Scout/List/Select">스카우트
														현황</a>
												</p>
												<br> <br>
												<p align="center">
													<a href="#">찜한 후보자</a>
												</p>
												<br> <br>
												<p align="center">
													<a href="#">회원 탈퇴</a>
												</p>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>

				<!-- 파란색 박스 -->

				<div class="col-lg-9 col-md-9 col-sm-12 col-xs-12">
					<div class="row">
						<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
							<div class="jp_counter_main_wrapper">
								<h1 align="left">잔여 유료서비스</h1>
								<br>
								<div class="container">
									<div class="gc_counter_cont_wrapper">
										<div class="count-description">
											<span class="timer"><c:out
													value="${ requestScope.resumeBrowsingNum }" /></span> <i
												class="fa"></i>
											<h5 class="con1">이력서 열람권</h5>
										</div>
									</div>
									<div class="gc_counter_cont_wrapper2">
										<div class="count-description">
											<span class="timer"><c:out
													value="${ requestScope.exposureUsingPostNum }" /></span> <i
												class="fa"></i>
											<h5 class="con2">노출권 사용중인 공고</h5>
										</div>
									</div>
									<div class="gc_counter_cont_wrapper3">
										<div class="count-description">
											<span class="timer"><c:out
													value="${ requestScope.exposureRestHour }" /></span> <span>:</span>
											<span class="timer"><fmt:formatNumber
													value="${ requestScope.exposureRestMinute}" pattern="#00" /></span>
											<i class="fa"></i>
											<h5 class="con3">노출권 잔여 시간</h5>
										</div>
									</div>
								</div>
								<br> <br>
							</div>
						</div>
						<br>

						<!-- 겔제내역 데이터테이블 -->
						<h1>결제 내역</h1>
						<br>
						<table id="table_payment" class="hover cell-border stripe">
							<thead>
								<tr align="center">
									<td>결제번호</td>
									<td>상품명</td>
									<td>결제금액</td>
									<td>결제일자</td>
									<td>결제상태</td>
									<td>환불신청</td>
								</tr>
							</thead>
							<c:forEach var="payment"
								items="${ requestScope.paymentHistoryList }">

								<tbody align="center">
									<tr>
										<td><c:out value="${ payment.payNo }" /></td>
										<td><c:out value="${ payment.productName }" /></td>
										<td><fmt:formatNumber value="${ payment.payPrice }"
												pattern="###,###" /></td>
										<td><c:out value="${ payment.payDate }" /></td>
										<td><c:out value="${ payment.payKinds }" /></td>

										<c:if test="${ payment.payKinds eq '결제완료' }">
											<td><button type="submit" onclick="req(this);">환불요청</button></td>
										</c:if>

										<c:if test="${ payment.payKinds eq '환불완료' }">
											<td><button type="button" disabled>환불완료</button></td>
										</c:if>

										<c:if test="${ payment.payKinds eq '환불거절' }">
											<td><button type="button" disabled>환불불가</button></td>
										</c:if>

										<c:if test="${ payment.payKinds eq '환불요청' }">
											<td><button type="button" disabled>환불요청중</button></td>
										</c:if>

										<c:if
											test="${ payment.payKinds != ('환불완료' or '환불거절' or '환불요청')  }">
											<td><button type="submit" onclick="req(this);">환불요청</button></td>
										</c:if>
									</tr>
								</tbody>

							</c:forEach>
						</table>
						<br> <br>

						<!-- 열람권 사용내역 데이터테이블 -->

						<h1>열람권 사용내역</h1>
						<br>
						<table id="table_Browsing" class="hover cell-border stripe">
							<thead>
								<tr align="center">
									<td>이력서 제목</td>
									<td>이름</td>
									<td>희망 직무</td>
									<td>보유 기술</td>
									<td>열람 일시</td>
								</tr>
							</thead>
							<c:forEach var="browseUsingHistroy"
								items="${ requestScope.paymentBrowseUsingHistroyList }">
								<tbody align="center">
									<tr>
										<td><c:out value="${ browseUsingHistroy.resumeTitle }" /></td>
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
								</tbody>
							</c:forEach>
						</table>
						<br> <br>

						<!-- 노출권 사용내역 데이터테이블 -->

						<h1>노출권 사용내역</h1>
						<br>
						<table id="table_exposure" class="hover cell-border stripe">
							<thead>
								<tr align="center">
									<td>공고 제목</td>
									<td>희망 직무</td>
									<td>요구 기술</td>
									<td>마감일</td>
									<td>사용일시</td>
									<td>종료일시</td>
								</tr>
							</thead>
							<c:forEach var="exposureUsingPostHistroy"
								items="${ requestScope.paymentExposureUsingHistoryList }">
								<tbody align="center">
									<tr>
										<td><c:out
												value="${ exposureUsingPostHistroy.jobPostTitle }" /></td>
										<td><c:out value="${ exposureUsingPostHistroy.jobName }" /></td>
										<td><c:forEach var="requestingSkillsList"
												items="${ requestScope.paymentrequestingSkillsList }">
												<c:if
													test="${ exposureUsingPostHistroy.jobPostNo eq requestingSkillsList.jobPostNo }">
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
								</tbody>
							</c:forEach>
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
			$('#table_payment').DataTable();
		});

		$(document).ready(function() {
			$('#table_Browsing').DataTable();
		});
		$(document).ready(function() {
			$('#table_exposure').DataTable();
		});

		//환불요청시 화면전환
		function req(button) {

			var payNo = button.parentNode.parentNode.children[0].innerText;

			var $form = $("<form>")
					.attr("action",
							"${ pageContext.servletContext.contextPath }/refund/request/insert")
					.attr("method", "get");

			$form.append($("<input>").attr("name", "payNo").attr("type",
					"hidden").val(payNo));

			console.log($form.children().val());

			$("body").append($form);

			$form.submit();
		}
	</script>
</body>
</html>