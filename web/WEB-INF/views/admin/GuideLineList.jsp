<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
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

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script type="text/javascript" src="/let/resources/js/datatables.js"></script>
<link rel="stylesheet" type="text/css" href="/let/resources/css/datatables.css" />

<!-- letitgo 제작 css -->
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

				<!-- 옆에 넣으려면 여기에 넣어야함 -->
				<!--   				111~114번이 있어야 사이드바 옆에 내용이 입력됨       -->
				<br>
				<br>
				<br>
				<div class="col-lg-9 col-md-9 col-sm-9 col-xs-12">
					<div class="row">
						<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
							<h1>개인정보 처리 방침 및 이용약관</h1>
							<div class="jp_listing_tabs_wrapper">

								<!-- 이거는 이제 정보뜨는 칸 -->
								<!-- 데이터 테이블 내역모음 -->
								<table id="guide_line" class="hover cell-border stripe">
									<thead>
										<tr>
											<td align="center">번호</td>
											<td align="center">제목</td>
				<!-- 상세보기 버튼 만들기 -->		<td align="center">상세보기</td>
											<td align="center">등록일자</td>
											<td align="center">분류</td>
										</tr>
									</thead>
										<tbody align="center">
									<c:forEach var="controllGuideLine"
										items="${ requestScope.guideLineList }">


											<tr>
												<td id="postNo"><c:out value="${ controllGuideLine.postNo }" /></td>
												<td id="postTitle"><c:out value="${ controllGuideLine.postTitle }" /></td>
 	<!-- onClick 안에 상세보기 인터페이스 메소드명 넣어주기 -->	<td><button class="btn-info" onClick="detail(this);" value="${ controllGuideLine.postNo }">상세보기</button></td> 
												<td id="postRegistrationDate"><c:out value="${ controllGuideLine.postRegistrationDate }" /></td>
												<td id="postKinds"><c:out value="${ controllGuideLine.postKinds }" /></td>
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
					<!-- end -->
				</div>
			</div>
		</div>
	</div>

	<script>
		$(document).ready(function() {
			$('#guide_line').DataTable();
		});
	</script>
	
	<script>
	//상세보기 버튼
	function detail(button){			/* 경로 변경해줘야함 (디테일뷰쪽으로) */
		
		const postNo = button.value; 
	
		location.href="${ pageContext.servletContext.contextPath }/guideline/detail?postNo="+postNo
			
	}	
	</script>

</body>
</html>








