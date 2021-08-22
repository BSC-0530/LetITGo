<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Let IT Go</title>
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
	<form id="selectProductForm" action="/let/exposureForuse/select" method="post">
	<input name="jobPostNo" type="hidden" value="${ requestScope.jobPostNo }">
	<c:if test="${ requestScope.exposureProduct ne null }">
	<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
		<div class="jp_rightside_job_categories_wrapper">
			<div class="jp_rightside_job_categories_heading">
				<h4>공고권 선택</h4>
			</div>
			<div class="jp_rightside_job_categories_content">
				<div class="handyman_sec1_wrapper">
					<div class="content">
						<div class="box">
						<table style="width: 60%; border: 1px solid #333333;">
							<thead  style="width: 100%; border: 1px solid #333333;">
								<tr>
									<th>상품이름</th>
									<th>잔여시간</th>
								<tr>
							</thead>
							<tbody  style="width: 60%; border: 1px solid #333333;">
								<c:forEach var="product" items="${ requestScope.exposureProduct }" varStatus="status">
								<tr>
									<td>
									<input type="radio" id="${ status.index }" value="${ product.retainedProductCode }" name="retainedProductCode">
									<label for="${ status.index }"><c:out value="${ product.productName }"/></label>
									</td>
									<td>
									<c:set var="time" value="${ product.exposureTime / 60 / 60 }"></c:set>
									<label for="${ status.index }">
									<fmt:formatNumber type="number" pattern="0" value="${ time }"/>시간
									</label>
									</td>
								<tr>
								</c:forEach>
							</tbody>
						</table>
							<label>공고 노출 시작시간<input name="exposureUseDate" type="date"></label><br>
							<label>공고 노출 마감시간<input name="exposureEndDate" type="date"></label>
						</div>
						<div>
						<button class="btn btn-info"type="submit">공고권 선택</button>
						<button class="btn btn-info"type="button" onclick="closeTab()">닫기</button>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	</c:if>
	</form>
  
	<c:if test="${ requestScope.exposureProduct eq null }">
	
	<label>구입한 공고권이 없습니다.</label>
	
	<button onclick="closeSelectResume();">닫기</button>
	 
	</c:if>
  
</body>



</html>