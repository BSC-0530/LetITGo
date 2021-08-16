<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- 상단 검은색바탕 -->
	<div class="jp_tittle_main_wrapper">
		<div class="jp_tittle_img_overlay"></div>
		<div class="container">
			<div class="row">
				<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
					<div class="jp_tittle_heading_wrapper">
						<div class="jp_tittle_heading">
							<h2>상세 공고</h2>
						</div>
						<div class="jp_tittle_breadcrumb_main_wrapper">
							<div class="jp_tittle_breadcrumb_wrapper">
								<ul>
									<li><a href="#">Home</a> <i class="fa fa-angle-right"></i></li>
									<li><a href="#">기업 마이페이지</a> <i class="fa fa-angle-right"></i></li>
									<li>채용공고</li>
								</ul>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	
	<!-- 전체 묶음 -->
	<div class="jp_listing_sidebar_main_wrapper">
		<div class="container">
			<div class="row">
				<!-- 사이드바 -->
				<div class="col-lg-3 col-md-3 col-sm-12 col-xs-12 hidden-sm hidden-xs">
					<div class="row">
						<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
							<div class="jp_rightside_job_categories_wrapper">
								<div class="jp_rightside_job_categories_heading">
									<h4 style="font-weight: bold">공고관리</h4>
								</div>
								<div class="jp_rightside_job_categories_content">
									<div class="handyman_sec1_wrapper">
										<div class="content">
											<div class="box">
												<p align="center">
													<a href="#">회원정보</a>
												</p>
												<br> <br>
												<p align="center">
													<a href="${ pageContext.servletContext.contextPath }/companyTestServlet">기업정보</a>
												</p>
												<br> <br>
												<p align="center">
													<a href="#">결제내역</a>
												</p>
												<br> <br>
												<p align="center">
													<a href="#">환불내역</a>
												</p>
												<br> <br>
												<p align="center">
													<a href="#">공고관리</a>
												</p>
												<br> <br>
												<p align="center">
													<a href="#">스카우트 현황</a>
												</p>
												<br> <br>
												<p align="center">
													<a href="#">찜한 후보자</a>
												</p>
												<br> <br>
												<p align="center">
													<a href="#">회원 탈퇴</a>
												</p>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				
				<!-- 파란색 박스 -->
				
				<div class="col-lg-9 col-md-9 col-sm-12 col-xs-12">
					<div class="row">
						<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
							<div class="jp_counter_main_wrapper">
								<h1 align="left">채용공고 현황</h1><br>
								<div class="container">
									<div class="gc_counter_cont_wrapper" style="cursor:pointer;" onclick="location.href= '${ pageContext.servletContext.contextPath }/company/jobPostingHistory/select'">
										<div class="count-description">
											<span class="timer"><c:out value="${ requestScope.allJobPosting.size() }" /></span>
											<i class="fa"></i>
											<h5 class="con1">전체 공고</h5>
										</div>
									</div>
									<div class="gc_counter_cont_wrapper2" style="cursor:pointer;" onclick="select('승인된공고')">
										<div class="count-description">
											<span class="timer"><c:out value="${ requestScope.recruitingJopPosting.size() }" /></span>
											<i class="fa"></i>
											<h5 class="con2">진행중 공고</h5>
										</div>
									</div>
									<div class="gc_counter_cont_wrapper3" style="cursor:pointer;" onclick="select('승인대기중인공고')">
										<div class="count-description">
											<span class="timer"><c:out value="${ requestScope.requestJobPosting.size() }" /></span>
											<i class="fa"></i>
											<h5 class="con3">요청중 공고</h5>
										</div>
									</div>
								</div>
								<br> <br>
							</div>
						</div><br>
						
						<!-- 데이터 테이블 내역모음 -->
						<div>
						<c:if test="${ requestScope.kinds eq null }" >
						<h1>전체 공고</h1>
						</c:if>
						<c:if test="${ requestScope.kinds eq '승인된공고' }" >
						<h1>진행중 공고</h1>
						</c:if>
						<c:if test="${ requestScope.kinds eq '승인대기중인공고' }" >
						<h1>요청중 공고</h1>
						</c:if>
						</div>
						<br>
						<table id="table_myPosting" class="hover cell-border stripe">
							<thead>
								<tr align="center">
									<td>공고 번호</td>
									<td>공고 제목</td>
									<td>공고 상태</td>
									<td style="width:70px;">요구 경력</td>
									<td style="width:70px;">등록일자</td>
									<td style="width:50px;">마감일자</td>
									<td style="width:50px;">공고 수정 </td>
									<td style="width:50px;">지원자 확인</td>
									<td style="width:90px;">공고 노출권</td>
								</tr>
							</thead>
							
							<!-- requestScope에 담긴 kinds가 null일때 전체 조회된 공고를 보여줌 -->
							<c:if test="${ requestScope.kinds eq null }" >
								<c:forEach var="jobPosting"  items="${ requestScope.allJobPosting }">
								
								<tbody align="center">
									<tr>
										<td><c:out value="${ jobPosting.jobPostNo }"/></td>
										<td><c:out value="${ jobPosting.jobPostTitle }"/></td>
										
										<!-- 공고 상태에 따라 view에 다르게 표기 -->
										<td>
										<c:if test="${ jobPosting.jobPostKinds eq '승인된공고' }"><c:out value="채용중"/></c:if>
										<c:if test="${ jobPosting.jobPostKinds eq '승인대기중인공고' }"><c:out value="수정/등록 요청"/></c:if>
										<c:if test="${ jobPosting.jobPostKinds eq '마감된공고' }"><c:out value="마감"/></c:if>
										<c:if test="${ jobPosting.jobPostKinds eq '거절된공고' }"><c:out value="등록 거절"/></c:if>
										</td>
										<td><c:out value="${ jobPosting.jobPostMinExperience }" />년 ~ <c:out value="${ jobPosting.jobPostMaxExperience }" />년</td>								
										<td><c:out value="${ jobPosting.jobPostEnrollDate }" /></td>								
										<td><c:out value="${ jobPosting.jobPostDeadline }" /></td>			
										<td><button onclick="updateJobPosting(this);">수정</button></td>			
										<td><button>지원자</button></td>
										<c:if test="${ jobPosting.exposureUseCheck eq 'N' }">
										<td><button type="submit" onclick="req(this);">사용하기</button></td>
										</c:if>
										<c:if test="${ jobPosting.exposureUseCheck eq 'Y' }">
										<!-- 노출권 마감일자가 나와주면 좋을듯  -->
										<td>사용중</td>
										</c:if>
									</tr>
								</tbody>
								</c:forEach>
							</c:if>
						</table>
						<br>
						<button onclick="insertJobPosting();" class="btn btn-info" style=" float: right;" >공고 등록</button>
						
					</div>
				</div>
			</div>
			<br>
			<br>
		</div>
	</div>
	
	<script>
	$(document).ready(function() {
		$('#table_myPosting').DataTable();
	});
	
	
	function insertJobPosting() {
		alert("");
		
		location.href = "${ pageContext.servletContext.contextPath }/recruit/insert"
		
	}
	
	function updateJobPosting(button) {
		
		
		let jobPostNo = button.parentNode.parentNode.children[0].innerText;
		
		alert(jobPostNo);
		
		location.href = "${ pageContext.servletContext.contextPath }/recruit/update?jobPostNo=" + jobPostNo
		
	}
	
	
	
	</script>
</body>
</html>