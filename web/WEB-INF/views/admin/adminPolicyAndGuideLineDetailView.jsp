<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
	href="https://cdn.datatables.net/1.10.25/css/jquery.dataTables.css">

<script type="text/javascript" charset="utf8"
	src="https://cdn.datatables.net/1.10.25/js/jquery.dataTables.js"></script>

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script type="text/javascript" charset="utf8"
	src="https://cdn.datatables.net/1.10.25/js/jquery.dataTables.js"></script>
<link rel="stylesheet" type="text/css"
	href="https://cdn.datatables.net/1.10.25/css/jquery.dataTables.css">

<!-- letitgo 제작 css -->
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

	<!-- 사이드바 -->
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
												<h3 style="font-weight: bold">회원정보</h3>
												<p>
												<p align="center">
													<a
														href="${ pageContext.servletContext.contextPath }/selfintroductionitem/list">자기소개서
														항목 관리</a>
												</p>
												<br>
												<p align="center">
													<a
														href="${ pageContext.servletContext.contextPath }/jobfield/list">직무분야
														관리</a>
												</p>
												<br>
												<p align="center">
													<a
														href="${ pageContext.servletContext.contextPath }/skills/list">기술
														관리</a>
												</p>
												<br>
												<p align="center">
													<a
														href="${ pageContext.servletContext.contextPath }/skillscategory/list">기술
														카테고리 관리</a>
												</p>
												<br> <br>
												<h3 style="font-weight: bold">결제 관리</h3>
												<p>
												<p align="center">
													<a href="#">상품 관리</a>
												</p>
												<br>
												<p align="center">
													<a href="#">결제 내역 조회</a>
												</p>
												<br>
												<p align="center">
													<a href="#">환불 요청 관리</a>
												</p>
												<br> <br>
												<h3 style="font-weight: bold">기업 요청 관리</h3>
												<p>
												<p align="center">
													<a href="#">공고 등록 요청</a>
												</p>
												<br>
												<p align="center">
													<a href="#">공고 수정 요청</a>
												</p>
												<br>
												<p align="center">
													<a href="#">기업 회원 가입 요청</a>
												</p>
												<p align="center">
													<a href="#">기업 정보 변경 요청</a>
												</p>
												<br> <br>
												<h3 style="font-weight: bold">회원 탈퇴</h3>
												<p>
												<p align="center">
													<a href="#">회원 탈퇴 사유 조회</a>
												</p>
												<br> <br>
												<h3 style="font-weight: bold">게시물 관리</h3>
												<p>
												<p align="center">
													<a href="#">공지사항 관리</a>
												</p>
												<p align="center">
													<a
														href="${ pageContext.servletContext.contextPath }/personalinfopolicy/list">개인정보
														처리 방침, 이용약관 관리</a>
												</p>
												<br> <br>
												<h3 style="font-weight: bold">1:1 문의</h3>
												<p>
												<p align="center">
													<a href="#">1:1 문의 조회</a>
												</p>
												<p align="center">
													<a href="#">1:1 문의 카테고리 관리</a>
												</p>
												<br> <br>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<!-- 옆에 넣으려면 여기에 넣어야함 -->
				<!--   				111~114번이 있어야 사이드바 옆에 내용이 입력됨       -->
				<br> <br> <br>

				<div class="col-lg-9 col-md-9 col-sm-9 col-xs-12">
					<div class="row">
						<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
							<br>
							<br>
							<br>

							<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
								<div class="jp_contact_form_heading_wrapper">
									<h2>개인정보 처리 방침 및 이용약관</h2>
								</div>
							</div>
							<form
								action="${ pageContext.servletContext.contextPath }/personalinfo/policy/detailview"
								method="post">
								<div class="jp_contact_form_box">
								
<%-- 				<!-- 분류 -->			<c:choose>  --%>
<%--  									<c:when  --%>
<%--  										test="${ detailList.postKinds eq '개인정보처리방침' }">  --%>
<!-- 										<select name="postKinds" disabled>  -->
<!--  											<option value="">분류</option>  -->
<!--  											<option value="1" selected>개인정보 처리 방침</option>  -->
<!--  											<option value="2">이용약관</option>  -->
<!--  										</select>  -->
<%--  									</c:when>  --%>
<%--  									<c:when  --%>
<%--  										test="${ detail.postKinds eq '이용약관' }">  --%>
<!--  										<select name="postKinds" disabled>  -->
<!--  											<option value="">분류</option>  -->
<!--  											<option value="1">개인정보 처리 방침</option>  -->
<!--  											<option value="2" selected>이용약관</option>   -->
<!--  										</select>  -->
<%-- 									</c:when>  --%>
<%--  								</c:choose>  --%>
									<br><br>
									
									<div class="col-lg-12 col-md-6 col-sm-12 col-xs-12">
										<div
											class="jp_contact_inputs_wrapper jp_contact_inputs2_wrapper">
											<input name="postKinds"
<%-- 												placeholder="${ requestScope.detailList.postKinds }"> --%>
												value="${ detailList.postKinds }">
										</div>
									</div>
									
									<div class="col-lg-12 col-md-6 col-sm-12 col-xs-12">
			<!-- 제목  -->					<div
											class="jp_contact_inputs_wrapper jp_contact_inputs2_wrapper">
											<input name="postTitle"
