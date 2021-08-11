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
	<c:forEach items="${ detailList }" var="detail" varStatus="status">
		<c:out value="${ detail.careerHistoryList }"></c:out><br>
		<c:out value="${ detail.inMemNo }"/><br>
		<c:out value="${ detail.portFolioList }"></c:out><br>
		<c:out value="${ detail.itemAndContentList }"></c:out><br>
		<c:out value="${ detail.awardHistoryList }"></c:out><br>
		<c:out value="${ detail.holdingAndSkillsList }"></c:out><br>
		<c:out value="${ detail.educationHistoryList }"></c:out><br><br><br>
		<c:out value="${ detail.awardHistoryList[status.index].awdAgency }"></c:out><br>
		<c:out value="${ detail.holdingAndSkillsList[status.index].skillsAndCategory.skillsName }"></c:out>
		<%-- <c:out value="${ detail.awardHistoryList.awdName }"></c:out> --%>
	</c:forEach>
</body>
</html>