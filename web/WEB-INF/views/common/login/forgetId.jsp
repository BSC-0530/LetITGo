<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<!-- 비로그인 시 사용하는 헤더 -->
	<jsp:include page="../../common/header/header.jsp"/>

	<!-- 이메일 인증하는 화면 -->
	<jsp:include page="forgetIdBody.jsp"/>
	
	<!-- 공용 풋터 -->
	<jsp:include page="../../common/footer.jsp"/>

</body>
</html>