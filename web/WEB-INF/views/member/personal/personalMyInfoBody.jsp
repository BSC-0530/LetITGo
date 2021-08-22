<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<!-- letitgo 제작 css -->
<link rel="stylesheet" type="text/css"
	href="${ pageContext.servletContext.contextPath }/resources/css/letitgo/letitgo.css" />
</head>
<body>
	<!-- 상단 검은색 -->
	<div class="jp_tittle_main_wrapper">
		<div class="jp_tittle_img_overlay"></div>
		<div class="container">
			<div class="row">
				<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
					<div class="jp_tittle_heading_wrapper">
						<div class="jp_tittle_heading">
							<h2>회원정보</h2>
						</div>
						<div class="jp_tittle_breadcrumb_main_wrapper">
							<div class="jp_tittle_breadcrumb_wrapper">
								<ul>
									<li><a href="${ pageContext.servletContext.contextPath }/mainPage/InMember">Home</a></li>
									<li>></li>
									<li><a href="${ pageContext.servletContext.contextPath }/personal/myPage/select" >개인 마이페이지</a></li>
									<li>></li>
									<li>회원정보</li>
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
				<div class="col-lg-3 col-md-3 col-sm-12 col-xs-12 hidden-sm hidden-xs">
					<div class="row">
						<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
							<div class="jp_rightside_job_categories_wrapper">
								<div class="jp_rightside_job_categories_heading">
									<h4 style="font-weight: bold">회원정보</h4>
								</div>
								<div class="jp_rightside_job_categories_content">
									<div class="handyman_sec1_wrapper">
										<div class="content">
											<div class="box">
												<p><a href="${ pageContext.servletContext.contextPath }/personalMyInfo">회원정보</a></p>
												<br> <br>
												<p><a href="${ pageContext.servletContext.contextPath }/personal/apply/select">지원현황</a></p>
												<br> <br>
												<p><a href="${ pageContext.servletContext.contextPath }/scout/myPageList/servlet">스카우트현황</a></p>
												<br> <br>
												<p><a href="${ pageContext.servletContext.contextPath }/personal/bookmark/select">북마크</a></p>
												<br> <br>
												<p><a href="${ pageContext.servletContext.contextPath }">회원탈퇴</a></p>
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
				<div class="col-lg-9 col-md-9 col-sm-12 col-xs-12">
					<div class="row">
						<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
							<div class="jp_listing_tabs_wrapper">
								<label style="font-size:30px;">개인회원 정보</label><br>
								<img alt="대표이미지없음" src="/let/resources/image/bmw.png" style="width: 300px; height:300px">
														<!--                             이거는 이제 정보뜨는 칸 -->
								<div class="tab-pane fade in active register_left_form"id="contentOne-1">

									<div class="jp_regiter_top_heading">
									</div>
									<div class="row">
										<!--Form Group-->
										<div class="form-group col-md-6 col-sm-6 col-xs-12">
											<input type="text" name="id" value="${ sessionScope.loginMember.memId }" placeholder="아이디" readonly>
										</div>
										<div class="form-group col-md-6 col-sm-6 col-xs-12">
											<input type="text" name="" value="${ sessionScope.loginMember.memEmail }" placeholder="이메일" readonly>
										</div>
										<div class="form-group col-md-6 col-sm-6 col-xs-12">
											<input type="text" name="" value="${ sessionScope.loginMember.memName }" placeholder="이름" readonly>
										</div>
										<div class="form-group col-md-6 col-sm-6 col-xs-12">
											<input type="text" name="" value="${ sessionScope.loginMember.memPhone }" placeholder="phone" readonly>
										</div>
									</div>
								</div>
								<div class="jp_listing_tabs_wrapper">
									<label style="font-size:30px;">열람제한기업</label><br>
									<c:if test="${requestScope.restrictedCompany eq null }">
									<label>등록된 열람제한 기업이 없습니다. 회원 정보 변경을 통해서 등록이 가능합니다.</label>
									</c:if>
									<c:if test="${requestScope.restrictedCompany ne null }">
									<c:forEach var="restricedComapny" items="${ requestScope.restricedCompany }">
									<c:out value="d${ restricedComapny.coComName }"></c:out>
									</c:forEach>
									</c:if>
								</div>
							</div>
						</div>
						<br>
						
						<button type="button" onclick="infoChange();" class="btn btn-info" id="coInfoChange" style="float: right;">회원 정보 변경</button>
						<input type="hidden" id="memNo" value="${ sessionScope.loginMember.memNo }">
					</div>
				</div>
			</div>
		</div>
	</div>
<script>
	function infoChange() {
		var memNo = document.getElementById("memNo").value;
		
		location.href ="${ pageContext.servletContext.contextPath }/member/personal/modifyinfo?memNo=" + memNo;
		
	}
	
	function restrictedCompany() {
		
		alert("");
		
	}

</script>
</body>
</html>