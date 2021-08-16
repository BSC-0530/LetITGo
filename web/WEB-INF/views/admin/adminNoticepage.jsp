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
												<br>
												<p>
												<p align="center">
													<a href="#">자기소개서 항목 관리</a>
												</p>
												<br>
												<p align="center">
													<a href="#">직무분야 관리</a>
												</p>
												<br>
												<p align="center">
													<a href="#">기술 및 카테고리 관리</a>
												</p>
												<br> <br>
												<h3 style="font-weight: bold">결제 관리</h3>
												<br>
												<p>
												<p align="center">
													<a href="#">상품 관리</a>
												</p>
												<br>
												<p align="center">
													<a href="${ pageContext.servletContext.contextPath }/admin/payment/select">결제 내역 조회</a>
												</p>
												<br>
												<p align="center">
													<a href="${ pageContext.servletContext.contextPath }/admin/refund/select">환불 요청 관리</a>
												</p>
												<br> <br>
												<h3 style="font-weight: bold">기업 요청 관리</h3>
												<br>
												<p>
												<p align="center">
													<a href="${ pageContext.servletContext.contextPath }/admin/post/insertRequest/select">공고 등록 요청</a>											
												</p>
												<br>
												<p align="center">
													<a href="${ pageContext.servletContext.contextPath }/admin/post/updateRequest/select">공고 수정 요청</a>
												</p>
												<br>
												<p align="center">
													<a href="#">기업 회원 가입 요청</a>
												</p>
												<br>
												<p align="center">
													<a href="#">기업 정보 변경 요청</a>
												</p>

												<br> <br>
												<h3 style="font-weight: bold">회원 탈퇴</h3>
												<br>
												<p>
												<p align="center">
													<a href="#">회원 탈퇴 사유 조회</a>
												</p>
												<br> <br>
												<h3 style="font-weight: bold">게시물 관리</h3>
												<br>
												<p>
												<p align="center">
													<a href="${ pageContext.servletContext.contextPath }/admin/notice/manger/servlet">공지사항 관리</a>
												</p>
												<br>
												<p align="left">
													<a href="#">개인정보 처리 방침 및 <br>이용약관 관리
													</a>
												</p>
												<br> <br>
												<h3 style="font-weight: bold">1:1 문의</h3>
												<br>
												<p>
												<p align="center">
													<a href="${ pageContext.servletContext.contextPath }/admin/inquiry/select">1:1 문의 조회</a>
												</p>
												<br>
												<p align="center">
													<a href="${ pageContext.servletContext.contextPath }/admin/Category/Page">1:1 문의 카테고리 관리</a>
												</p>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>

				<div class="col-lg-9 col-md-9 col-sm-9 col-xs-12">
					<div class="row">
						<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
							<br><br><br>
							<h1>1:1문의 내역 조회</h1>
							<div class="jp_listing_tabs_wrapper">
								<table id="table_payment" class="hover cell-border stripe">
									<thead>
										<tr>
											<td align="center">번호</td>
											<td align="center">제목</td>
											<td align="center">등록일자</td>
											<td align="center">상세보기</td>
											<td align="center">수정일자</td>
											<td align="center">수정</td>
											<td align="center">노출여부</td>
										</tr>
									</thead>
								<c:forEach var="notice" items="${ requestScope.notice }">
										<tbody align="center">
											<tr>
												<td><c:out value="${ notice.postNo }"/></td>									
												<td><c:out value="${ notice.postTitle }"/></td>
												<td><c:out value="${ notice.postRegistrationDate }"/></td>
												<td><button  type="submit" onclick="browse(this);" >상세보기</button></td>
												<c:choose>
												<c:when test="${empty notice.postModifiedDate }">
												<td><c:out value="수정사항 없음 "/></td>
												</c:when>
												<c:otherwise>
												<td><c:out value="${ notice.postModifiedDate }"/></td>
												</c:otherwise>
												</c:choose>
												<td><button  type="submit" onclick="modify(this);" >수정</button></td>
												<td><label class="switch"><input name="switchbox"type="checkbox"><span class="slider round"></span></label>
													<p>OFF</p>
													<p style="display:none;">ON</p></td>
<%-- 												<td style="font-size: 0px; width:0px; height:0px;"><c:out value="${ inq.inquiryNo }"/></td> --%>
											</tr>
										</tbody>	
								</c:forEach>			
								</table>
								<br>
								<br>
							</div>
						</div>
						
					</div>
					<div class="category-insert">
										<button style="margin-left: 90%; margin-top: 5%;"
											type="submit" class="btn btn-info" onclick="insert();">등록</button>
					</div>
					<br>
				</div>
				
				<br>
			</div>
		</div>
	</div>
	
<script>
// 데이터테이블
		$(document).ready(function() {
			$('#table_payment').DataTable();
		});
</script>

<script>
//등록버튼
		function insert(button) {
			
			 alert('이이잉~');  
			
	 location.href = "${ pageContext.servletContext.contextPath }/notice/insert/servlet" 
			
		}
</script>

<script>
//상세보기 버튼
	function browse(button){
		
		const postNo = button.parentNode.parentNode.children[0].innerText
					
		location.href="${ pageContext.servletContext.contextPath }/notice/details/servlet?postNo="+postNo
				
	}	
</script>
<script>
//수정 버튼
	function modify(button){
		
		const num = button.parentNode.parentNode.children[0].innerText

		alert(num);
		
	}
</script>

<script>
//등록버튼
var check = $("input[type='checkbox']");

check.click(function(){
	
	const num = input.parentNode.parentNode.parentNode.children[7].children[0].innerText
	alert(num);
	
});
	
</script>
</body>
</html>