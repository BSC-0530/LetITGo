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


<div class="login_section">
		<!-- login_form_wrapper -->
		<div class="login_form_wrapper">
			<div class="container">
				<div class="row">
					<div class="col-md-8 col-md-offset-2">
						<!-- login_wrapper -->
						<h1>개발자의 세상으로 어서오세요</h1>
						<div class="login_wrapper">
							<form action="${ pageContext.servletContext.contextPath }/member/login"method="post">
							<div class="row">
							
							</div>
							<div class="formsix-pos">
								<div>
									<input type="text" class="form-control"  id="id" name="id" placeholder="아이디">
								</div>
							</div>
							<div class="formsix-e">
								<div>
									<input type="password" class="form-control" id="password" name="password" placeholder="비밀번호">
								</div>
							</div>
							<div class="login_remember_box">
								<label class="control control--checkbox">로그인 정보 저장
									<input type="checkbox">
									<span class="control__indicator"></span>
								</label>
								<a href="#" class="forget_password">
									아이디/비밀번호를 잊어버렸어요
								</a>
							</div>
							<div class="login_btn_wrapper">
<!-- 								<a href="#" class="btn btn-primary login_btn">login</a> -->
								<button type="submit">login</button>
							</div>
							<div class="login_message"  align="center">
								<p>새로운 개발자인가요?<a href="/web/WEB-INF/views/register/regist.jsp"> 가입하기</a> </p>
							</div>
							</form>
						</div>
						<!-- /.login_wrapper-->
					</div>
				</div>
			</div>
		</div>
	</div>

</body>
</html>