<%-- 												placeholder="${ requestScope.detailList.postTitle }"> --%>
												value="${ detailList.postTitle }">
										</div>
									</div>				

			<!-- 내용 -->				<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
										<div
											class="jp_contact_inputs_wrapper jp_contact_inputs4_wrapper">
											<i class="fa fa-text-height"></i>
											<textarea style="overflow-x: hidden; overflow-y: auto;"
<%-- 												rows="16" placeholder="${ requestScope.detailList.postContent }" name="postContent"></textarea> --%>
												rows="16" placeholder="${ detailList.postContent }" name="postContent"></textarea>
										</div>
									</div>

									<button type="button" onClick="history.go(-1)">취소하기</button>
									<!-- 경로 지정해주기 (list로 받아오게)-->
									<button type="submit"
										onclick="href='${ pageContext.servletContext.contextPath }/personalinfopolicy/list'">등록하기</button>

								</div>
							</form>
						</div>
					</div>
				</div>
			</div>



<!-- 				<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12"> -->
<!-- 							<div class="jp_adp_textarea_main_wrapper"> -->
<!-- 								<h3>개인정보 처리 방침 및 이용약관</h3> -->
<%-- 								<c:choose> --%>
<%-- 									<c:when --%>
<%-- 										test="${ detail.PersonalInfoPolicyList[status.index].postKinds eq 1 }"> --%>
<!-- 										<select name="postKinds" disabled> -->
<!-- 											<option value="">분류</option> -->
<!-- 											<option value="1" selected>개인정보 처리 방침</option> -->
<!-- 											<option value="2">이용약관</option> -->
<!-- 										</select> -->
<%-- 									</c:when> --%>
<%-- 									<c:when --%>
<%-- 										test="${ detail.PersonalInfoPolicyList[status.index].postKinds eq 2 }"> --%>
<!-- 										<select name="postKinds" disabled> -->
<!-- 											<option value="">분류</option> -->
<!-- 											<option value="1">개인정보 처리 방침</option> -->
<!-- 											<option value="2" selected>이용약관</option> -->
<!-- 										</select> -->
<%-- 									</c:when> --%>
<%-- 								</c:choose> --%>

<!-- 								<textarea rows="16" -->
<%-- 									placeholder="${ detail.PersonalInfoPolicyList[status.index].postContent}" --%>
<!-- 									name="postContent" disabled></textarea> -->
<!-- 							</div> -->
<!-- 						</div> -->





				<!-- 				<div class="col-lg-9 col-md-9 col-sm-9 col-xs-12"> -->
<!-- 					<div class="row"> -->
<!-- 						<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12"> -->
<!-- 							<br> -->
<!-- 							<br> -->
<!-- 							<br> -->

<!-- 							<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12"> -->
<!-- 								<div class="jp_contact_form_heading_wrapper"> -->
<!-- 									<h2>개인정보 처리 방침 및 이용약관 상세보기</h2> -->
<!-- 								</div> -->
<!-- 							</div> -->
<!-- 							<form -->
<%-- 								action="${ pageContext.servletContext.contextPath }/personalinfopolicy/insert" --%>
<!-- 								method="post"> -->
<!-- 								<div class="jp_contact_form_box"> -->
								
<!-- 				분류			<div class="col-lg-12 col-md-6 col-sm-12 col-xs-12"> -->
<!-- 										<div -->
<!-- 											class="jp_contact_inputs_wrapper jp_contact_inputs2_wrapper"> -->
<!-- 											<select name="postKinds"> -->
<!-- 												<option value="" selected>분류</option> -->
<!-- 												<option value="개인정보처리방침">개인정보처리방침</option> -->
<!-- 												<option value="이용약관">이용약관</option> -->
<!-- 											</select> -->
<!-- 										</div> -->
<!-- 									</div> -->
<!-- 									<br><br> -->
<!-- 									<div class="col-lg-12 col-md-6 col-sm-12 col-xs-12"> -->
			<!-- 제목  -->				<!-- 	<div -->
<!-- 											class="jp_contact_inputs_wrapper jp_contact_inputs2_wrapper"> -->
<!-- 											<i class="fa fa-pencil-square-o"></i><input name="postTitle" -->
<!-- 												placeholder="제목"> -->
<!-- 										</div> -->
<!-- 									</div>				 -->

<!-- 			<!-- 내용 -->				<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12"> 
<!-- 										<div -->
<!-- 											class="jp_contact_inputs_wrapper jp_contact_inputs4_wrapper"> -->
<!-- 											<i class="fa fa-text-height"></i> -->
<!-- 											<textarea style="overflow-x: hidden; overflow-y: auto;" -->
<!-- 												rows="16" placeholder="내용" name="postContent"></textarea> -->
<!-- 										</div> -->
<!-- 									</div> -->

 									<button type="button" onClick="history.go(-1)">취소하기</button> 
 									<button type="submit" 
											onclick="href='${ pageContext.servletContext.contextPath }/personalinfopolicy/list'">수정하기</button> 

<!-- 								</div> -->
<!-- 							</form> -->
<!-- 						</div> -->
<!-- 					</div> -->
<!-- 				</div> -->
				
				
			</div>
		</div>
	</div>




</body>
</html>






