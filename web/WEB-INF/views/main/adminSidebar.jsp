<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Let IT Go</title>
<link rel="stylesheet" type="text/css"
	href="${ pageContext.servletContext.contextPath }/resources/css/admin.css" />
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
</head>
<body>

	<!-- 관리자 사이드 바 -->
	<div class="jp_listing_sidebar_main_wrapper">
		<div class="container">
			<div class="row">
				<div
					class="col-lg-3 col-md-3 col-sm-12 col-xs-12 hidden-sm hidden-xs">
					<div class="row">
						<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
							<div class="jp_rightside_job_categories_wrapper">
								<div class="jp_rightside_job_categories_heading">
									<h4 style="font-weight : bold">My Page</h4>
								</div>
								<div class="jp_rightside_job_categories_content">
									<div class="handyman_sec1_wrapper">
										<div class="content">
											
											<div class="box">
												<h3 style="font-weight : bold">회원정보</h3>
												<p>
												<p align="center">
													<a href="${ pageContext.servletContext.contextPath }/selfintroductionitem/list">자기소개서 항목 관리</a>
												</p>
												<br>
												<p align="center">
													<a href="${ pageContext.servletContext.contextPath }/jobfield/list">직무분야 관리</a>
												</p>
												<br>
												<p align="center">
													<a href="${ pageContext.servletContext.contextPath }/skills/list">기술 관리</a>
												</p>
												<br>	
												<p align="center">
													<a href="${ pageContext.servletContext.contextPath }/skillscategory/list">기술 카테고리 관리</a>
												</p>
												<br><br>
												<h3 style="font-weight : bold">결제 관리</h3>
												<p>
												<p align="center">
													<a href="#" >상품 관리</a>
												</p>
												<br>
												<p align="center">
													<a href="#">결제 내역 조회</a>
												</p>
												<br>
												<p align="center">
													<a href="#">환불 요청 관리</a>
												</p>	
												<br><br>
												<h3 style="font-weight : bold">기업 요청 관리</h3>
												<p>
												<p align="center">
													<a href="#" >공고 등록 요청</a>
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
												<br><br>
												<h3 style="font-weight : bold">회원 탈퇴</h3>
												<p>
												<p align="center">
													<a href="${ pageContext.servletContext.contextPath }/member/withdrawal" >회원 탈퇴 사유 조회</a>
												</p>
												<br><br>
												<h3 style="font-weight : bold">게시물 관리</h3>
												<p>
												<p align="center">
													<a href="#" >공지사항 관리</a>
												</p>
												<p align="center">
													<a href="${ pageContext.servletContext.contextPath }/personalinfopolicy/list">개인정보 처리 방침, 이용약관 관리</a>
												</p>
												<br><br>
												<h3 style="font-weight : bold">1:1 문의</h3>
												<p>
												<p align="center">
													<a href="#" >1:1 문의 조회</a>
												</p>
												<p align="center">
													<a href="#">1:1 문의 카테고리 관리</a>
												</p>
												<br><br>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- 관리자 초기 사이드바 -->
	<!-- <div class="v1686_231">
		<div class="v1686_232"></div>
		<div class="v1686_233">
			<span class="v1686_234">게시물 관리</span>
		</div>
		<div class="v1686_235">
			<span class="v1686_236">회원 탈퇴 사유</span> 
			<span class="v1686_237">회원 탈퇴</span>
		</div>
		<div class="v1686_238">
			<span class="v1686_239">공고 수정 요청</span> 
			<span class="v1686_240">공고 등록 요청</span> 
			<span class="v1686_241">공고 관리</span>
		</div>
		<div class="v1686_242">
			<span class="v1686_243">결제 내역 관리</span> 
			<span class="v1686_244">상품 관리</span> 
			<span class="v1686_245">결제 관리</span>
		</div>
		<div class="v1686_246">
			<span class="v1686_247">기업 정보 변경 요청</span> 
			<span class="v1686_248">1:1 문의</span> 
			<span class="v1686_249">회원 관리</span> 
			<span class="v1686_250">기업 회원 가입 요청</span>
		</div>
		<div class="v1686_251">
			
		</div>
		
	</div> -->
</body>
</html>