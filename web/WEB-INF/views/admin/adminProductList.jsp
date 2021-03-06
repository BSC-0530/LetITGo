
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
	href="https://cdn.datatables.net/1.10.25/css/jquery.dataTables.css">
<script type="text/javascript" src="/let/resources/js/datatables.js"></script>
<link rel="stylesheet" type="text/css" href="/let/resources/css/datatables.css" />

<script type="text/javascript" charset="utf8"
	src="https://cdn.datatables.net/1.10.25/js/jquery.dataTables.js"></script>

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script type="text/javascript" charset="utf8"
	src="https://cdn.datatables.net/1.10.25/js/jquery.dataTables.js"></script>
<link rel="stylesheet" type="text/css"
	href="https://cdn.datatables.net/1.10.25/css/jquery.dataTables.css">

<!-- letitgo ?????? css -->
<link rel="stylesheet" type="text/css"
	href="${ pageContext.servletContext.contextPath }/resources/css/letitgo/letitgo.css" />

<style>
.h4 {
	font-weight: bold;
}

td {
	width: 400px;
}
</style>

</head>

<body>

	<!-- ???????????? -->
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


				<!-- ?????? ???????????? ????????? ???????????? -->
				<!--   				111~114?????? ????????? ???????????? ?????? ????????? ?????????       -->
				<br> <br> <br>
				<div class="col-lg-9 col-md-9 col-sm-9 col-xs-12">
					<div class="row">
						<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
							<h1>?????? ??????</h1>
							<div class="jp_listing_tabs_wrapper">

								<!-- ????????? ?????? ???????????? ??? -->
								<!-- ????????? ????????? ???????????? -->
								<table id="skillsCategory" class="hover cell-border stripe">
									<thead>
										<tr>
											<td align="center">??????</td>
											<td align="center">??????</td>
											<td align="center">??????</td>
											<td align="center">??????</td>
											<td align="center">??????</td>
											<td align="center">?????????</td>
											<td align="center">????????????</td>
											<td align="center">??????</td>
											<td align="center">??????</td>
										</tr>
									</thead>
										<tbody align="center">
									<c:forEach var="productList"
										items="${ requestScope.productList }">
											<tr>
												<td id="productNo"><c:out
														value="${ productList.productNo }" /></td>
												<td id="productName"><c:out
														value="${ productList.productName }" /></td>
												<td id="productPrice"><fmt:formatNumber
														value="${ productList.productPrice }" pattern="###,###"/></td>
												<td id="productKinds"><c:out
														value="${ productList.productKinds }" /></td>
												<td id="productStatus"><c:out
														value="${ productList.productStatus }" /></td>
												<td id="productStatus"><c:out
														value="${ productList.productReadingTicket }" /></td>
												<td id="productStatus"><fmt:formatNumber
														value="${ productList.productExposureTime/24/60/60 }" /></td>
												<td><button class="btn btn-info" type="button" onclick="modify(this)"
														style="background: skyblue; border-radius: 5px; color: white; font-weight: 900;"
														value="${ productList.productNo }">??????</button></td>
												<td><button class="btn btn-info" type="button"
														style="background: red; border-radius: 5px; color: white; font-weight: 900;"
														onclick="deletebutton(this)"
														value="${ productList.productNo }">??????</button>
											</tr>
									</c:forEach>
									</tbody>
								</table>
								<br> <br>

								<div class="skills-category-insert-wrapper"
									onclick="post(this);">
									<button class="btn btn-info" type="submit">????????????</button>
								</div>

							</div>
						</div>
					</div>
					<br>
				</div>
				<!-- end -->
			</div>
		</div>
	</div>

	<script>
		$(document).ready(function() {
			$('#skillsCategory').DataTable();
		});
	</script>

	<script>
		function post(div) {
			
			/* 
			 == alert()??? ??????????????? ?????? ==
			 alert();  
			*/
			
			 location.href = "${ pageContext.servletContext.contextPath }/admin/product/insert" 
			
		}
		
		function modify(button) {
			
			/* 
			 == alert()??? ??????????????? ?????? ==
			*/
				const productNo = button.value;
				location.href = "${ pageContext.servletContext.contextPath }/admin/product/update?productNo=" + productNo; 
		
		}
		 $("input").filter("[value='null']").val("");
	</script>
	<script>
	
		 function deletebutton(button) {
			
			 alert("?????? ???????????????.");
			 
			 const productNo = button.value;
			 location.href = "${ pageContext.servletContext.contextPath }/productList/delete?productNo=" + productNo;
			 
		}
	
		 $("input").filter("[value='null']").val("");
		 
	</script>

</body>
</html>