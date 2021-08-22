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

<!--  이거 보고 하세용 ~  -->
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

<jsp:include page="../../common/header/companyHeader.jsp"/>
   <div class="jp_tittle_main_wrapper">
        <div class="jp_tittle_img_overlay"></div>
        <div class="container">
            <div class="row">
                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                    <div class="jp_tittle_heading_wrapper">
                        <div class="jp_tittle_heading">
                            <h2>회원탈퇴</h2>
                        </div>
                        <div class="jp_tittle_breadcrumb_main_wrapper">
                            <div class="jp_tittle_breadcrumb_wrapper">
                                <ul>
                                    <li><a href="${ pageContext.servletContext.contextPath }/mainPage/CoMember">Home</a></li>
                                    <li>></li>
                                    <li><a href="${ pageContext.servletContext.contextPath }/company/myPage/main">기업 마이페이지</a></li>
                                    <li>></li>
                                    <li>회원탈퇴</li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
<!-- 기업정보화면입니다. --><!-- 기업정보화면입니다. --><!-- 기업정보화면입니다. --><!-- 기업정보화면입니다. --><!-- 기업정보화면입니다. --><!-- 기업정보화면입니다. --><!-- 기업정보화면입니다. -->
<!-- 사이드바 -->
	<div class="jp_listing_sidebar_main_wrapper">
		<div class="container">
			<div class="row">
				<div
					class="col-lg-3 col-md-3 col-sm-12 col-xs-12 hidden-sm hidden-xs">
					<div class="row">
						<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
							<div class="jp_rightside_job_categories_wrapper">
								<div class="jp_rightside_job_categories_heading">
									<h4 style="font-weight : bold">기업정보</h4>
								</div>
								<div class="jp_rightside_job_categories_content">
									<div class="handyman_sec1_wrapper">
										<div class="content">
											<div class="box">
												<p>
													<a href="${ pageContext.servletContext.contextPath }/coMem/infomationServlet">회원정보</a>
												</p>
												<br><br>
												<p> 
													<a href="${ pageContext.servletContext.contextPath }/companyTestServlet">기업정보</a>
												</p>
												<br><br>
												<p>
													<a href="${ pageContext.servletContext.contextPath }/company/paymentHistory/select">결제내역</a>
												</p>
												<br><br>
												<p>
													<a href="${ pageContext.servletContext.contextPath }/company/refundHistory/select">환불내역</a>
												</p>
												<br><br>
												<p>

													<a href="${ pageContext.servletContext.contextPath }/company/jobPostingHistory/select">공고관리</a>
												</p>
												<br><br>
												<p>
													<a href="${ pageContext.servletContext.contextPath }/Company/Scout/List/Select">스카우트현황</a>
												</p>
												<br><br>
												<p>
													<a href="${ pageContext.servletContext.contextPath }/company/scout/wish/select">찜한후보자</a>
												</p>
												<br><br>
												<p>
													<a href="${ pageContext.servletContext.contextPath }/login/comember/withdrawal/yn">회원탈퇴</a>
												</p>
												<br><br>
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
				<div class="outer outer-comember-withdrawal-yn">
					<br>
					<h2 align="center">회원 탈퇴</h2>
					<br>
					<br>
					<div class="table-area">
						<form
							action="${ pageContext.servletContext.contextPath }/login/comember/withdrawal/yn"
							method="post">
							<div align="center">
								
								<p style="color:red">===== 탈퇴 시 주의 사항 =====</p>
								<p>등록된 공고가 있는 경우에는 탈퇴가 불가능합니다.</p>
								<p>기업 서비스에 등록되어 있는 계정일 경우, 기업 서비스 접속권한도 동시에 삭제됩니다.</p> 
								<p>유료 결제 서비스를 이용중인 회원은 탈퇴를 하게되면 이에 대하여 환불이 불가합니다.</p> 
								<p>회원 탈퇴 요청 시 취소가 불가능합니다.</p> 
								<p>그래도 탈퇴를 진행 하시겠습니까? </p>
								<p>이상의 내용에 동의하여 탈퇴를 원하실 경우, 아래의 “탈퇴하기” 버튼을 클릭 부탁드립니다.</p> 
								<br><br>
								
								<button type="button" onClick="history.go(-1)">취소하기</button>
								<button type="submit"
									onclick="href='${ pageContext.servletContext.contextPath }/let/loginPage'">탈퇴하기</button>
							</div>		
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>


	
	
	
	<script type="text/javascript">
		
		function coMemberWithdrawalYn(button) {
			
			confirm();
			
			const no = button.value;
			location.href = "${ pageContext.servletContext.contextPath }/login/comember/withdrawal/yn?memNo=" + memNo;
			
		}
		
		$("input").filter("[value='null']").val("");
		
	</script>
	
				
</body>
</html>
