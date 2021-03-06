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
		$('#table_refund').DataTable();
	});

	/* ???????????? ?????? ??? */
	function req(button) {

		/* ????????? ????????????  parentNode??? td / parentNode??? tr /  children[0]??? td / children[0]???  refundNo */
		var refundNo = button.parentNode.parentNode.children[0].children[0].value;
		
		/* ???????????? ????????? ?????? */
		var $form = $("<form>").attr("action", "${ pageContext.servletContext.contextPath }/company/refundHistory/select").attr("method", "post");

		/* ?????? ???????????? hidden ????????? input????????? ???????????? ?????? ????????? */
		$form.append($("<input>").attr("name", "refundNo").attr("type", "hidden").val(refundNo));

		/* ???????????? ??????????????? ????????? */
		$("body").append($form);
		
		/* ????????? ?????? ?????? submit ??? */
		$form.submit();
	}
	
	/* ???????????? ???????????? ?????? ??? */
	function browse(button){
		
		/* ????????? ????????????  parentNode??? td / parentNode??? tr /  children[0]??? td / children[0]???  payChangeNo */
		var payChangeNo = button.parentNode.parentNode.children[0].children[0].value;
		
		/* url ????????? ????????? ?????? ????????? */
		location.href="${ pageContext.servletContext.contextPath }/company/refundHistory/reason/select?payChangeNo="+payChangeNo
				
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
									<li><a
										href="${ pageContext.servletContext.contextPath }/mainPage/CoMember">Home</a></li>
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

				<!-- ????????? ????????? ???????????? -->

				<div class="col-lg-9 col-md-9 col-sm-12 col-xs-12">
					<div class="row">
						<br>
						<br>
						<br>
						<h1>?????? ??????</h1>
						<br>
						<table id="table_refund" class="hover cell-border stripe">
							<thead>
								<tr align="center">
									<td>?????????</td>
									<td>??????</td>
									<td>?????????</td>
									<td>???????????????</td>
									<td>??????</td>
									<td>????????????</td>
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
											test="${refund.payAnsDate eq null && refund.payChangeStatus != '??????????????????' }">
											<td><c:out value="???????????????" /></td>
										</c:if>

										<c:if test="${refund.payAnsDate != null }">
											<td><c:out value="${ refund.payAnsDate }" /></td>
										</c:if>
										
										<td><button class="btn btn-info" type=button class="btn btn-info" onclick="browse(this);" >????????????</button></td>
										<c:if test="${refund.payAnsDate == null && refund.payChangeStatus eq '??????????????????' }">
											<td>-</td>
										</c:if>

										<c:if test="${ refund.payChangeStatus eq '????????????' }">
											<td><button class="btn btn-info" type="submit" onclick="req(this);">????????????</button></td>
										</c:if>

										<c:if test="${ refund.payChangeStatus eq '????????????'  }">
											<td><button class="btn btn-info" type="submit" disabled>????????????</button></td>
										</c:if>

										<c:if test="${ refund.payChangeStatus eq '????????????'  }">
											<td><button class="btn btn-info" type="submit" disabled>????????????</button></td>
										</c:if>

										<c:if test="${ refund.payChangeStatus eq '??????????????????'  }">
											<td><button class="btn btn-info" type="submit" disabled>??????????????????</button></td>
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

</body>
</html>