<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Let IT Go admin</title>
</head>
<body>
	<!-- <h1 align="center">성공!</h1> -->	
	
	<script>
		(function() {
			
			const successCode = "{ request.Scope.successCode }";
			
			let sucessMessage = "";
			let movePath = "";
			
			switch(successCode) {
			
			case "skillsCategoryInsert" :
				successMessage = "기술 카테고리 등록에 성공하셨습니다.";
				movePath = "${ pageContext.servletContext.contextPath }//* 경로 지정해주기 */";
				
			case "skillsInsert" :
				successMessage = "기술 등록에 성공하셨습니다.";
				movePath = "${ pageContext.servletContext.contextPath }//* 경로 지정해주기 */";
				
			case "jobFieldInsert" :
				successMessage = "직무분야 등록에 성공하셨습니다.";
				movePath = "${ pageContext.servletContext.contextPath }/jobfield/list";
				
			case "selfIntroductionItemInsert" :
				successMessage = "자기소개서 항목 등록에 성공하셨습니다.";
				movePath = "${ pageContext.servletContext.contextPath }//* 경로 지정해주기 */";
			
			}
			
		})
	</script>
</body>
</html>









