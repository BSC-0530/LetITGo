<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" content="text/html; charset=UTF-8">
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
<link rel="stylesheet" type="text/css" href="${ pageContext.servletContext.contextPath }/resources/css/letitgo/letitgo.css" />

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>

<script type="text/javascript" src="/let/resources/js/datatables.js"></script>
<link rel="stylesheet" type="text/css" href="/let/resources/css/datatables.css" />

</head>
<body>
<%
    request.setCharacterEncoding("UTF-8");
%>
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


				<div class="col-lg-9 col-md-9 col-sm-9 col-xs-12">
					<div class="row">
						<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
							<br><br><br>
							<h1>기업정보 수정 요청 관리</h1>
<%-- 									<form action="${ pageContext.servletContext.contextPath }/notice/check/ynupdate" method="post" > --%>
							<div class="jp_listing_tabs_wrapper">
								<table id="table_payment" class="hover cell-border stripe">
									<thead>
										<tr>
											<td></td>
											<td align="center">요청번호</td>
											<td align="center">기업명</td>
											<td align="center">구분</td>
											<td align="center">요청 일자</td>
											<td align="center">응답 일자</td>
											<td align="center">상태</td>
											<td align="center">거절 사유</td>
											<td align="center">상세 보기</td>
											<td align="center">이미지</td>
										</tr>
									</thead>
										<tbody align="center">
								<c:forEach var="reqlist" items="${ requestScope.reqlist }"><c:forEach var="orgin" items="${ requestScope.orgin }">
								<c:if test="${ reqlist.coMemNo eq orgin.coMemNo }">
											<tr id="postNo">
												<td id="memNO"><input type="hidden" value= "${ reqlist.coMemNo }" ></td>
												<td><c:out value="${ reqlist.coReqNo }"/></td>
												<td><c:out value="${ orgin.coComName }"/></td>
												<td><c:out value="${ reqlist.memFileKinds }"/></td>
												<td><c:out value="${ reqlist.coReqDate }"/></td>
												<td><c:out value="${ reqlist.coAnsDate }"/> </td>
												<td><c:out value="${ reqlist.coAnsKinds }"/></td>
												<td><button type=button onclick="reason(this);" >거절사유</button></td>
												<td><button type=button onclick="detail(this);" >상세보기</button></td>
												<td><button type=button onclick="Image(this);" >이미지</button></td>
											</tr>
										</c:if>
								</c:forEach></c:forEach>						
										</tbody>	
								<c:forEach var="orgin" items="${ requestScope.orgin }">
								<input type="hidden" value="${orgin.coMemNo }"/>
								</c:forEach>					
								</table>
								</div>
<!-- 						</form> -->
								<br>
								<br>
							</div>
							
						</div>
						
					</div>
					<br>
					
				</div>
				
				<br>
			</div>
		</div>
<script>
// 데이터테이블
		$(document).ready(function() {
			$('#table_payment').DataTable();
		});
</script>
<script>
	function Image(button){
		
		const memNo = document.getElementById("memNO").children[0].value;
		const reqNo = button.parentNode.parentNode.children[1].innerText
		
		location.href="${ pageContext.servletContext.contextPath }/request/detailImage/servlet?memNo="+memNo+"&reqNo="+reqNo
				
	}
</script>
<script>
//상세보기 버튼
		function detail(button) {
			
			const memNo = document.getElementById("memNO").children[0].value;
			const reqNo = button.parentNode.parentNode.children[1].innerText
			
			
			console.log(memNo);
			console.log(reqNo);
			location.href="${ pageContext.servletContext.contextPath }/request/detailComInfo/servlet?memNo="+memNo+"&reqNo="+reqNo
			
		}
</script>
<script>
// 거절하기버튼
	function reason(button){
		
// 		const memNo = document.getElementById("memNO").children[0].value;
		const reqNo = button.parentNode.parentNode.children[1].innerText
		
		window.open("/let/reject/reason/pop?reqNo="+reqNo, "width=300, height=200, resizable = no, scorllbars = no")
		
	}
</script>
		

</body>
</html>
