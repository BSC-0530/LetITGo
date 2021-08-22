
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
				<br> <br> <br>
				<div class="col-lg-9 col-md-9 col-sm-9 col-xs-12">
					<div class="row">
						<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
							<h1>상품 관리</h1>
							<div class="jp_listing_tabs_wrapper">

								<!-- 이거는 이제 정보뜨는 칸 -->
								<!-- 데이터 테이블 내역모음 -->
								<table id="skillsCategory" class="hover cell-border stripe">
									<thead>
										<tr>
											<td align="center">번호</td>
											<td align="center">이름</td>
											<td align="center">가격</td>
											<td align="center">구분</td>
											<td align="center">노출</td>
											<td align="center">열람권</td>
											<td align="center">노출시간</td>
											<td align="center">수정</td>
											<td align="center">삭제</td>
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
												<td><button type="button" onclick="modify(this)"
														style="background: skyblue; border-radius: 5px; color: white; font-weight: 900;"
														value="${ productList.productNo }">수정</button></td>
												<td><button type="button"
														style="background: red; border-radius: 5px; color: white; font-weight: 900;"
														onclick="deletebutton(this)"
														value="${ productList.productNo }">삭제</button>
											</tr>
									</c:forEach>
									</tbody>
								</table>
								<br> <br>

								<div class="skills-category-insert-wrapper"
									onclick="post(this);">
									<button type="submit">등록하기</button>
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
			 == alert()로 이동되는지 확인 ==
			 alert();  
			*/
			
			 location.href = "${ pageContext.servletContext.contextPath }/admin/product/insert" 
			
		}
		
		function modify(button) {
			
			/* 
			 == alert()로 이동되는지 확인 ==
			*/
				const productNo = button.value;
				location.href = "${ pageContext.servletContext.contextPath }/admin/product/update?productNo=" + productNo; 
		
		}
		 $("input").filter("[value='null']").val("");
	</script>
	<script>
	
		 function deletebutton(button) {
			
			 alert("삭제 되었습니다.");
			 
			 const productNo = button.value;
			 location.href = "${ pageContext.servletContext.contextPath }/productList/delete?productNo=" + productNo;
			 
		}
	
		 $("input").filter("[value='null']").val("");
		 
	</script>

</body>
</html>