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
	href="https://cdn.datatables.net/1.10.25/css/jquery.dataTables.css">

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
							<br>
							<br>
							<br>

							<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
								<div class="jp_contact_form_heading_wrapper">
									<h2>???????????? ?????? ?????? ??? ????????????</h2>
								</div>
							</div>
							<form
								action="${ pageContext.servletContext.contextPath }/personalinfo/policy/detailview" 
								method="post">
<%-- 								<input type="hidden" name="registrationDate" value="${ detailList.postRegistrationDate}"> --%>
<%-- 								<input type="hidden" name="modifiedDate" value="${ detailList.postModifiedDate}"> --%>
<%-- 								<input type="hidden" name="managerMemberNo" value="${ detailList.managerMemberNo}"> --%>
<%-- 								<input type="hidden" name="exposureStatus" value="${ detailList.postExposureStatus}"> --%>
								<div class="jp_contact_form_box">
									<br><br>
									
									<div class="col-lg-12 col-md-6 col-sm-12 col-xs-12">
									
<!-- 									<select name="postKinds"> -->
<!-- 												<option value="" selected>??????</option> -->
<!-- 												<option value="????????????????????????">????????????????????????</option> -->
<!-- 												<option value="????????????">????????????</option> -->
<!-- 									</select> -->
										<div
											class="jp_contact_inputs_wrapper jp_contact_inputs2_wrapper">
											<label>??????</label><input name="postKinds"
												value="${ detailList.postKinds }">
										</div>
									</div>
									
									<div class="col-lg-12 col-md-6 col-sm-12 col-xs-12">
			<!-- ??????  -->					<div
											class="jp_contact_inputs_wrapper jp_contact_inputs2_wrapper">
											<label>??????</label><input name="postTitle"
												value="${ detailList.postTitle }">
										</div>
									</div>				
									
					<!-- ------------------------------------------- -->	
								
									<!-- ??? ????????? -->
									<div class="col-lg-12 col-md-6 col-sm-12 col-xs-12">
										<div
											class="jp_contact_inputs_wrapper jp_contact_inputs2_wrapper">
											<label>????????? ??????</label><input name="managerMemberNo"
												value="${ detailList.managerMemberNo }">
										</div>
									</div>
									<div class="col-lg-12 col-md-6 col-sm-12 col-xs-12">
										<div
											class="jp_contact_inputs_wrapper jp_contact_inputs2_wrapper">
											<label>????????????</label><input name="postExposureStatus"
												value="${ detailList.postExposureStatus }">
										</div>
									</div>
									<div class="col-lg-12 col-md-6 col-sm-12 col-xs-12">
										<div
											class="jp_contact_inputs_wrapper jp_contact_inputs2_wrapper">
											<label>????????????</label><input name="postRegistrationDate"
												value="${ detailList.postRegistrationDate }">
										</div>
									</div>
									<div class="col-lg-12 col-md-6 col-sm-12 col-xs-12">
										<div
											class="jp_contact_inputs_wrapper jp_contact_inputs2_wrapper">
											<label>????????????</label><input name="postModifiedDate"
												value="${ detailList.postModifiedDate }">
										</div>
									</div>
								
					<!-- -------------------------------------------------- -->			
									
			<!-- ?????? -->				<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
										<div
											class="jp_contact_inputs_wrapper jp_contact_inputs4_wrapper">
											<label>??????</label><textarea style="overflow-x: hidden; overflow-y: auto;"
												rows="16" placeholder="${ detailList.postContent }" name="postContent"></textarea>
										</div>
									</div>

									<button class="btn btn-info" type="button" onClick="history.go(-1)">????????????</button>
									<!-- ?????? ??????????????? (list??? ????????????)-->
									<button class="btn btn-info" type="submit"
										onclick="href='${ pageContext.servletContext.contextPath }/personalinfopolicy/list'">????????????</button>

								</div>
							</form>
						</div>
					</div>
				</div>
			</div>

 			<!-- ?????? -->				<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12"> 

 									<button class="btn btn-info" type="button" onClick="history.go(-1)">????????????</button> 
 									<button class="btn btn-info" type="submit" 
											onclick="href='${ pageContext.servletContext.contextPath }/personalinfopolicy/list'">????????????</button> 

			</div>
		</div>
	</div>




</body>
</html>







