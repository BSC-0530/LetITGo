<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
	<div class="jp_tittle_main_wrapper">
		<div class="jp_tittle_img_overlay"></div>
		<div class="container">
			<div class="row">
				<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
					<div class="jp_tittle_heading_wrapper">
						<div class="jp_tittle_heading">
							<h2>관리자 페이지</h2>
						</div>
						<div class="jp_tittle_breadcrumb_main_wrapper">
							<div class="jp_tittle_breadcrumb_wrapper"></div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
<div>
	<div class="jp_listing_sidebar_main_wrapper">
		<div class="container">
			<div class="row">
				<div class="v1686_231">
					<div class="v1686_232"></div>
					<div class="v1686_233">
						<span class="v1686_234">게시물 관리</span>
					</div>
					<div class="v1686_235">
						<span class="v1686_236">회원 탈퇴 사유</span> <span class="v1686_237">회원
							탈퇴</span>
					</div>
					<div class="v1686_238">
						<span class="v1686_239">공고 수정 요청</span> <span class="v1686_240">공고
							등록 요청</span> <span class="v1686_241">공고 관리</span>
					</div>
					<div class="v1686_238">
						<span class="v1686_239">공고 수정 요청</span> <span class="v1686_240">공고
							등록 요청</span> <span class="v1686_241">공고 관리</span>
					</div>
					<div class="v1686_242">
						<span class="v1686_243">결제 내역 관리</span> <span class="v1686_244">상품
							관리</span> <span class="v1686_245">결제 관리</span>
					</div>
					<div class="v1686_246">
						<span class="v1686_247">기업 정보 변경 요청</span> <span class="v1686_248">1:1
							문의</span> <span class="v1686_249">회원 관리</span> <span class="v1686_250">기업
							회원 가입 요청</span>
					</div>
					<div class="v1686_251"></div>

				</div>
				<!-- 옆에 넣으려면 여기에 넣어야함 -->
				<!--   				111~114번이 있어야 사이드바 옆에 내용이 입력됨       -->
				<div class="col-lg-9 col-md-9 col-sm-12 col-xs-12">
					<div class="row">
						<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
							<div class="jp_counter_main_wrapper">
								<h1 align="left">관리자 메인페이지</h1>
								<div class="container">
									<div class="gc_counter_cont_wrapper">
										<div class="count-description">
											<span class="timer">0</span><i class="fa fa-plus"></i>
											<h5 class="con1">
												<a href="">기업 회원 가입 요청</a>
											</h5>
										</div>
									</div>
									<div class="gc_counter_cont_wrapper2">
										<div class="count-description">
											<span class="timer">0</span><i class="fa fa-plus"></i>
											<h5 class="con2">공고 등록 요청</h5>
										</div>
									</div>
									<div class="gc_counter_cont_wrapper3">
										<div class="count-description">
											<span class="timer">0</span><i class="fa fa-plus"></i>
											<h5 class="con3">공지사항</h5>
										</div>
									</div>
								</div>
								<br> <br>
							</div>

						</div>
						<!-- 파란색 네모 박스 들어가야함 -->
						<div class="col-lg-9 col-md-9 col-sm-12 col-xs-12">
							<div class="row">
								<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
									<div class="jp_counter_main_wrapper">

										<div class="container">
											<div class="gc_counter_cont_wrapper">
												<div class="count-description">
													<span class="timer">0</span><i class="fa fa-plus"></i>
													<h5 class="con1">기업 회원 변경 요청</h5>
												</div>
											</div>
											<div class="gc_counter_cont_wrapper2">
												<div class="count-description">
													<span class="timer">0</span><i class="fa fa-plus"></i>
													<h5 class="con2">공고 수정 요청</h5>
												</div>
											</div>
											<div class="gc_counter_cont_wrapper3">
												<div class="count-description">
													<span class="timer">0</span><i class="fa fa-plus"></i>
													<h5 class="con3">1:1 문의</h5>
												</div>
											</div>
										</div>
										<br> <br>
									</div>

								</div>


							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
			<script>
				$(document).ready(function() {
					$('#table_scout').DataTable();
				});
			</script>
</body>
</html>