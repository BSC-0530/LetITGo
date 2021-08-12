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

	<!-- 데이터 테이블 내역모음 -->
						<h1>결제 내역</h1>
						<br>
						<table id="table_payment" class="hover cell-border stripe">
							<thead>
								<tr>
									<td>결제번호</td>
									<td>상품명</td>
									<td>결제금액</td>
									<td>결제일자</td>
									<td>결제상태</td>
									<td>환불신청</td>
								</tr>
							</thead>
							<c:forEach var="payment" items="${ requestScope.paymentHistoryList }">
							
							<tbody align="center">
								<tr>
									<td id="payNo"><c:out value="${ payment.payNo }"/></td>
									<td id="productName"><c:out value="${ payment.productName }"/></td>
									<td id="payPrice"><fmt:formatNumber value="${ payment.payPrice }" pattern="###,###" type="currency"/></td>								
									<td id="payDate"><c:out value="${ payment.payDate }"/></td>
									<td id="payKinds"><c:out value="${ payment.payKinds }"/></td>
									
									<c:if test="${ payment.payKinds eq '결제완료' }">
									<td><button type="submit" onclick="req(this);">환불요청</button></td>
									</c:if>
									
									
									<c:if test="${ payment.payKinds eq '환불완료' }">
									<td><button type="button" disabled>환불처리완료</button></td>
									</c:if>								
								</tr>
							</tbody>
							
							</c:forEach>
						</table>
						<br><br>
</body>
</html>