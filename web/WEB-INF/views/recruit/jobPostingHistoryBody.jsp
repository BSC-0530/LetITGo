<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Let IT Go</title>
</head>
<body>
	<div class="jp_tittle_main_wrapper">
		<div class="jp_tittle_img_overlay"></div>
		<div class="container">
			<div class="row">
				<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
					<div class="jp_tittle_heading_wrapper">
						<div class="jp_tittle_heading">
							<h2>공고관리</h2>
						</div>
						<div class="jp_tittle_breadcrumb_main_wrapper">
							<div class="jp_tittle_breadcrumb_wrapper">
								<ul>
									<li><a
										href="${ pageContext.servletContext.contextPath }/mainPage/CoMember">Home</a></li>
									<li>></li>
									<li><a href="${ pageContext.servletContext.contextPath }/company/myPage/main">기업 마이페이지</a></li>
									<li>></li>
									<li>공고관리</li>
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
												<p>
													<a href="${ pageContext.servletContext.contextPath }/coMem/infomationServlet">회원정보</a>
												</p>
												<br> <br>
												<p>
													<a
														href="${ pageContext.servletContext.contextPath }/companyTestServlet">기업정보</a>
												</p>
												<br> <br>
												<p>
													<a
														href="${ pageContext.servletContext.contextPath }/company/paymentHistory/select">결제내역</a>
												</p>
												<br> <br>
												<p>
													<a
														href="${ pageContext.servletContext.contextPath }/company/refundHistory/select">환불내역</a>
												</p>
												<br> <br>
												<p>
													<a
														href="${ pageContext.servletContext.contextPath }/company/jobPostingHistory/select">공고관리</a>
												</p>
												<br> <br>
												<p>
													<a
														href="${ pageContext.servletContext.contextPath }/Company/Scout/List/Select">스카우트현황</a>
												</p>
												<br> <br>
												<p>
													<a href="${ pageContext.servletContext.contextPath }/company/scout/wish/select">찜한후보자</a>
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
									<div class="gc_counter_cont_wrapper2" style="cursor:pointer;" onclick="location.href= '${ pageContext.servletContext.contextPath }/company/jobPostingHistory/select?kinds=승인된공고'">
										<div class="count-description">
											<span class="timer"><c:out value="${ requestScope.recruitingJopPosting.size() }" /></span>
											<i class="fa"></i>
											<h5 class="con2">진행중 공고</h5>
										</div>
									</div>
									<div class="gc_counter_cont_wrapper3" style="cursor:pointer;" onclick="location.href= '${ pageContext.servletContext.contextPath }/company/jobPostingHistory/select?kinds=승인대기중인공고'">
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
									<th>공고 제목</th>
									<th>공고 상태</th>
									<th style="width:50px;">요구 경력</th>
									<th style="width:50px;">등록일자</th>
									<th style="width:50px;">마감일자</th>
									<th style="width:50px;">공고 수정 </th>
									<th style="width:50px;">지원자 확인</th>
									<th style="width:50px;">공고 노출권</th>
								</tr>
							</thead>
							<!-- requestScope에 담긴 kinds가 null일때 전체 조회된 공고를 보여줌 -->
							<c:if test="${ requestScope.kinds eq null }" >
								
								<tbody align="center">
								<c:forEach var="jobPosting" items="${ requestScope.allJobPosting }">
									<tr>
										<td>
											<input type="hidden" value="${ jobPosting.jobPostNo }">
											<c:out value="${ jobPosting.jobPostTitle }"/>
										</td>
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
											
										<td>
											<c:choose>
												<c:when test="${ jobPosting.jobPostKinds eq '승인된공고'}">
													<button class="btn btn-info" onclick="updateJobPosting(this);">수정</button>
												</c:when>
												<c:when test="${ jobPosting.jobPostKinds eq '승인대기중인공고'}">
													요청중
												</c:when>
												<c:when test="${ jobPosting.jobPostKinds eq '마감된공고'}">
													마감
												</c:when>
												<c:otherwise>
													거절된공고
												</c:otherwise>
											</c:choose>
										</td>			
										<td>
											<c:choose>
												<c:when test="${ jobPosting.jobPostKinds eq '승인된공고'}">
													<button class="btn btn-info" onclick="selectApplicant(this);">지원자</button>
												</c:when>
												<c:when test="${ jobPosting.jobPostKinds eq '승인대기중인공고'}">
													요청중
												</c:when>
												<c:when test="${ jobPosting.jobPostKinds eq '마감된공고'}">
													마감
												</c:when>
												<c:otherwise>
													거절된공고
												</c:otherwise>
											</c:choose>
										</td>
										<td>
											<c:choose>
												<c:when test="${ jobPosting.jobPostKinds eq '승인된공고'}">
													<c:if test="${ jobPosting.exposureEndDate eq null }">
														<c:choose>
															<c:when test="${ jobPosting.jobPostKinds eq '마감된공고' }">
																마감된공고
															</c:when>
															<c:otherwise>
																<button class="btn btn-info" type="submit" onclick="useExposure(this);">사용</button>
															</c:otherwise>
														</c:choose>
													</c:if>
													<c:if test="${ jobPosting.exposureEndDate ne null }">
														<c:choose>
															<c:when test="${ jobPosting.jobPostKinds eq '마감된공고' }">
																마감된공고
															</c:when>
															<c:otherwise>
																<c:out value="~${ jobPosting.exposureEndDate }"/>
															</c:otherwise>
														</c:choose>
													</c:if>
												</c:when>
												<c:when test="${ jobPosting.jobPostKinds eq '승인대기중인공고'}">
													요청중
												</c:when>
												<c:when test="${ jobPosting.jobPostKinds eq '마감된공고'}">
													마감
												</c:when>
												<c:otherwise>
													거절된공고
												</c:otherwise>
											</c:choose>
										</td>
									</tr>
								</c:forEach>
								</tbody>
							</c:if>
							
							<!-- request영역에 담긴 kinds가 '승인된공고'일때 승인된 공고 화면에 출력 -->
							<c:if test="${ requestScope.kinds eq '승인된공고' }" >
								
								<tbody align="center">
								<c:forEach var="jobPosting"  items="${ requestScope.recruitingJopPosting }">
									<tr>
										<td>
											<input type="hidden" value="${ jobPosting.jobPostNo }">
											<c:out value="${ jobPosting.jobPostTitle }"/>
										</td>
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
										<td>
											<c:choose>
												<c:when test="${ jobPosting.jobPostKinds eq '승인된공고'}">
													<button class="btn btn-info" onclick="updateJobPosting(this);">수정</button>
												</c:when>
												<c:when test="${ jobPosting.jobPostKinds eq '승인대기중인공고'}">
													요청중
												</c:when>
												<c:when test="${ jobPosting.jobPostKinds eq '마감된공고'}">
													마감
												</c:when>
												<c:otherwise>
													거절된공고
												</c:otherwise>
											</c:choose>
										</td>			
										<td>
											<c:choose>
												<c:when test="${ jobPosting.jobPostKinds eq '승인된공고'}">
													<button class="btn btn-info" onclick="selectApplicant(this);">지원자</button>
												</c:when>
												<c:when test="${ jobPosting.jobPostKinds eq '승인대기중인공고'}">
													요청중
												</c:when>
												<c:when test="${ jobPosting.jobPostKinds eq '마감된공고'}">
													마감
												</c:when>
												<c:otherwise>
													거절된공고
												</c:otherwise>
											</c:choose>
										</td>
										<td>
											<c:choose>
												<c:when test="${ jobPosting.jobPostKinds eq '승인된공고'}">
													<c:if test="${ jobPosting.exposureEndDate eq null }">
														<c:choose>
															<c:when test="${ jobPosting.jobPostKinds eq '마감된공고' }">
																마감된공고
															</c:when>
															<c:otherwise>
																<button class="btn btn-info" type="submit" onclick="useExposure(this);">사용</button>
															</c:otherwise>
														</c:choose>
													</c:if>
													<c:if test="${ jobPosting.exposureEndDate ne null }">
														<c:choose>
															<c:when test="${ jobPosting.jobPostKinds eq '마감된공고' }">
																마감된공고
															</c:when>
															<c:otherwise>
																<c:out value="~${ jobPosting.exposureEndDate }"/>
															</c:otherwise>
														</c:choose>
													</c:if>
												</c:when>
												<c:when test="${ jobPosting.jobPostKinds eq '승인대기중인공고'}">
													요청중
												</c:when>
												<c:when test="${ jobPosting.jobPostKinds eq '마감된공고'}">
													마감
												</c:when>
												<c:otherwise>
													거절된공고
												</c:otherwise>
											</c:choose>
										</td>
									</tr>
								</c:forEach>
								</tbody>
							</c:if>
							<!-- request영역에 담긴 kinds가 '승인대기중인공고'일때 승인된 공고 화면에 출력 -->
							<c:if test="${ requestScope.kinds eq '승인대기중인공고' }" >
								
								<tbody align="center">
								<c:forEach var="jobPosting"  items="${ requestScope.requestJobPosting }">
									<tr>
										<td>
											<input type="hidden" value="${ jobPosting.jobPostNo }">
											<c:out value="${ jobPosting.jobPostTitle }"/>
										</td>
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
										<td>
											<c:choose>
												<c:when test="${ jobPosting.jobPostKinds eq '승인된공고'}">
													<button class="btn btn-info" onclick="updateJobPosting(this);">수정</button>
												</c:when>
												<c:when test="${ jobPosting.jobPostKinds eq '승인대기중인공고'}">
													요청중
												</c:when>
												<c:when test="${ jobPosting.jobPostKinds eq '마감된공고'}">
													마감
												</c:when>
												<c:otherwise>
													거절된공고
												</c:otherwise>
											</c:choose>
										</td>			
										<td>
											<c:choose>
												<c:when test="${ jobPosting.jobPostKinds eq '승인된공고'}">
													<button class="btn btn-info" onclick="selectApplicant(this);">지원자</button>
												</c:when>
												<c:when test="${ jobPosting.jobPostKinds eq '승인대기중인공고'}">
													요청중
												</c:when>
												<c:when test="${ jobPosting.jobPostKinds eq '마감된공고'}">
													마감
												</c:when>
												<c:otherwise>
													거절된공고
												</c:otherwise>
											</c:choose>
										</td>
										<td>
											<c:choose>
												<c:when test="${ jobPosting.jobPostKinds eq '승인된공고'}">
													<c:if test="${ jobPosting.exposureEndDate eq null }">
														<c:choose>
															<c:when test="${ jobPosting.jobPostKinds eq '마감된공고' }">
																마감된공고
															</c:when>
															<c:otherwise>
																<button class="btn btn-info" type="submit" onclick="useExposure(this);">사용</button>
															</c:otherwise>
														</c:choose>
													</c:if>
													<c:if test="${ jobPosting.exposureEndDate ne null }">
														<c:choose>
															<c:when test="${ jobPosting.jobPostKinds eq '마감된공고' }">
																마감된공고
															</c:when>
															<c:otherwise>
																<c:out value="~${ jobPosting.exposureEndDate }"/>
															</c:otherwise>
														</c:choose>
													</c:if>
												</c:when>
												<c:when test="${ jobPosting.jobPostKinds eq '승인대기중인공고'}">
													요청중
												</c:when>
												<c:when test="${ jobPosting.jobPostKinds eq '마감된공고'}">
													마감
												</c:when>
												<c:otherwise>
													거절된공고
												</c:otherwise>
											</c:choose>
										</td>
									</tr>
								</c:forEach>
								</tbody>
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
		
		location.href = "${ pageContext.servletContext.contextPath }/recruit/insert"
		
	}
	
	function updateJobPosting(button) {
		
		
		let jobPostNo = button.parentNode.parentNode.children[0].children[0].value;
		
		location.href = "${ pageContext.servletContext.contextPath }/recruit/update?jobPostNo=" + jobPostNo
		
	}
	
	function selectApplicant(button) {
		
		let jobPostNo = button.parentNode.parentNode.children[0].children[0].value;
		
		location.href = "${ pageContext.servletContext.contextPath }/applicant/select?jobPostNo=" + jobPostNo

	}
	
	function useExposure(button) {
		
		let jobPostNo = button.parentNode.parentNode.children[0].children[0].value;
		 
		var path = "${ pageContext.servletContext.contextPath }/exposureForuse/select?jobPostNo="+ jobPostNo;
		 
		window.open( path , "이력서 선택", "width=400, height=700, toolbar=no, menubar=no, scrollbars=no, resizable=yes");

	}
	</script>
</body>
</html>