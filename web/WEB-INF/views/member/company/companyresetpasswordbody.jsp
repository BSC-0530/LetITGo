<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
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
<link rel="stylesheet" type="text/css"
	href="${ pageContext.servletContext.contextPath }/resources/css/letitgo/letitgo.css" />
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<link rel="stylesheet" type="text/css"
	href="${ pageContext.servletContext.contextPath }/resources/css/letitgo/letitgo.css" />
<script type="text/javascript" charset="utf8"
	src="https://cdn.datatables.net/1.10.25/js/jquery.dataTables.js"></script>
<link rel="stylesheet" type="text/css"
	href="https://cdn.datatables.net/1.10.25/css/jquery.dataTables.css">
</head>
<script>
	var form = document.coMemberRegist;
	var re2 = /^(?=.*[a-zA-Z])(?=.*[!@#$%^*++-])(?=.*[0-9]).{8,18}$/; // ??????????????? ???????????? ????????? ?????????
	var newPwd = document.getElementById("newPwd");

	if (!check2(re2, newPwd, "??????????????? 8~18?????? ?????? ????????????, ??????, ??????????????? ?????? ???????????? ??????????????????")) {
		return false;
	}
	if (form.newPwd.value != form.newPwdCheck.value) {
		alert("??????????????? ???????????? ???????????????.");
		return false;
	}
	//????????? ????????? ?????? ????????? ??????
	function check2(re, what, message) {
		if (re.test(what.value)) {
			return true;
		}

		what.value = "";
		what.focus();
		return false;
	}
</script>
<body>
  <div class="jp_tittle_main_wrapper">
        <div class="jp_tittle_img_overlay"></div>
        <div class="container">
            <div class="row">
                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                    <div class="jp_tittle_heading_wrapper">
                        <div class="jp_tittle_heading">
                            <h2>?????? ???????????????</h2>
                        </div>
                        <div class="jp_tittle_breadcrumb_main_wrapper">
                            <div class="jp_tittle_breadcrumb_wrapper">
                                <ul>
                                    <li><a href="#">Home</a></li>
                                    <li><a href="#">?????? ???????????????</a></li>
                                    <li>?????? ???????????????</li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

<!-- ???????????? -->
<div class="jp_listing_sidebar_main_wrapper">
		<div class="container">
			<div class="row">
				<div
					class="col-lg-3 col-md-3 col-sm-12 col-xs-12 hidden-sm hidden-xs">
					<div class="row">
						<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
							<div class="jp_rightside_job_categories_wrapper">
								<div class="jp_rightside_job_categories_heading">
									<h4 style="font-weight: bold">My Page</h4>
								</div>
								<div class="jp_rightside_job_categories_content">
									<div class="handyman_sec1_wrapper">
										<div class="content">
											<div class="box">
												<p>
													<a href="#">????????????</a>
												</p>
												<br>
												<br>
												<p>
													<a href="${ pageContext.servletContext.contextPath }/companyTestServlet">????????????</a>
												</p>
												<br>
												<br>

												<p>
													<a href="${ pageContext.servletContext.contextPath }/company/paymentHistory/select">????????????</a>
												</p>
												<br>
												<br>
												<p>
													<a href="${ pageContext.servletContext.contextPath }/company/refundHistory/select">????????????</a>
												</p>
												<br>
												<br>
												<p>
													<a href="${ pageContext.servletContext.contextPath }/company/jobPostingHistory/select">????????????</a>
												</p>
												<br>
												<br>
												<p>
													<a href="${ pageContext.servletContext.contextPath }/Company/Scout/List/Select">???????????? ??????</a>
												</p>
												<br>
												<br>
												<p>
													<a href="${ pageContext.servletContext.contextPath }/company/scout/wish/select">?????? ?????????</a>
												</p>
												<br>
												<br>
												<p>
													<a href="${ pageContext.servletContext.contextPath }/login/comember/withdrawal/yn">?????? ??????</a>
												</p>
												<br>
												<br>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<!-- body -->
				<div align="center" >
							<form action="${ pageContext.servletContext.contextPath }/company/resetpassword"method="post"
							 onSubmit="return checkValue2();">
					<div class="col-lg-9 col-md-9 col-sm-12 col-xs-12">
						<div class="row">
							<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
								<br>
							</div>
							<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
								<br>
								<br>
								<br>
							</div>
							<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
								<br>
								<br>
								<br>
							</div>
							<div style="font: bold">
								<h3>???????????? ??????</h3>
								<br> <br>
								<div align="center" >
								<input type="hidden" name="memId" value="${ requestScope.memId }">
								</div>
								<div style="font: bold">
									?????? ???????????? &nbsp; &nbsp; &nbsp; &nbsp; <input type="password"
										name="nowPwd" style="border-radius: 5px" placeholder="???????????? ??????">
								</div>
								<br>
								<br>
								<div style="font: bold" >
									??? ???????????? &nbsp; &nbsp; &nbsp; &nbsp; <input type="password"
										name="newPwd" style="border-radius: 5px"
										placeholder="???????????? ??????">
								</div>
								<br> <br>

								<div style="font: bold">
									???????????? ?????? &nbsp; &nbsp; <input type="password" value=""
										name="newPwdCheck" id="newPwdCheck" style="border-radius: 5px"
										placeholder="???????????? ??????">
								</div>
								<br> <br>
								<button class="btn btn-info" type="submit" style="margin: 10px">??????</button>
								<button class="btn btn-info" type="button" style="margin: 10px" onclick="history.back(-1);">??????</button>
								<br>
								<br>
								<br>
								<br>
							</div>
						</div>
					</div>
				</form>
				</div>
			</div>
		</div>
	</div>
<script>


</script>

</body>
</html>