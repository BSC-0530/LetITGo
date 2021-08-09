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

<link rel="stylesheet" type="text/css" href="${ pageContext.servletContext.contextPath }/resources/css/letitgo/letitgo.css"/>


<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script type="text/javascript" charset="utf8" src="https://cdn.datatables.net/1.10.25/js/jquery.dataTables.js"></script>
<link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.25/css/jquery.dataTables.css">

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
									<h4 align="center" style="font-weight: bold">My Page</h4>
								</div>
								<div class="jp_rightside_job_categories_content">
									<div class="handyman_sec1_wrapper">
										<div class="content">
											<div class="box">
												<p align="center">
													<a href="#">회원정보</a>
												</p>
												<p align="center">
													<a href="${ pageContext.servletContext.contextPath }/companyTestServlet">기업정보</a>
												</p>
												<p align="center">
													<a href="#">결제내역</a>
												</p>
												<p align="center">
													<a href="#">공고관리</a>
												</p>
												<p align="center">
													<a href="#">스카우트 현황</a>
												</p>
												<p align="center">
													<a href="#">찜한 후보자</a>
												</p>
												<p align="center">
													<a href="#">결제 내역</a>
												</p>
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
				<!-- 옆에 넣으려면 여기에 넣어야함 -->
				<!--   				111~114번이 있어야 사이드바 옆에 내용이 입력됨       -->
				<div class="col-lg-9 col-md-9 col-sm-12 col-xs-12">
					<div class="row">
						<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
								<div class="jp_counter_main_wrapper">
								<h1 align="left">지원현황</h1>
									<div class="container">
										<div class="gc_counter_cont_wrapper">
											<div class="count-description">
												<span class="timer">2540</span><i class="fa fa-plus"></i>
												<h5 class="con1">전체 지원</h5>
											</div>
										</div>
										<div class="gc_counter_cont_wrapper2">
											<div class="count-description">
												<span class="timer">7325</span><i class="fa fa-plus"></i>
												<h5 class="con2">지원 완료</h5>
											</div>
										</div>
										<div class="gc_counter_cont_wrapper3">
											<div class="count-description">
												<span class="timer">1924</span><i class="fa fa-plus"></i>
												<h5 class="con3">지원 취소</h5>
											</div>
										</div>
								</div>
								<br><br>
								</div>
								<!-- 데이터 테이들 -->
								
								<h1>전체 지원</h1>
									<table id="table_id" class="display">
										<thead>
											<tr>
												<th>제목</th>
												<th>기업명</th>
												<th>경력</th>
												<th>등록일자</th>
												<th>마감일자</th>
												<th>요구기술</th>
												<th>지원상태</th>
												<th>열람상태</th>
												<th>지원취소</th>
												<th>이력서 확인</th>
											</tr>
										</thead>
										<tbody>
											<tr>
												<td>1 Data 1</td>
												<td>Row 1 Data 2</td>
											</tr>
											<tr>
												<td>2 Data 1</td>
												<td>Row 2 Data 2</td>
											</tr>
											<tr>
												<td>3 Data 1</td>
												<td><label class="switch"><input
														type="checkbox"><span class="slider round"></span></label>
													<p>OFF</p>
													<p style="display: none;">ON</p></td>
											</tr>
											<tr>
												<td>4 Data 1</td>
												<td>Row 2 Data 2</td>
											</tr>
											<tr>
												<td>5 Data 1</td>
												<td>Row 1 Data 2</td>
											</tr>
											<tr>
												<td>6 Data 1</td>
												<td>Row 2 Data 2</td>
											</tr>
											<tr>
												<td>7 Data 1</td>
												<td>Row 1 Data 2</td>
											</tr>
											<tr>
												<td>8 Data 1</td>
												<td>Row 2 Data 2</td>
											</tr>
											<tr>
												<td>9 Data 1</td>
												<td>Row 1 Data 2</td>
											</tr>
											<tr>
												<td>10 Data 1</td>
												<td>Row 2 Data 2</td>
											</tr>
										</tbody>
									</table>
								</div>
							</div>
				</div>
			</div>
		</div>
	</div>
<script>

	$(document).ready( function () {
	    $('#table_id').DataTable();
	} );
	
	
</script>
</body>
</html>