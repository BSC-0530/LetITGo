<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css"
	href="${ pageContext.servletContext.contextPath }/resources/css/animate.css" />
<link rel="stylesheet" type="text/css"
	href="${ pageContext.servletContext.contextPath }/resources/css/bootstrap.css" />
<link rel="stylesheet" type="text/css"
	href="${ pageContext.servletContext.contextPath }/resources/css/font-awesome.css" />
<link rel="stylesheet" type="text/css"
	href="${ pageContext.servletContext.contextPath }/resources/css/fonts.css" />
<link rel="stylesheet" type="text/css"
	href="${ pageContext.servletContext.contextPath }/resources/css/reset.css" />
<link rel="stylesheet" type="text/css"
	href="${ pageContext.servletContext.contextPath }/resources/css/owl.carousel.css" />
<link rel="stylesheet" type="text/css"
	href="${ pageContext.servletContext.contextPath }/resources/css/owl.theme.default.css" />
<link rel="stylesheet" type="text/css"
	href="${ pageContext.servletContext.contextPath }/resources/css/flaticon.css" />
<link rel="stylesheet" type="text/css"
	href="${ pageContext.servletContext.contextPath }/resources/css/style.css" />
<link rel="stylesheet" type="text/css"
	href="${ pageContext.servletContext.contextPath }/resources/css/style_II.css" />
<link rel="stylesheet" type="text/css"
	href="${ pageContext.servletContext.contextPath }/resources/css/responsive.css" />

<!-- letitgo 제작 css -->
<link rel="stylesheet" type="text/css" href="${ pageContext.servletContext.contextPath }/resources/css/letitgo/letitgo.css"/>
</head>
<body>

    <!-- 로그인 폼 -->
    <form id="memberLogin" action="${ pageContext.servletContext.contextPath }/member/login" method="post">
	<div class="login_section">
		<div  class="login_form_wrapper">
			<div  class="container">
				<div  class="row">
					<div class="col-md-8 col-md-offset-2">
						<h1>Let It Go</h1>
						<div style="background:rgb(213,213,213);" class="login_wrapper">
							<h2>개인 / 기업 회원</h2>
							<div class="formsix-pos">
								<div class="form-group i-email">
									<input type="text" name="memId" class="form-control" id="email2" placeholder="Username*">
								</div>
							</div>
							<div class="formsix-e">
								<div class="form-group i-password">
									<input type="password" name="memPwd" class="form-control" id="password2" placeholder="Password *">
								</div>
							</div>
							<div class="login_remember_box">
								<label class="control control--checkbox">Remember me
									<input type="checkbox">
									<span class="control__indicator"></span>
								</label>
								<a href="#" class="forget_password">
									아이디 또는 비밀번호를 잊어버리셨나요?
								</a>
							</div>
							<div class="login_btn_wrapper">
								
								<button class="btn btn-primary login_btn" style="width:100%" type="submit">Login</button>
							</div>
							<div align="center" class="login_message">
								<p>아직 회원가입 안하셨나요?</p><p></p><p><br><a href="${ pageContext.servletContext.contextPath }/member/individual/regist">개인회원가입 </a> </p>
								<br><p><a href="${ pageContext.servletContext.contextPath }/member/coporate/regist">기업회원가입 </a></p>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	</form>

</body>
</html>