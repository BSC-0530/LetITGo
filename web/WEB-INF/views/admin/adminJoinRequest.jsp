<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
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
<script type="text/javascript" src="/let/resources/js/datatables.js"></script>
<link rel="stylesheet" type="text/css" href="/let/resources/css/datatables.css" />

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
												<h3 style="font-weight: bold">????????????</h3>
												<p>
												<p align="left">
													<a href="${ pageContext.servletContext.contextPath }/selfintroductionitem/list">??????????????? ?????? ??????</a>
												</p>
												<p align="left">
													<a href="${ pageContext.servletContext.contextPath }/jobfield/list">???????????? ??????</a>
												</p>
												<p align="left">
													<a href="${ pageContext.servletContext.contextPath }/skills/list">?????? ??????</a>
												</p>
												<p align="left">
													<a href="${ pageContext.servletContext.contextPath }/skillscategory/list">?????? ???????????? ??????</a>
												</p>
												<br> <br>
												<h3 style="font-weight: bold">?????? ??????</h3>
												<p>
												<p align="left">
													<a href="${ pageContext.servletContext.contextPath }/admin/product/list">?????? ??????</a>
												</p>
												<p align="left">
													<a href="${ pageContext.servletContext.contextPath }/admin/payment/select">?????? ?????? ??????</a>
												</p>
												<p align="left">
													<a href="${ pageContext.servletContext.contextPath }/admin/refund/select">?????? ?????? ??????</a>
												</p>
												<br> <br>
												<h3 style="font-weight: bold">?????? ?????? ??????</h3>
												<p>
												<p align="left">
													<a href="${ pageContext.servletContext.contextPath }/admin/post/insertRequest/select">?????? ?????? ??????</a>
												</p>
												<p align="left">
													<a href="${ pageContext.servletContext.contextPath }/admin/post/updateRequest/select">?????? ?????? ??????</a>
												</p>
												<p align="left">
													<a href="${ pageContext.servletContext.contextPath }/info/requestList">?????? ?????? ?????? ??????</a>
												</p>
												<p align="left">
													<a href="${ pageContext.servletContext.contextPath }/admin/request/comInfo">?????? ?????? ?????? ??????</a>
												</p>
												<br> <br>
												<h3 style="font-weight: bold">?????? ??????</h3>
												<p>
												<p align="left">
													<a href="${ pageContext.servletContext.contextPath }/member/withdrawal">?????? ?????? ?????? ??????</a>
												</p>
												<br> <br>
												<h3 style="font-weight: bold">????????? ??????</h3>
												<p>
												<p align="left">
													<a href="${ pageContext.servletContext.contextPath }/admin/notice/manger/servlet">???????????? ??????</a>
												</p>
												<p align="left">
													<a href="${ pageContext.servletContext.contextPath }/personalinfopolicy/list">???????????? ?????? ??????, ???????????? ??????</a>
												</p>
												<br> <br>
												<h3 style="font-weight: bold">1:1 ??????</h3>
												<p>
												<p align="left">
													<a href="${ pageContext.servletContext.contextPath }/admin/inquiry/select">1:1 ?????? ??????</a>
												</p>
												<p align="left">
													<a href="${ pageContext.servletContext.contextPath }/admin/Category/Page">1:1 ?????? ???????????? ??????</a>
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

				<br><br><br>

				<div class="col-lg-9 col-md-9 col-sm-9 col-xs-12">
					<div class="row">
						<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
							<h1>???????????? ???????????? ??????</h1>
							<div class="jp_listing_tabs_wrapper">
								
								
								
								<table id="table_postUpdate" class="hover cell-border stripe">
									<thead>
										<tr align="center">
											<td>??????</td>
											<td>??????</td>
											<td>?????????</td>
											<td>?????????</td>
											<td>??????</td>
											<td>??????</td>
											<td>??????</td>
											<td>??????</td>
											<td></td>
										</tr>
									</thead>
									<tbody align="center">
									<c:forEach var="insertRequestList" 
										items="${ requestScope.insertRequestList }">							
											<tr>
												<td><c:out value="${ insertRequestList.coReqNo }"/></td>
												<td><c:out value="${ insertRequestList.coComName }"/></td>
												<td><c:out value="${ insertRequestList.coReqDate }"/></td>								
												<td><c:out value="${ insertRequestList.coAnsDate }"/></td>								
												<td><c:out value="${ insertRequestList.coAnsKinds }"/></td>
												<td><c:out value="${ insertRequestList.coRejectReason }"/></td>	
												<td><button class="btn btn-info" type="button" onclick="post3(this);">??????</button></td>
												
												<c:if test="${  insertRequestList.coAnsDate != null }">
												<td><button class="btn btn-info" disabled>??????</button></td>
												<td><button class="btn btn-info" disabled>??????</button></td>
												</c:if>
												
												<c:if test="${  insertRequestList.coAnsDate == null }">
												<td><button class="btn btn-info" type="button" onclick="jobPostApproval(this);">??????</button></td>
												<td><button class="btn btn-info" type="button" onclick="jobPostReject(this);">??????</button></td>
												</c:if>	
											</tr>
									</c:forEach>															
									</tbody>
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
	


function post3(button) { 
	
	/**/
	const coReqNo = button.parentNode.parentNode.children[0].innerText;		
		
	location.href = "${ pageContext.servletContext.contextPath }/info/detail?coReqNo=" +coReqNo;
				
}	
function jobPostApproval(button) {
	
	const coReqNo = button.parentNode.parentNode.children[0].innerText;
		
	var $form = $("<form>").attr("action", "${ pageContext.servletContext.contextPath }/info/accept").attr("method", "get");
		
	$form.append($("<input>").attr("name", "coReqNo").attr("type", "hidden").val(coReqNo));
		
	$("body").append($form);
		
	$form.submit();
}

function jobPostReject(button) {
		
	const coReqNo = button.parentNode.parentNode.children[0].innerText;
	
	var $form = $("<form>").attr("action", "${ pageContext.servletContext.contextPath }/admin/post/reject/InsertUpdate").attr("method", "get");
		
	$form.append($("<input>").attr("name", "coReqNo").attr("type", "hidden").val(coReqNo));
		
	$("body").append($form);
		
	$form.submit();
		
}

</script>
</body>
</html>