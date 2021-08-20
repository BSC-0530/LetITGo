<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>



<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>

<style type="text/css">
	label {
		cursor:pointer
	}
</style>
</head>
<body>

	
	<!-- jp listing sidebar Wrapper Start -->
	<!-- 상단 검은색 -->
	<div class="jp_tittle_main_wrapper">
		<div class="jp_tittle_img_overlay"></div>
		<div class="container">
			<div class="row">
				<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
					<div class="jp_tittle_heading_wrapper">
						<div class="jp_tittle_heading">
							<h2>채용공고</h2>
						</div>
						<div class="jp_tittle_breadcrumb_main_wrapper">
							<div class="jp_tittle_breadcrumb_wrapper">
								<ul>
									<li><a href="#">Home</a> <i class="fa fa-angle-right"></i></li>
									<li>채용공고</li>
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
			<form  id="insertJobPostingForm" action="${ pageContext.servletContext.contextPath }/member/allJobPosting/select" method="post">
				<div class="row">
					<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
						<div class="jp_listing_heading_wrapper">
							<h2>
								We found <span><c:out value="${ requestScope.totalCount }"></c:out></span> Matches for you.
							</h2>
						</div>
					</div>
					<div class="col-lg-3 col-md-3 col-sm-12 col-xs-12 hidden-sm hidden-xs">
						<div class="row">
							<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
								<div class="jp_rightside_job_categories_wrapper">
									<div class="jp_rightside_job_categories_heading">
										<h4>직무</h4>
									</div>
									<div style="height: 200px; background: white;"
										class="jp_form_location_wrapper">
										<select style="border: 1px solid;" name="jobNo">
											<option value="-1"selected>모든 직무</option>
											<c:forEach var="jobNameList" items="${ requestScope.jobNameList }">
												<option value="${ jobNameList.jobNo }"><c:out value="${ jobNameList.jobName }" /></option>
											</c:forEach>
										</select>
									</div>
								</div>
							</div>
							<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
								<div class="jp_rightside_job_categories_wrapper">
									<div class="jp_rightside_job_categories_heading">
	<!-- 검색 자동완성 -->					<h4>기술</h4>
									</div>
									<div class="jp_blog_right_search_wrapper">
										<input id="autocomplete" type="text" placeholder="Search" name="skills">
									</div>
								</div>
							</div>
							<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
								<div class="jp_rightside_job_categories_wrapper">
									<div class="jp_rightside_job_categories_heading">
										<h4>경력</h4>
									</div>
									<div style="height: 200px; background: white;"
										class="jp_form_location_wrapper">
										<select style="border: 1px solid;" name="experience">
											<option value="-1" selected>경력을 선택해주세요</option>
											<option value="0">신입</option>
											<option value="1">1년</option>
											<option value="2">2년</option>
											<option value="3">3년</option>
											<option value="4">4년</option>
											<option value="5">5년</option>
											<option value="6">6년</option>
											<option value="7">7년</option>
											<option value="8">8년</option>
											<option value="9">9년</option>
											<option value="10">10년이상</option>
										</select>
									</div>
								</div>
							</div>
							<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
								<div class="jp_rightside_job_categories_wrapper">
									<div class="jp_rightside_job_categories_heading">
										<h4>지역</h4>
									</div>
									<div class="jp_rightside_job_categories_content">
										<div class="handyman_sec1_wrapper">
											<div class="content">
												<div class="box">
													<p>
														<input type="checkbox" id="seoul" value="서울" name="area"> <label
															for="seoul">서울</label>
													</p>
													<p>
														<input type="checkbox" id="kyungki" value="경기/인천" name="area">
														<label for="kyungki">경기/인천</label>
													</p>
													<p>
														<input type="checkbox" id="kangwon" value="강원" name="area"> <label
															for="kangwon">강원</label>
													</p>
													<p>
														<input type="checkbox" id="chungchung" value="충청/대전" name="area">
														<label for="chungchung">충청/대전</label>
													</p>
													<p>
														<input type="checkbox" id="junra" value="전라/광주" name="area"> <label
															for="junra">전라/광주</label>
													</p>
													<p>
														<input type="checkbox" id="kyungsang" value="경상/울산/부산/대구" name="area">
														<label for="kyungsang">경상/울산/부산/대구</label>
													</p>
													<p>
														<input type="checkbox" id="jeju" value="제주" name="area"> <label
															for="jeju">제주</label>
													</p>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
	
					<div class="col-lg-9 col-md-9 col-sm-12 col-xs-12">
						<div class="row">
							<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
								<div class="jp_listing_tabs_wrapper">
									<div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
										<div class="gc_causes_select_box_wrapper">
											<div class="gc_causes_select_box">
												<select name="sort">
													<option>최신순</option>
												</select><i class="fa fa-angle-down"></i>
											</div>
										</div>
									</div>
									<div style="width: 150px; float: left;"
										class="col-lg-5 col-md-5 col-sm-5 col-xs-12">
										<div class="jp_form_btn_wrapper">
											<button type="submit" id="btn btn-info"><i class="fa fa-search"></i>Search</button>
										</div>
									</div>
								</div>
							</div>
	
							<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
								<div class="tab-content">
									<div id="grid" class="tab-pane fade in active">
										<div class="row">
											<!--  jobPostKinds가 승인된 공고일때 forEach를 통해서 모두 출력 -->
											<c:forEach var="jobPosting"
												items="${ requestScope.jobPostingList }">
												<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
													<div class="jp_job_post_main_wra[]pper_cont jp_job_post_grid_main_wrapper_cont">
	
														<!-- div 영역 클릭 시 상세 공고 페이지로 이동 -->
														<div class="jp_job_post_main_wrapper jp_job_post_grid_main_wrapper" style="cursor: pointer; height: 250px"
															onclick="selectJobPosting(this);"> 
															<input type="hidden" id="postNo"
																value="${ jobPosting.jobPostNo }">
															<input type="hidden" id="coMemNo" value="${ jobPosting.coMemberAddInfoDTO.coMemNo }">
	
															<div class="row">
																<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
	
																	<!-- 이미지 경로  -->
																	<div class="jp_job_post_side_img">
	<!--  이미지 경로 -->																	<img
																			src="${ pageContext.servletContext.contextPath }/resources/image/bmw.png"
																			style="width: 120px; height: 120px;" alt="post_img" />
																	</div>
																	<div></div>
																	<div class="jp_job_post_right_cont jp_job_post_grid_right_cont">
																		<!-- 제목 -->
																		<div style="height: 80px;">
																			<label id="detailedJobPost" style="cursor:pointer; font-weight: bold; font-size: 20px; color: black;">
																				<c:out value="${ jobPosting.jobPostTitle }" />
																			</label>
																		</div>
																		<div>
																		<label><c:out value="${ jobPosting.coMemberAddInfoDTO.coComName }"/></label>
	<!-- 지역 처리 필요 -->														<c:set var="coAddress" value="${ jobPosting.coMemberAddInfoDTO.coAddress }"/>
																		<c:set var="address" value="${ fn:split(coAddress,'$')[0]}"/>
																		<c:set var="area" value="${ fn:split(address, ' ')[0] }"></c:set>
																			<label><c:out value="(${ area })"></c:out></label>
																		</div>
																		<div>
																		<label>
																		<c:set var="minExp" value="${ jobPosting.jobPostMinExperience }"></c:set>
																		<c:set var="maxExp" value="${ jobPosting.jobPostMaxExperience }"></c:set>
																			<c:choose>
																				<c:when test="${ minExp ne maxExp }">
																					<c:out value="${ minExp }"/><c:out value="~${ maxEmp }"></c:out>
																				<</c:when>
																				<c:when test="${ (minExp eq maxExp) && (minExp eq 0)}">
																					<c:out value="신입"></c:out>
																				</c:when>
																				<c:when test="${( minExp eq maxExp) && (minExp ne 0)}">
																					<c:out value="${ maxExp }년 이상"/>
																				</c:when>
																				<c:when test="${ (minExp eq 0) && (maxExp eq 10)}">
																					<c:out value="경력 무관"></c:out>
																				</c:when>
																			</c:choose>
																		</label>
																		</div>
																		<!-- 직무 -->
																		<div>
																		<label><c:out value="${ jobPosting.jobFieldDTO.jobName }"></c:out></label>
																		</div>
																		<!-- 채용공고 마감일 -->
																		<div>
																		<label><c:out value="${ jobPosting.jobPostEnrollDate }" /> ~ <c:out value="${ jobPosting.jobPostDeadline }" /></label>
																		</div>
																	</div>
																</div>
															</div>
														</div>
														<div class="jp_job_post_keyword_wrapper">
															<ul>
																<li><i class="fa fa-tags">요구 기술 :</i></li>
																<c:forEach var="jpSkills" items="${ requestScope.jpSkills }">
																	<c:if test="${ jpSkills.jobPostNo eq jobPosting.jobPostNo}">
																		<li><a><c:out value="${ jpSkills.skillsName }"/></a></li>
																	</c:if>
																</c:forEach>
															</ul>
														</div>
													</div>
												</div>
											</c:forEach>
										</div><!--  -->
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</form>
			<div class="pagingForm" align="center">
				<form id="pagingForm"method="post">
					<input type="hidden" name="skills" value="${ requestScope.skillsName }" readonly> 
					<input type="hidden" name="experience" value="${ requestScope.experience }" readonly> 
					<input type="hidden" name="jobNo" value="${ requestScope.jobNo }" readonly> 
					<c:forEach var="area" items="${ requestScope.areaList }">
					<input type="hidden" name="area" value="${ area }" readonly> 
					</c:forEach>
					
					<!-- 이전 페이지 버튼 -->
					<c:if test="${ requestScope.selectCriteria.pageNo <= 1 }">
						<button type="button" disabled>PRIV</button>
					</c:if>
					<c:if test="${ requestScope.selectCriteria.pageNo > 1 }">
						<button type="button" id="prevPage">PRIV</button>
					</c:if>
					
					<!-- 숫자 버튼 -->
					<c:forEach var="p" begin="${ requestScope.selectCriteria.startPage }" end="${ requestScope.selectCriteria.endPage }" step="1">
						<c:if test="${ requestScope.selectCriteria.pageNo eq p }">
							<button type="button" disabled><c:out value="${ p }"/></button>
						</c:if>
						<c:if test="${ requestScope.selectCriteria.pageNo ne p }">
							<button type="button" onclick="pageButtonAction(this.innerText);"><c:out value="${ p }"/></button>
						</c:if>
					</c:forEach>
					
					<!-- 다음 페이지 버튼 -->
					<c:if test="${ requestScope.selectCriteria.pageNo >= requestScope.selectCriteria.maxPage }">
						<button type="button" disabled>NEXT</button>
					</c:if>
					<c:if test="${ requestScope.selectCriteria.pageNo < requestScope.selectCriteria.maxPage }">
						<button type="button" id="nextPage">NEXT</button>
					</c:if>
				</form>
			</div>
		</div>
	</div>
	
	<script>
		function selectJobPosting(div) {

			const jobPostNo = div.children[0].value;
			const coMemNo = div.children[1].value;

			location.href = "${ pageContext.servletContext.contextPath }/detail/jobPosting/select?jobPostNo="
					+ jobPostNo + "&coMemNo=" + coMemNo;
		}
	</script>
	<script>
	
		const link = "${ pageContext.servletContext.contextPath }/member/allJobPosting/select";

		
		if(document.getElementById("prevPage")) {
			const $prevPage = document.getElementById("prevPage");
			$prevPage.onclick = function() {
				$("#pagingForm").append("<input type='hidden' name='currentPage' value='${ requestScope.selectCriteria.pageNo - 1 }'>");
				$("#pagingForm").method = "post";
				$("#pagingForm").action =  link;
				$("#pagingForm").submit();
			}
		}
		
		if(document.getElementById("nextPage")) {
			const $nextPage = document.getElementById("nextPage");
			$nextPage.onclick = function() {
				$("#pagingForm").append("<input type='hidden' name='currentPage' value='${ requestScope.selectCriteria.pageNo + 1 }'>");
				$("#pagingForm").method = "post";
				$("#pagingForm").action = link;
				$("#pagingForm").submit();			
			}
		}

		
		function pageButtonAction(text) {
			
			alert("");
			$("#pagingForm").append("<input type='hidden' name='currentPage' value='" + text + "'>");
			$("#pagingForm").method = "post";
			$("#pagingForm").action = link;
			$("#pagingForm").submit();
		}
		
	</script>

</body>
</html>