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
									<h4 style="font-weight : bold">My Page</h4>
								</div>
								<div class="jp_rightside_job_categories_content">
									<div class="handyman_sec1_wrapper">
										<div class="content">
											
											<div class="box">
												<h3 style="font-weight : bold">회원정보</h3>
												<p>
												<p align="center">
													<a href="#" >자기소개서 항목 관리</a>
												</p>
												<p align="center">
													<a href="#">직무분야 관리</a>
												</p>
												<p align="center">
													<a href="#">기술 및 카테고리 관리</a>
												</p>	
												<br><br>
												<h3 style="font-weight : bold">결제 관리</h3>
												<p>
												<p align="center">
													<a href="#" >상품 관리</a>
												</p>
												<p align="center">
													<a href="#">결제 내역 조회</a>
												</p>
												<p align="center">
													<a href="#">환불 요청 관리</a>
												</p>	
												<br><br>
												<h3 style="font-weight : bold">기업 요청 관리</h3>
												<p>
												<p align="center">
													<a href="#" >공고 등록 요청</a>
												</p>
												<p align="center">
													<a href="#">공고 수정 요청</a>
												</p>
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
													<a href="#" >회원 탈퇴 사유 조회</a>
												</p>
												<br><br>
												<h3 style="font-weight : bold">게시물 관리</h3>
												<p>
												<p align="center">
													<a href="#" >공지사항 관리</a>
												</p>
												<p align="center">
													<a href="#">개인정보 처리 방침, 이용약관 관리</a>
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
<!-- 옆에 넣으려면 여기에 넣어야함 -->
<!--   				111~114번이 있어야 사이드바 옆에 내용이 입력됨       -->
<br><br><br>
				<div class="col-lg-9 col-md-9 col-sm-9 col-xs-12">
					<div class="row">
						<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
						<h1>기술 관리</h1>
							<div class="jp_listing_tabs_wrapper">

								<!-- 이거는 이제 정보뜨는 칸 -->
								<!-- 데이터 테이블 내역모음 -->
						<table id="skills" class="hover cell-border stripe">
							<thead>
								<tr>
									<td align="center">기술 코드</td>
									<td align="center">카테고리</td>
									<td align="center">기술 이름</td>
									<td align="center">삭제 여부</td>
								</tr>
							</thead>
							<c:forEach var="controllSkills" items="${ requestScope.skillsList }">
							
							<tbody align="center">
							
								<tr>
									<td id="skillsNo"><c:out value="${ controllSkills.skillsNo }"/></td>
									<td id="no"><c:out value="${ controllSkills.no }"/></td>
									<td id="name"><c:out value="${ controllSkills.name }"/></td>
									
									<%-- <c:if test="${ payment.payKinds eq '삭제' }"> --%>
									<td><button type="button" disabled>삭제</button></td>
									<%-- </c:if>	 --%>							
								</tr>
							</tbody>
							</c:forEach>
						</table>
						<br><br>
								
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
			$('#skills').DataTable();
		});
	</script>
</body>
</html>