<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<script>
		(function() {
			const successCode = "${ requestScope.successCode }";
		
			let successMessage = "";
			let movePath = "";
		
			switch(successCode){
			case "insertMember" :
				successMessage = "회원 가입에 성공하셨습니다!";
				movePath = "${ pageContext.servletContext.contextPath }";
				break;
			case "updateMember" :
				successMessage = "회원 정보 변경에 성공하셨습니다!";
				movePath = "${ pageContext.servletContext.contextPath }/member/update";
				break;
			case "deletMember" :
				successMessage = "회원 탈퇴에 성공하셨습니다.!";
				movePath = "${ pageContext.servletContext.contextPath }/index.jsp";
				break;
			}
		
			alert(successMessage);
		
			location.replace(movePath);
		});
	</script>
</body>
</html>