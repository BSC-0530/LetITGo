<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<c:set var="root" value="${pageContext.request.contextPath }"/>
	<c:if test="${check != 0}">
		   <div align="center">
		   	이미 사용중인 사업번호입니다.
		   	<form action = "??????" method="get"> <!-- 아이디 체크 해야할 경로 -->
		   			<input type="text" name="id"/>
		   			<input type="submit" value="확인"/>
		   	</form>
		   </div>
	</c:if>
	
	<c:if test="${check == 0 }">
		<div align = "center">
				사용 가능한 사업번호입니다.
		</div>
		<script>
			opener.joinform.id.value="${id}"; //joinform = 닫기 모양 css다.
		</script>
	</c:if>
	
	<div align="center">
		<a href="javascript:self.close();">닫기</a>
	</div>

</body>
</html>