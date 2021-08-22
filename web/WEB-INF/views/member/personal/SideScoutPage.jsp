<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script type="text/javascript" charset="utf8"
	src="https://cdn.datatables.net/1.10.25/js/jquery.dataTables.js"></script>
<link rel="stylesheet" type="text/css"
	href="https://cdn.datatables.net/1.10.25/css/jquery.dataTables.css">

</head>
<body>
	<jsp:include page="../../common/header/personalHeader.jsp" />

	<div class="jp_tittle_main_wrapper">
		<div class="jp_tittle_img_overlay"></div>
		<div class="container">
			<div class="row">
				<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
					<div class="jp_tittle_heading_wrapper">
						<div class="jp_tittle_heading">
							<h2>개인 마이페이지</h2>
						</div>
						<div class="jp_tittle_breadcrumb_main_wrapper">
							<div class="jp_tittle_breadcrumb_wrapper">
								<ul>
									<li><a href="${ pageContext.servletContext.contextPath }/mainPage/InMember">Home</a></li>
									<li>></li>
									<li><a href="${ pageContext.servletContext.contextPath }/personal/myPage/select">개인 마이페이지</a></li>
									<li>></li>
									<li>스카우트현황</li>
								</ul>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<div class="jp_listing_sidebar_main_wrapper">
		<div class="container">
			<div class="row">
				<div style="height: 1000px;"
					class="col-lg-3 col-md-3 col-sm-12 col-xs-12 hidden-sm hidden-xs">
					<div class="row">
						<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
							<div class="jp_rightside_job_categories_wrapper">
								<div class="jp_rightside_job_categories_heading">
									<h4 align="left" style="font-weight: bold">스카우트현황</h4>
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
														href="${ pageContext.servletContext.contextPath }/personal/apply/select">지원현황</a>
												</p>
												<br> <br>
												<p>
													<a
														href="${ pageContext.servletContext.contextPath }/scout/myPageList/servlet">스카우트현황</a>
												</p>
												<br> <br>
												<p>
													<a href="${ pageContext.servletContext.contextPath }/personal/bookmark/select">북마크</a>
												</p>
												<br> <br>
												<p>
													<a href="#">회원탈퇴</a>
												</p>
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
							<div class="jp_counter_main_wrapper">
								<h1 align="left">스카우트 현황</h1>
								<br>
								<div class="container">
									<div class="gc_counter_cont_wrapper">
										<div class="count-description">
											<span class="timer"><c:out value="${ simpleOpen }"></c:out></span>
											<h5 class="con1">얕은 열람</h5>
										</div>
									</div>
									<div class="gc_counter_cont_wrapper2">
										<div class="count-description">
											<span class="timer"><c:out value="${ deepOpen }"></c:out> </span>
											<h5 class="con2">깊은 열람</h5>
										</div>
									</div>
									<div class="gc_counter_cont_wrapper3">
										<div class="count-description">
											<span class="timer"><c:out value="${ scoutNum }"></c:out></span>
											<h5 class="con3">면접 제안</h5>
										</div>
									</div>
								</div>
								<br> <br>
							</div>
							<!-- 데이터 테이들 -->
							<h2>이력서 열람 이력</h2>
							<br>
							<br>
						</div>
						<table id="table_personal_scout" class="hover cell-border stripe">
							<thead>
								<tr>
									<td>기업이름</td>
									<td>지역</td>
									<td>업태</td>
									<td>구분</td>
									<td>상세보기</td>
								</tr>
							</thead>
							<c:forEach var="list" items="${ readList }">
								<tbody align="center">
									<tr>
										<td><c:out value="${ list.coComName }"></c:out></td>
										<td><c:out value="${ list.address }"></c:out></td>
										<td><c:out value="${ list.coStatus }"></c:out></td>
										<td><c:out value="${ list.resumeBrowseKinds }"></c:out>
										</td>
										<td><button type="button" onclick="browse(this);">상세보기</button>
											
									</tr>
								</tbody>
							</c:forEach>
						</table>
						<br><br>
						<h2>면접 제안</h2><br><br>
						<table id="table_personal_interview" class="hover cell-border stripe">
							<thead>
								<tr>
									<th>기업이름</th>
									<th>지역</th>
									<th>업태</th>
									<th>구분</th>
									<th>상세보기</th>
								</tr>
							</thead>
							<c:forEach var="list" items="${ readList }">
								<tbody align="center">
									<tr>
										<td><c:out value="${ list.coComName }"></c:out></td>
										<td><c:out value="${ list.address }"></c:out></td>
										<td><c:out value="${ list.coStatus }"></c:out></td>
										<td><c:out value="${ list.scoutKinds }"></c:out></td>
										<td>
											<input  id="returnCoMemNo" value="${ list.coMemNo }">	
											<c:choose>
												<c:when test="${ list.scoutKinds eq '대기'}">
													<button type="button" id="selectedYN" value="${ list.resumeNo }" onclick="acceptInterview(this);">수락</button>
													
													<button type="button" id="selectedYN" value="${ list.resumeNo }" onclick="refuseInterview(this);">
														거절
													</button>											
												</c:when>
												<c:otherwise>
													<button type="button" value="${ list.resumeNo }" onclick="acceptInterview(this);" disabled>수락</button>
													
													<button type="button" value="${ list.resumeNo }" onclick="refuseInterview(this);" disabled>거절</button>	
												</c:otherwise>
											</c:choose>
										</td>
									</tr>
								</tbody>
							</c:forEach>
						</table>

					</div>
				</div>

			</div>
		</div>
	</div>

	<jsp:include page="../../common/footer.jsp" />

	<script>
		$(document).ready(function() {
			$('#table_personal_scout').DataTable();
		});

		$(document).ready(function() {
			$('#table_personal_interview').DataTable();
		});
		
		function acceptInterview(button) {
			var answer;
			answer = confirm('면접 제안을 수락하시겠습니까? \n (면접 취소는 불가능하니 신중하게 결정하세요.)');
			const coMemNo = document.getElementById("returnCoMemNo").value;
			
			if(answer == true) {
				const btn = document.getElementById("selectedYN");
				const resumeNo = btn.value;
				const selectedYN = 'Y';
				document.getElementById("selectedYN").disabled = true;
				location.href = "${ pageContext.servletContext.contextPath }/personal/scout/response?selectedYN="
						+ selectedYN + "&resumeNo=" + resumeNo + "&coMemNo=" + coMemNo;
			}
		}
		
		function refuseInterview(button) {
			var answer;
			answer = confirm('면접 제안을 거절하시겠습니까? \n (면접 거절 취소는 불가능하니 신중하게 결정하세요.)');
			
			if(answer == true) {
				const btn = document.getElementById("selectedYN");
				const resumeNo = btn.value;
				const selectedYN = 'N';
				const coMemNo = document.getElementById("coMemNo");
				document.getElementById("selectedYN").disabled = true;
				location.href = encodeURI("${ pageContext.servletContext.contextPath }/personal/scout/response?selecteYN="
						+ selectedYN + "&resumeNo=" + resumeNo + "&coMemNo=" + coMemNo);
			}
		}


	</script>


</body>
</html>