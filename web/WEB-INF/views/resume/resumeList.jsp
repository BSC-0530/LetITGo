<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<c:forEach items="${ resumeList }" var="resume">
<%-- 		<c:out value="${ resume.writeDate }"></c:out> --%>
<%-- 		<c:out value="${ resume.introItemName }"></c:out> --%>
<%-- 		<c:out value="${ resume.introItemContent }"></c:out> --%>
<%-- 		<c:out value="${ resume.awdName }"></c:out> --%>
<%-- 		<c:out value="${ resume.eduName }"></c:out> --%>
<%-- 		<c:out value="${ resume.licenseName }"></c:out> --%>
<%-- 		<c:out value="${ resume.categoryName }"></c:out> --%>
<%-- 		<c:out value="${ resume.skillsName }"></c:out> --%>
			<c:out value="${ resume.resumeNo }"></c:out>
			<c:out value="${ resume.inMemNo }"></c:out>
			<c:out value="${ resume.resumeWriteDate }"></c:out>
			<c:out value="${ resume.resumeScoutStatus }"></c:out>
			<c:out value="${ resume.jobNo }"></c:out>
	</c:forEach>
</body>
</html>