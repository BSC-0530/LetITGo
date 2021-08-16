<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="company/resetpassword" method="post">
	    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12" align="center">
		<div class="row">
            <div div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                <br><br><br><br><br>
            </div>
            <div div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                <br><br><br>
            </div>
            <div div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                <br><br><br><br><br>
            </div>
			<h3>비밀번호 변경</h3>
			<br> 
			<br> 
			<div style="font: bold">현재 비밀번호 &nbsp; &nbsp; &nbsp; &nbsp; 
                <input type="password" value="" id="myInput"
                    style="border-radius: 5px" placeholder="비밀번호 입력">
                </div>
            <br><br>
            <div style="font: bold">새 비밀번호 &nbsp; &nbsp; &nbsp; &nbsp; 
                <input type="password" value="" id="myInput"
                    style="border-radius: 5px" placeholder="비밀번호 입력">
                </div>
            <br>
			<br> 
            
            <div style="font: bold">비밀번호 확인 &nbsp; &nbsp; 
                <input type="password" value="" id="myInput"
				style="border-radius: 5px" placeholder="비밀번호 입력">
            </div><br>
			<br> <input type="submit" value="취소" style="margin: 10px">
			<input type="submit" value="확인" style="margin: 10px">

		</div>
	</div>
	</form>
</body>
</html>