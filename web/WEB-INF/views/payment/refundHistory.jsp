<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<!-- 기업회원 헤더 -->
	<jsp:include page="../common/header/companyHeader.jsp"/>
	
	<!-- 환불내역조회란 -->
	<jsp:include page="refundHistoryBody.jsp"/>

	<!-- 공용풋터 -->
	<jsp:include page="../common/footer.jsp"/>	
</body>
</html>