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

<link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.25/css/jquery.dataTables.css">
  
<script type="text/javascript" charset="utf8" src="https://cdn.datatables.net/1.10.25/js/jquery.dataTables.js"></script>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script type="text/javascript" charset="utf8" src="https://cdn.datatables.net/1.10.25/js/jquery.dataTables.js"></script>
<link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.25/css/jquery.dataTables.css">

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
												<br>
												<br>
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
												<br>
												<br>
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
												<br>
												<br>
												<h3 style="font-weight: bold">회원 탈퇴</h3>
												<p>
												<p align="center">
													<a href="#">회원 탈퇴 사유 조회</a>
												</p>
												<br>
												<br>
												<h3 style="font-weight: bold">게시물 관리</h3>
												<p>
												<p align="center">
													<a href="#">공지사항 관리</a>
												</p>
												<p align="center">
													<a href="${ pageContext.servletContext.contextPath }/personalinfopolicy/list">개인정보 처리 방침, 이용약관 관리</a>
												</p>
												<br>
												<br>
												<h3 style="font-weight: bold">1:1 문의</h3>
												<p>
												<p align="center">
													<a href="#">1:1 문의 조회</a>
												</p>
												<p align="center">
													<a href="#">1:1 문의 카테고리 관리</a>
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
								<table id="personal_info_policy" class="hover cell-border stripe">
									<thead>
										<tr>
											<td align="center">번호</td>
											<td align="center">제목</td>
				<!-- 상세보기 버튼 만들기 -->		<td align="center">상세보기</td>
											<td align="center">등록일자</td>
											<td align="center">분류</td>
											<td align="center">수정일자</td>
				<!-- 수정 버튼 만들기 -->			<td align="center">수정</td>
										</tr>
									</thead>
									<c:forEach var="controllPersonalInfoPolicy"
										items="${ requestScope.personalInfoPolicyList }">

										<tbody align="center">

											<tr>
												<td id="postNo"><c:out value="${ controllPersonalInfoPolicy.postNo }" /></td>
												<td id="postTitle"><c:out value="${ controllPersonalInfoPolicy.postTitle }" /></td>
 	<!-- onClick 안에 상세보기 인터페이스 메소드명 넣어주기 -->	<td><button class="btn-info" onClick="detail(this);" value="${ controllPersonalInfoPolicy.postNo }">상세보기</button></td> 
<!--  												<td><button type="submit"  -->
<%--  		이건 값도 안넘어옴							onclick="href='${ pageContext.servletContext.contextPath }/personalinfo/policy/detailview'">등록하기</button></td>  --%>
												<td id="postRegistrationDate"><c:out value="${ controllPersonalInfoPolicy.postRegistrationDate }" /></td>
												<td id="postKinds"><c:out value="${ controllPersonalInfoPolicy.postKinds }" /></td>
												<td id="postModifiedDate"><c:out value="${ controllPersonalInfoPolicy.postModifiedDate }" /></td>
	<!-- onClick 안에 수정 인터페이스 메소드명 넣어주기 -->	<td><button class="btn-info" onClick="modify(this);" value="${ controllPersonalInfoPolicy.postNo }">수정</button></td>
											</tr>
										</tbody>
									</c:forEach>

								</table>
								<br>
								<br>

								<div class="personal-info-policy-insert-wrapper" onclick="post(this);">
									<button type="submit">등록</button>
								</div>

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
			$('#personal_info_policy').DataTable();
		});
	</script>
	
	<script>
		function post(div) {
			
			/* 
			 == alert()로 이동되는지 확인 ==
			 alert();  
			*/
			
			 location.href = "${ pageContext.servletContext.contextPath }/personalinfopolicy/insert" 
			
		}
	</script>
	
<!-- 	 <script type="text/javascript"> -->
		
<%-- // 		function detail(this)(button) {
			
// 			const no = button.value;
// 			location.href = "${ pageContext.servletContext.contextPath }/personalinfopolicy/detailview?postNo=" + postNo;
			
// 		}
		
// 		$("input").filter("[value='null']").val("");
		
// 		/* location.reload();  무한로딩; 함수 안에서도 안먹힘  */ --%>
	
<!-- 	</script>  -->
	
	<!-- <script type="text/javascript">
		
		function 수정(this)(button) {
			
			const no = button.value;
			location.href = "${ pageContext.servletContext.contextPath }/jobfield/delete?no=" + no;
			
		}
		
		$("input").filter("[value='null']").val("");
		
		/* location.reload();  무한로딩; 함수 안에서도 안먹힘  */
	
	</script> -->
	
	<script>
	//상세보기 버튼
	function detail(button){
		
// 		const postNo = button.parentNode.parentNode.children[0].innerText 
		const postNo = button.value; 
					
// 		alert(postNo); 이건 잘넘어감 -> adminPolicyAndGuideLineDetailView.jsp 여기 경로로 이동이 안됌
					
// 		location.href="${ pageContext.servletContext.contextPath }/personalinfopolicy/detailview?postNo="+postNo
		location.href="${ pageContext.servletContext.contextPath }/personalinfo/policy/detailview?postNo="+postNo
			
	}	
	</script>

<!-- 	<script> -->
<!-- // 	//수정 버튼 -->
<!-- // 	function modify(button){ -->
		
<!-- // 		const postNo = button.parentNode.parentNode.children[0].innerText -->
<!-- // // 		const num = button.value;  -->

<!-- // 		alert(postNo); -->
		
<%-- // 		location.href="${ pageContext.servletContext.contextPath }/personalinfopolicy/detail?postNo="+postNo --%>
		
<!-- // 	} -->
<!-- </script>	 -->
	
</body>
</html>








