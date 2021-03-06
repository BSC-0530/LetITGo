<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
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

<link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.25/css/jquery.dataTables.css">
  
<script type="text/javascript" charset="utf8" src="https://cdn.datatables.net/1.10.25/js/jquery.dataTables.js"></script>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script type="text/javascript" charset="utf8" src="https://cdn.datatables.net/1.10.25/js/jquery.dataTables.js"></script>
<link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.25/css/jquery.dataTables.css">

<!-- letitgo ?????? css -->
<link rel="stylesheet" type="text/css" href="${ pageContext.servletContext.contextPath }/resources/css/letitgo/letitgo.css"/>

<style>
	.h4 {
		font-weight: bold;
	}
	td {
		width: 400px;
	}
</style>

</head>

<body>

<div style="background:white;" class="gc_main_menu_wrapper">
            <div class="jp_navi_right_btn_wrapper">
							<ul>
							
								<li><a href="${ pageContext.servletContext.contextPath }/member/logout">LOG OUT</a></li>
							</ul>
						</div>
            <div  class="container-fluid">
                <div class="row">
                    <div class="col-lg-2 col-md-2 col-sm-12 col-xs-12 hidden-xs hidden-sm full_width">
                        <div class="gc_header_wrapper">
                            <div class="gc_logo">
                                <a href="${ pageContext.servletContext.contextPath }/mainPage/InMember"><img src="${ pageContext.servletContext.contextPath }/resources/image/??????.PNG" class="img-responsive"></a>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-8 col-md-8 col-sm-12 col-xs-12 full_width">
                        <div class="header-area hidden-menu-bar stick" id="sticker">
                            <div class="mainmenu">
                                 <ul class="float_left">
                                 	<li class="has-mega gc_main_navigation">
                                    	<a href="${ pageContext.servletContext.contextPath }/personal/myPage/select" class="gc_main_navigation" class="gc_main_navigation">???????????????</a>
                                    </li>
                                 	<li class="has-mega gc_main_navigation">
                                    	<a href="${ pageContext.servletContext.contextPath }/member/allJobPosting/select" class="gc_main_navigation">????????????</a>
                                    </li>
                                 	<li class="has-mega gc_main_navigation">
                                    	<a href="${ pageContext.servletContext.contextPath }/scout/personal/insert" class="gc_main_navigation" class="gc_main_navigation">????????????</a>
                                    </li>
                                 	<li class="has-mega gc_main_navigation">
                                    	<a href="${ pageContext.servletContext.contextPath }/resume/list" class="gc_main_navigation" class="gc_main_navigation">?????????</a>
                                    </li>
                                 	<li class="has-mega gc_main_navigation">
                                    	<a href="${ pageContext.servletContext.contextPath }/request/inquiry/servlet" class="gc_main_navigation" class="gc_main_navigation">1:1??????</a>
                                    </li>
                                </ul>
                            </div>
						</div>
					</div>
				</div>
			</div>
		</div>

<div class="jp_tittle_main_wrapper">
        <div class="jp_tittle_img_overlay"></div>
        <div class="container">
            <div class="row">
                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                    <div class="jp_tittle_heading_wrapper">
                        <div class="jp_tittle_heading">
                            <h2>????????????</h2>
                        </div>
                        <div class="jp_tittle_breadcrumb_main_wrapper">
                            <div class="jp_tittle_breadcrumb_wrapper">
                                <ul>
                                    <li><a href="${ pageContext.servletContext.contextPath }/mainPage/InMember">Home</a></li>
									<li>></li>
									<li><a href="${ pageContext.servletContext.contextPath }/personal/myPage/select" >?????? ???????????????</a></li>
									<li>></li>
									<li>????????????</li>
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
				<div style="height: 1000px;"
					class="col-lg-3 col-md-3 col-sm-12 col-xs-12 hidden-sm hidden-xs">
					<div class="row">
						<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
							<div class="jp_rightside_job_categories_wrapper">
								<div class="jp_rightside_job_categories_heading">
									<h4 align="left" style="font-weight: bold">My Page</h4>
								</div>
								<div class="jp_rightside_job_categories_content">
									<div class="handyman_sec1_wrapper">
										<div class="content">
											<div class="box">
												<p>
													<a
														href="${ pageContext.servletContext.contextPath }/personalMyInfo">????????????</a>
												</p>
												<br> <br>
												<p>
													<a
														href="${ pageContext.servletContext.contextPath }/personal/apply/select">??????
														??????</a>
												</p>
												<br> <br>
												<p>
													<a
														href="${ pageContext.servletContext.contextPath }/scout/myPageList/servlet">??????????????????</a>
												</p>
												<br> <br>
												<p><a href="${ pageContext.servletContext.contextPath }/personal/bookmark/select">?????????</a></p>
												<br> <br>
												
												<p>
													<a href="${ pageContext.servletContext.contextPath }">????????????</a>
												</p>
												<br> <br>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				
				<br>
				<br>
				<br>
				
				<div class="outer outer-member-withdrawal-yn">
					<br>
					<h2 align="center">?????? ??????</h2>
					<br>
					<br>
					<div class="table-area">
						<form
							action="${ pageContext.servletContext.contextPath }/login/member/withdrawal/yn"
							method="post">
							<div align="center">
							
								<p style="color:red">===== ?????? ??? ?????? ?????? =====</p>
								<p>?????? ??? ???????????? ???????????? ???????????? ???????????? ????????? ????????? ?????? ????????? ??????????????? ????????????, ????????? ????????? ??? ????????????.</p>
								<p>???????????? ????????? ????????? ??????, ?????? ????????? ????????? ?????? ??????????????? ???????????? ????????????.</p>
								<p>????????? ???????????? ???????????? ???????????? ????????? ????????? ??????, ?????? ????????? ?????? ???????????????</p>
								<p>???????????? ???????????? ??????, ?????? ?????? ????????????.</p>
								<p>????????? ?????? ?????? ????????? ????????? ???????????? ????????? ??????, ????????? ?????? ?????? ????????? ?????? ????????? ????????????</p>
								<p>?????? ??? ?????? 6?????? ??? ???????????????.</p>
								<p>????????? ????????? ???????????? ????????? ????????? ??????, ????????? ?????????????????? ????????? ?????? ??????????????????.</p>
								<br><br>

								<button type="button" onClick="history.go(-1)">????????????</button>
								<button type="submit"
									onclick="href='${ pageContext.servletContext.contextPath }/let/loginPage'">????????????</button>
							</div>		
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>


	
	
	
	<script type="text/javascript">
		
		function memberWithdrawalYn(button) {
			
			confirm();
			
			const no = button.value;
			location.href = "${ pageContext.servletContext.contextPath }/login/member/withdrawal/yn?memNo=" + memNo;
			
		}
		
		$("input").filter("[value='null']").val("");
		
	</script>
	
				
</body>
</html>






