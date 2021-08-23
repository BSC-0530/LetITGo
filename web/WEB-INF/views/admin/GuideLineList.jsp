<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Let IT Go admin</title>
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

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script type="text/javascript" src="/let/resources/js/datatables.js"></script>
<link rel="stylesheet" type="text/css" href="/let/resources/css/datatables.css" />

<!-- letitgo 제작 css -->
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

<div class="gc_main_menu_wrapper">
            <div class="jp_top_header_right_cont">
                <ul>
                    <li><a href="#" align="center" style="background:red; margin-right: 30px; border-radius: 10px; width:100px">로그아웃</a></li>
                </ul>
            </div>
            <div class="container-fluid">
                <div class="row">
                    <div class="col-lg-2 col-md-2 col-sm-12 col-xs-12 hidden-xs hidden-sm full_width">
                        <div class="gc_header_wrapper">
                            <div class="gc_logo">
                                <a href="${ pageContext.servletContext.contextPath }/mainPage"><img src="${ pageContext.servletContext.contextPath }/resources/image/로고.PNG" class="img-responsive"></a>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-8 col-md-8 col-sm-12 col-xs-12 full_width">
                        <div class="header-area hidden-menu-bar stick" id="sticker">
                            <div class="mainmenu">
                                 <ul class="float_left">
                                 	<li class="has-mega gc_main_navigation">
                                    	<a href="${ pageContext.servletContext.contextPath }/detail/browse/select" class="gc_main_navigation" class="gc_main_navigation">봉석</a>
                                    </li>
                                 	<li class="has-mega gc_main_navigation">
                                    	<a href="${ pageContext.servletContext.contextPath }/regist/member" class="gc_main_navigation" class="gc_main_navigation">승수</a>
                                    </li>
                                 	<li class="has-mega gc_main_navigation">
                                    	<a href="${ pageContext.servletContext.contextPath }/productList/select" id="paymentMainPage" class="gc_main_navigation" class="gc_main_navigation">현수</a>
                                    </li>
                                 	<li class="has-mega gc_main_navigation">
                                    	<a href="${ pageContext.servletContext.contextPath }/companyTestServlet" class="gc_main_navigation" class="gc_main_navigation">본근</a>
                                    </li>
                                 	<li class="has-mega gc_main_navigation">
                                    	<a href="${ pageContext.servletContext.contextPath }/admin/mainPage" class="gc_main_navigation" class="gc_main_navigation">태훈</a>
                                    </li>
                                    <li class="has-mega gc_main_navigation">
										<%-- <a href="${ pageContext.servletContext.contextPath }/personal/memberInfo/select" class="gc_main_navigation" class="gc_main_navigation">동기</a> --%>
                                    	<a href="${ pageContext.servletContext.contextPath }/member/allJobPosting/select" class="gc_main_navigation" class="gc_main_navigation">동기</a>
                                    </li>                                    
                                </ul>
                            </div>
						</div>
					</div>
				</div>
			</div>
		</div>

<!-- 상단 검은색 -->
   <div class="jp_tittle_main_wrapper">
        <div class="jp_tittle_img_overlay"></div>
        <div class="container">
            <div class="row">
                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                    <div class="jp_tittle_heading_wrapper">
                        <div class="jp_tittle_heading">
                            <h2>개인정보 처리 방침 및 이용약관</h2>
                        </div>
                        <div class="jp_tittle_breadcrumb_main_wrapper">
                            <div class="jp_tittle_breadcrumb_wrapper">
                                <ul>
                                    <li><a href="#">Home</a></li>
                                    <li><a href="#">개인정보 처리 방침 및 이용약관</a></li>
                                 </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

<!-- 사이드바 -->
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
														href="${ pageContext.servletContext.contextPath }/personalMyInfo">회원정보</a>
												</p>
												<br> <br>
												<p>
													<a
														href="${ pageContext.servletContext.contextPath }/personal/apply/select">지원
														현황</a>
												</p>
												<br> <br>
												<p>
													<a
														href="${ pageContext.servletContext.contextPath }/scout/myPageList/servlet">스카우트현황</a>
												</p>
												<br> <br>
												<p>
													<a href="${ pageContext.servletContext.contextPath }">회원탈퇴</a>
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

				<!-- 옆에 넣으려면 여기에 넣어야함 -->
				<!--   				111~114번이 있어야 사이드바 옆에 내용이 입력됨       -->
				<br>
				<br>
				<br>
				<div class="col-lg-9 col-md-9 col-sm-9 col-xs-12">
					<div class="row">
						<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
							<h1>개인정보 처리 방침 및 이용약관</h1>
							<div class="jp_listing_tabs_wrapper">

								<!-- 이거는 이제 정보뜨는 칸 -->
								<!-- 데이터 테이블 내역모음 -->
								<table id="guide_line" class="hover cell-border stripe">
									<thead>
										<tr>
											<td align="center">번호</td>
											<td align="center">제목</td>
				<!-- 상세보기 버튼 만들기 -->		<td align="center">상세보기</td>
											<td align="center">등록일자</td>
											<td align="center">분류</td>
										</tr>
									</thead>
										<tbody align="center">
									<c:forEach var="controllGuideLine"
										items="${ requestScope.guideLineList }">


											<tr>
												<td id="postNo"><c:out value="${ controllGuideLine.postNo }" /></td>
												<td id="postTitle"><c:out value="${ controllGuideLine.postTitle }" /></td>
 	<!-- onClick 안에 상세보기 인터페이스 메소드명 넣어주기 -->	<td><button class="btn-info" onClick="detail(this);" value="${ controllGuideLine.postNo }">상세보기</button></td> 
												<td id="postRegistrationDate"><c:out value="${ controllGuideLine.postRegistrationDate }" /></td>
												<td id="postKinds"><c:out value="${ controllGuideLine.postKinds }" /></td>
											</tr>
									</c:forEach>
										</tbody>

								</table>
								<br>
								<br>
								
							</div>
						</div>
					</div>
					<br>
					<!-- end -->
				</div>
			</div>
		</div>
	</div>

	<script>
		$(document).ready(function() {
			$('#guide_line').DataTable();
		});
	</script>
	
	<script>
	//상세보기 버튼
	function detail(button){			/* 경로 변경해줘야함 (디테일뷰쪽으로) */
		
		const postNo = button.value; 
	
		location.href="${ pageContext.servletContext.contextPath }/guideline/detail?postNo="+postNo
			
	}	
	</script>

</body>
</html>








