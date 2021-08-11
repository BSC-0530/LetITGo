<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>test</h3>
	<form action="${ pageContext.servletContext.contextPath }/jobfield/list" method="get">
	<select name="no">
		<option value="name">직무이름</option>
	</select>
	<input type="text" name="name">
	<input type="submit" value="검색버튼">
</form>
</body>
</html>