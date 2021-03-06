<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
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

<link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.25/css/jquery.dataTables.css">
  
<script type="text/javascript" charset="utf8" src="https://cdn.datatables.net/1.10.25/js/jquery.dataTables.js"></script>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script type="text/javascript" charset="utf8" src="https://cdn.datatables.net/1.10.25/js/jquery.dataTables.js"></script>
<link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.25/css/jquery.dataTables.css">

<!-- letitgo ?????? css -->
<link rel="stylesheet" type="text/css" href="${ pageContext.servletContext.contextPath }/resources/css/letitgo/letitgo.css"/>

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
									<h4 style="font-weight: bold">My Page</h4>
								</div>
								<div class="jp_rightside_job_categories_content">
									<div class="handyman_sec1_wrapper">
										<div class="content">

											<div class="box">
												<h3 style="font-weight: bold">????????????</h3>
												<p>
												<p align="center">
													<a
														href="${ pageContext.servletContext.contextPath }/selfintroductionitem/list">???????????????
														?????? ??????</a>
												</p>
												<br>
												<p align="center">
													<a
														href="${ pageContext.servletContext.contextPath }/jobfield/list">????????????
														??????</a>
												</p>
												<br>
												<p align="center">
													<a
														href="${ pageContext.servletContext.contextPath }/skills/list">??????
														??????</a>
												</p>
												<br>
												<p align="center">
													<a
														href="${ pageContext.servletContext.contextPath }/skillscategory/list">??????
														???????????? ??????</a>
												</p>
												<br>
												<br>
												<h3 style="font-weight: bold">?????? ??????</h3>
												<p>
												<p align="center">
													<a href="#">?????? ??????</a>
												</p>
												<br>
												<p align="center">
													<a href="#">?????? ?????? ??????</a>
												</p>
												<br>
												<p align="center">
													<a href="#">?????? ?????? ??????</a>
												</p>
												<br>
												<br>
												<h3 style="font-weight: bold">?????? ?????? ??????</h3>
												<p>
												<p align="center">
													<a href="#">?????? ?????? ??????</a>
												</p>
												<br>
												<p align="center">
													<a href="#">?????? ?????? ??????</a>
												</p>
												<br>
												<p align="center">
													<a href="#">?????? ?????? ?????? ??????</a>
												</p>
												<p align="center">
													<a href="#">?????? ?????? ?????? ??????</a>
												</p>
												<br>
												<br>
												<h3 style="font-weight: bold">?????? ??????</h3>
												<p>
												<p align="center">
													<a href="#">?????? ?????? ?????? ??????</a>
												</p>
												<br>
												<br>
												<h3 style="font-weight: bold">????????? ??????</h3>
												<p>
												<p align="center">
													<a href="#">???????????? ??????</a>
												</p>
												<p align="center">
													<a href="${ pageContext.servletContext.contextPath }/personalinfopolicy/list">???????????? ?????? ??????, ???????????? ??????</a>
												</p>
												<br>
												<br>
												<h3 style="font-weight: bold">1:1 ??????</h3>
												<p>
												<p align="center">
													<a href="#">1:1 ?????? ??????</a>
												</p>
												<p align="center">
													<a href="#">1:1 ?????? ???????????? ??????</a>
												</p>
												<br>
												<br>
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
				<br>
				<br>
				<br>
				
				<h2>????????????</h2>
				<form action="${ pageContext.servletContext.contextPath }/login/check/pwd" 
								method="post">
					<label >???????????? ??????</label>
					<input name="memPwd" id='memPwd' type='password'>
					<button type="submit">??????</button>
<!-- 					<input type="submit" name="memPwd" -->
<%-- 							value="${ testCheckPwd.memPwd }"> <!-- value ?????? ???????????? ????????? --> --%>
				</form>
				
				
				
				

			</div>
		</div>
	</div>


	
	
	
	<script type="text/javascript">
		
		function memberWithdrawal(button) {
			
			const no = button.value;
			location.href = "${ pageContext.servletContext.contextPath }?memNo=" + memNo;
			
		}
		
		$("input").filter("[value='null']").val("");
		
		/* location.reload();  ????????????; ?????? ???????????? ?????????  */
	
	</script>
	
				
</body>
</html>






