<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
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
<link rel="stylesheet" type="text/css"
	href="${ pageContext.servletContext.contextPath }/resources/css/letitgo/letitgo.css" />
<script type="text/javascript" charset="utf8"
	src="https://cdn.datatables.net/1.10.25/js/jquery.dataTables.js"></script>
<link rel="stylesheet" type="text/css"
	href="https://cdn.datatables.net/1.10.25/css/jquery.dataTables.css">
</head>
<body>

	<!-- 상단 검은색 바탕 -->
	<div class="jp_tittle_main_wrapper">
		<div class="jp_tittle_img_overlay"></div>
		<div class="container">
			<div class="row">
				<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
					<div class="jp_tittle_heading_wrapper">
						<div class="jp_tittle_heading">
							<h2>개인 마이페이지</h2>
						</div>
						<div class="jp_tittle_breadcrumb_main_wrapper">
							<div class="jp_tittle_breadcrumb_wrapper">
								<ul>
									<li><a href="#">Home</a></li>
									<li>></li>
									<li><a href="${ pageContext.servletContext.contextPath }/personal/myPage/select">개인 마이페이지</a></li>
									<li>></li>
									<li>지원 현황</li>
								</ul>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	
	<!-- 나머지 전체구역 -->
	
	<div class="jp_listing_sidebar_main_wrapper">
		<div class="container">
			<div class="row">
			
				<!-- 사이드바 -->
				
				<div style="height: 1000px;"
					class="col-lg-3 col-md-3 col-sm-12 col-xs-12 hidden-sm hidden-xs">
					<div class="row">
						<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
							<div class="jp_rightside_job_categories_wrapper">
								<div class="jp_rightside_job_categories_heading">
									<h4 align="left" style="font-weight: bold">My Page</h4>
								</div>
								<div class="jp_rightside_job_categories_content">
									<div class="handyman_sec1_wrapper">
										<div class="content">
											<div class="box">
												<p>
													<a href="#">회원 정보</a>
												</p>
												<br>
												<br>
												<p>
													<a href="${ pageContext.servletContext.contextPath }/personal/apply/select">지원 현황</a>
												</p>
												<br>
												<br>
												<p>
													<a href="#">스카우트 현황</a>
												</p>
												<br>
												<br>
												<p>
													<a href="#">북마크</a>
												</p>
												<br>
												<br>
												<p>
													<a href="#">회원탈퇴</a>
												</p>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				
				<!-- 전체지원 테이블-->
				
				<div class="col-lg-9 col-md-9 col-sm-12 col-xs-12">
					<div class="row">		
						<br><br><br>
						<h1>전체 지원</h1>
						<br>
						<table id="table_apply_whole" class="hover cell-border stripe">
							<thead>
								<tr>
									<td align="center">공고제목</td>
									<td align="center">기업명</td>
									<td align="center">등록일자</td>
									<td align="center">마감일자</td>
									<td align="center">지원상태</td>
									<td align="center">열람상태</td>
									<td align="center">지원취소</td>
									<td align="center">이력서확인</td>
								</tr>
							</thead>	
							<c:forEach var="whole" items="${ requestScope.PersonalApplyList }">									
							<tbody align="center">
								<tr>
									<td><c:out value="${ whole.jobPostTitle }"/></td>
									<td><c:out value="${ whole.coComName }"/></td>
									<td><c:out value="${ whole.jobPostEnrollDate }"/></td>
									<td><c:out value="${ whole.jobPostDeadLine }"/></td>
									<td><c:out value="${ whole.jobPostApplyingStatus }"/></td>
									<td><c:out value="${ whole.jobPostBrowesStatus }"/></td>
									
									<c:if test="${whole.jobPostApplyingStatus eq '지원완료' }">
									<td><button type="submit" onclick="cancel(this);">취소</button></td>	
									</c:if>	
									
									<c:if test="${whole.jobPostApplyingStatus != '지원완료' }">
									<td><button disabled>취소완료</button></td>	
									</c:if>
									
									<c:if test="${whole.jobPostApplyingKinds eq '플랫폼양식' }">										
									<td><button type="submit">확인</button></td>	
									</c:if>
									
									<c:if test="${whole.jobPostApplyingKinds eq '자사양식' }">										
									<td><button type="submit" disabled>자샤양식</button></td>	
									</c:if>											
									
									<td style="font-size: 0px; width:0px; height:0px"><c:out value="${ whole.jobPostNo }"/></td>			
									<td style="font-size: 0px; width:0px; height:0px;"><c:out value="${ whole.resumeNo }"/></td>			
									
								</tr>
							</tbody>
							</c:forEach>				
						</table>
					</div>
				</div>
				
				<!-- 지원완료 테이블-->
				
				<div class="col-lg-9 col-md-9 col-sm-12 col-xs-12">
					<div class="row">		
						<br><br><br>
						<h1>지원 완료</h1>
						<br>
						<table id="table_apply_complete" class="hover cell-border stripe">
							<thead>
								<tr>
									<td align="center">환불요청번호</td>
									<td align="center">결제번호</td>
									<td align="center">상품명</td>
									<td align="center">환불금액</td>
									<td align="center">환불사유</td>
									<td align="center">변경상태</td>
									<td align="center">요청일자</td>
									<td align="center">요청응답일자</td>
								</tr>
							</thead>											
							<tbody align="center">
								<tr>
									<td><c:out value=""/></td>
									<td><c:out value=""/></td>
									<td><c:out value=""/></td>
									<td><c:out value=""/></td>
									<td><c:out value=""/></td>
									<td><c:out value=""/></td>
									<td><button type="submit" onclick="req(this);">환불취소</button></td>				
									<td><button type="submit" disabled>환불불가</button></td>																
								</tr>
							</tbody>				
						</table>
					</div>
				</div>
				
				<!-- 지원취소 테이블-->
				
				<div class="col-lg-9 col-md-9 col-sm-12 col-xs-12">
					<div class="row">		
						<br><br><br>
						<h1>지원 취소</h1>
						<br>
						<table id="table_apply_cancel" class="hover cell-border stripe">
							<thead>
								<tr>
									<td align="center">환불요청번호</td>
									<td align="center">결제번호</td>
									<td align="center">상품명</td>
									<td align="center">환불금액</td>
									<td align="center">환불사유</td>
									<td align="center">변경상태</td>
									<td align="center">요청일자</td>
									<td align="center">요청응답일자</td>
								</tr>
							</thead>											
							<tbody align="center">
								<tr>
									<td><c:out value=""/></td>
									<td><c:out value=""/></td>
									<td><c:out value=""/></td>
									<td><c:out value=""/></td>
									<td><c:out value=""/></td>
									<td><c:out value=""/></td>
									<td><button type="submit" onclick="req(this);">환불취소</button></td>				
									<td><button type="submit" disabled>환불불가</button></td>																
								</tr>
							</tbody>				
						</table>
					</div>
				</div>
							
			</div>
		</div>
	</div>
<script>
$(document).ready(function() {
	$('#table_apply_whole').DataTable();
});
$(document).ready(function() {
	$('#table_apply_complete').DataTable();
});
$(document).ready(function() {
	$('#table_apply_cancel').DataTable();
});

function cancel(button) {
	
	var resumeNo = button.parentNode.parentNode.children[8].innerText;
 	var jobPostNo = button.parentNode.parentNode.children[9].innerText;
	
	var $form = $("<form>").attr("action", "${ pageContext.servletContext.contextPath }/personal/apply/status/update").attr("method", "get");
	
	$form.append($("<input>").attr("name", "resumeNo").attr("type", "hidden").val(resumeNo));
 	$form.append($("<input>").attr("name", "jobPostNo").attr("type", "hidden").val(jobPostNo));
	
	$("body").append($form);
	
	$form.submit();
}
</script>
</body>
</html>