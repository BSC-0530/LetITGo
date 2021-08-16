<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
  <div class="jp_tittle_main_wrapper">
        <div class="jp_tittle_img_overlay"></div>
        <div class="container">
            <div class="row">
                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                    <div class="jp_tittle_heading_wrapper">
                        <div class="jp_tittle_heading">
                            <h2>기업 마이페이지</h2>
                        </div>
                        <div class="jp_tittle_breadcrumb_main_wrapper">
                            <div class="jp_tittle_breadcrumb_wrapper">
                                <ul>
                                    <li><a href="#">Home</a></li>
                                    <li><a href="#">기업 마이페이지</a></li>
                                    <li>기업 마이페이지</li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

<!-- 사이드바 -->
	<form action="company/resetpassword" method="post">
	    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12" align="center">
		<div class="row">
            <div div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                <br>
            </div>
            <div div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                <br><br><br>
            </div>
            <div div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                <br><br><br>
            </div style="font: bold">
			<h3>비밀번호 변경</h3>
			<br> 
			<br> 
			<div style="font: bold">현재 비밀번호 &nbsp; &nbsp; &nbsp; &nbsp; 
                <input type="password" id="nowPwd"
                    style="border-radius: 5px" placeholder="비밀번호 입력">
                </div>
            <br><br>
            <div style="font: bold">새 비밀번호 &nbsp; &nbsp; &nbsp; &nbsp; 
                <input type="password" value="" id="newPwd"
                    style="border-radius: 5px" placeholder="비밀번호 입력">
                </div>
            <br>
			<br> 
            
            <div style="font: bold">비밀번호 확인 &nbsp; &nbsp; 
                <input type="password" value="" id="newPwdCheck"
				style="border-radius: 5px" placeholder="비밀번호 입력">
            </div><br>
			<br> <input type="submit" value="취소" style="margin: 10px">
			<input type="submit" value="확인" style="margin: 10px">
			<br><br><br><br>
		</div>
	</div>
	</form>
</body>
</html>