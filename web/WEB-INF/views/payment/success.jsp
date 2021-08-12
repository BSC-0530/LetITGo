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
			case "insertRefundRequest" :
				successMessage = "정상적으로 환불 요청이 완료되었습니다.";
				movePath = "${ pageContext.servletContext.contextPath }/company/paymentHistory/select";
				break;			
			}
		
			alert(successMessage);
		
			location.replace(movePath);
		});
	</script>
</body>
</html>