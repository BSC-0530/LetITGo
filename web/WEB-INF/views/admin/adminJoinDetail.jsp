<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
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
												<p>
												<p align="left">
													<a href="${ pageContext.servletContext.contextPath }/selfintroductionitem/list">자기소개서 항목 관리</a>
												</p>
												<p align="left">
													<a href="${ pageContext.servletContext.contextPath }/jobfield/list">직무분야 관리</a>
												</p>
												<p align="left">
													<a href="${ pageContext.servletContext.contextPath }/skills/list">기술 관리</a>
												</p>
												<p align="left">
													<a href="${ pageContext.servletContext.contextPath }/skillscategory/list">기술 카테고리 관리</a>
												</p>
												<br> <br>
												<h3 style="font-weight: bold">결제 관리</h3>
												<p>
												<p align="left">
													<a href="${ pageContext.servletContext.contextPath }/admin/product/list">상품 관리</a>
												</p>
												<p align="left">
													<a href="${ pageContext.servletContext.contextPath }/admin/payment/select">결제 내역 조회</a>
												</p>
												<p align="left">
													<a href="${ pageContext.servletContext.contextPath }/admin/refund/select">환불 요청 관리</a>
												</p>
												<br> <br>
												<h3 style="font-weight: bold">기업 요청 관리</h3>
												<p>
												<p align="left">
													<a href="${ pageContext.servletContext.contextPath }/admin/post/insertRequest/select">공고 등록 요청</a>
												</p>
												<p align="left">
													<a href="${ pageContext.servletContext.contextPath }/admin/post/updateRequest/select">공고 수정 요청</a>
												</p>
												<p align="left">
													<a href="${ pageContext.servletContext.contextPath }/info/requestList">기업 회원 가입 요청</a>
												</p>
												<p align="left">
													<a href="${ pageContext.servletContext.contextPath }/admin/request/comInfo">기업 정보 변경 요청</a>
												</p>
												<br> <br>
												<h3 style="font-weight: bold">회원 탈퇴</h3>
												<p>
												<p align="left">
													<a href="${ pageContext.servletContext.contextPath }/member/withdrawal">회원 탈퇴 사유 조회</a>
												</p>
												<br> <br>
												<h3 style="font-weight: bold">게시물 관리</h3>
												<p>
												<p align="left">
													<a href="${ pageContext.servletContext.contextPath }/admin/notice/manger/servlet">공지사항 관리</a>
												</p>
												<p align="left">
													<a href="${ pageContext.servletContext.contextPath }/personalinfopolicy/list">개인정보 처리 방침, 이용약관 관리</a>
												</p>
												<br> <br>
												<h3 style="font-weight: bold">1:1 문의</h3>
												<p>
												<p align="left">
													<a href="${ pageContext.servletContext.contextPath }/admin/inquiry/select">1:1 문의 조회</a>
												</p>
												<p align="left">
													<a href="${ pageContext.servletContext.contextPath }/admin/Category/Page">1:1 문의 카테고리 관리</a>
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

				<div class="col-lg-9 col-md-9 col-sm-12 col-xs-12">
					<div class="col-lg-9 col-md-9 col-sm-12 col-xs-12">
						<br><br><br>
					</div>
						<div class="row">
							<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
								<div class="jp_listing_tabs_wrapper">
									<!--                             이거는 이제 정보뜨는 칸 -->
									<div class="tab-pane fade in active register_left_form"
										id="contentOne-1">

										<div class="jp_regiter_top_heading">
											<h1>기업 가입 상세 정보</h1>
										</div>
										<br> <br>
										<div class="row">
											<!--Form Group-->
											<div class="form-group col-md-6 col-sm-6 col-xs-12">
												<input type="text" name="id" 
												value="${ result.id }" readonly>
											</div>
											<div class="form-group col-md-6 col-sm-6 col-xs-12">
												<input type="text" name="coNo" 
												value="${ result.coNo }"	readonly>
											</div>
											<!--Form Group-->
											<div class="form-group col-md-6 col-sm-6 col-xs-12">
												<input type="text" name="email" 
												value="${ result.email }"	readonly>
											</div>
											<!--Form Group-->
											<div class="form-group col-md-6 col-sm-6 col-xs-12">
												<input type="text" name="comName" readonly
												value="${ result.comName }">
											</div>
											<!--Form Group-->
											<div class="form-group col-md-6 col-sm-6 col-xs-12">
												<input type="text" name="ceoName" readonly
												value="${ result.ceoName }">
											</div>
											<div class="form-group col-md-6 col-sm-6 col-xs-12">
												<input type="text" name="fax" readonly
												value="${ result.fax }">
											</div>
											<div class="form-group col-md-6 col-sm-6 col-xs-12">
												<input type="text" name="sectors" readonly
												value="${ result.sectors }">
											</div>
											<!--Form Group-->
											<div class="form-group col-md-6 col-sm-6 col-xs-12">
												<input type="text" name="status" readonly
												value="${ result.status }">
											</div>
											<div class="form-group col-md-6 col-sm-6 col-xs-12">
												<input type="text" name="website" readonly
												value="${ result.website }">
											</div>
											<div class="form-group col-md-12 col-sm-12 col-xs-12">
												<input type="text" name=" coAddress" readonly
												value="${ result.address }">
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
						<br>
						<div class="companyText">
							<label>회사소개</label><input id="textArea" type="text"
								value="${ result.intro  }" readonly>
						</div>
						<label>로고</label>
						<div>
						<img style="width:400px; height: 400px" src="/let/resources/upload/CN.png">
						</div>
						<label>대표이미지</label>
						<div>
						<img style="width:700px; height: 400px" src="/let/resources/upload/CN대표이미지.jpg">
						</div>
						<label>사업자등록증</label>
						<div>
						<img style="width:300px;" src="/let/resources/upload/CN사업자.jpg">
						</div>

						<!-- end -->
				</div>
			</div>
		</div>
	</div>
</body>
</html>