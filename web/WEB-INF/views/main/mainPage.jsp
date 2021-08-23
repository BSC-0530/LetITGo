<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<!DOCTYPE html>
<html>
<head>


<script>
	if(document.getElementById("searchForm")) {
		const $searchForm = document.getElementById("searchForm");
		$searchForm.onclick = function() {
			$("#searchForm").method = "post";
			$("#searchForm").action =  "${ pageContext.servletContext.contextPath }/member/allJobPosting/select";
			$("#searchForm").submit();
		}
	}
	
	function selectJobPost(li) {
		
		var jobPostNo = li.parentNode.parentNode.parentNode.parentNode.children[0].children[1].children[3].value;
		
		var coMemNo = li.parentNode.parentNode.parentNode.parentNode.children[0].children[1].children[2].value;
		
		location.href = "${ pageContext.servletContext.contextPath }/detail/jobPosting/select?jobPostNo="
			+ jobPostNo + "&coMemNo=" + coMemNo;
		
	}
	function selectCompany(p) {
		
		var coMemNo = p.parentNode.children[2].value;

		location.href = "${ pageContext.servletContext.contextPath }/aboutCompany/select?coMemNo="+ coMemNo;
		
	}
</script>
</head>
<body>

	<form id="searchForm" action="${ pageContext.servletContext.contextPath }/member/allJobPosting/select" method="post">
		<div class="jp_top_header_img_wrapper">
	        <div class="jp_slide_img_overlay"></div>
	        <div class="jp_banner_heading_cont_wrapper">
	            <div class="container">
	                <div class="row">
	                    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
	                        <div class="jp_job_heading_wrapper">
	                            <div class="jp_job_heading">
	                                <h1><span>IT</span> 개발자들을 위한</h1>
	                                <p>다양한 직군이 모여있는 개발자들의 취업 공간</p>
	                            </div>
	                        </div>
	                    </div>
	                    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
	                        <div class="jp_header_form_wrapper">
	                            <div class="col-lg-4 col-md-4 col-sm-12 col-xs-12">
	                                <input name="skills" type="text" placeholder="Skills">
	                            </div>
	                            <div class="col-lg-3 col-md-3 col-sm-12 col-xs-12">
	                                <div class="jp_form_location_wrapper">
	                                    <i class="fa fa-dot-circle-o first_icon"></i>
	                                    <input type="hidden"name="jobNo" value="-1">
		                                <select name="area">
											<option value="서울">서울</option>
											<option value="경기/인천">경기/인천</option>
											<option value="강원">강원</option>
											<option value="충청/대전">충청/대전</option>
											<option value="전라/광주">전라/광주</option>
											<option value="경상/울산/부산/대구">경상/울산/부산/대구</option>
											<option value="제주">제주</option>
										</select><i class="fa fa-angle-down second_icon"></i>
	                                </div>
	                            </div>
	                            <div class="col-lg-3 col-md-3 col-sm-12 col-xs-12">
	                                <div class="jp_form_exper_wrapper">
	                                    <i class="fa fa-dot-circle-o first_icon"></i>
		                                <select name="experience">
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
										</select><i class="fa fa-angle-down second_icon"></i>
	                                </div>
	                            </div>
	                            <div class="col-lg-2 col-md-2 col-sm-12 col-xs-12">
	                                <div class="jp_form_btn_wrapper">
	                                    <ul>
	                                        <li><a><i class="fa fa-search"></i><button style="background-color: transparent; border: 0px">Search</button></a></li>
	                                    </ul>
	                                </div>
	                            </div>
	                        </div>
	                    </div>
	                    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
	                        <div class="jp_banner_main_jobs_wrapper">
	                            <div class="jp_banner_main_jobs">
	                                <ul>
	                                    <li><i class="fa fa-tags"></i> Trending Skills :</li>
	                                    <li><a>Java,</a></li>
	                                    <li><a>JavaScript,</a></li>
	                                    <li><a>MyBatis</a></li>
	                                    <li><a>Spring,</a></li>
	                                    <li><a>Oracle,</a></li>
	                                    <li><a>Kotlin</a></li>
	                                </ul>
	                            </div>
	                        </div>
	                    </div>
	                </div>
	            </div>
	        </div>
	    </div>
    </form>
	<!-- jp first sidebar Wrapper Start -->
	<div class="jp_first_sidebar_main_wrapper">
		<div class="container">
			<div class="row">
				<div class="col-lg-9 col-md-9 col-sm-12 col-xs-12" style="width: 100%;">
					<div class="row">
						<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
						
						</div>
						<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
							<div class="cc_featured_product_main_wrapper">
								<div
									class="jp_hiring_heading_wrapper jp_job_post_heading_wrapper">
									<h2> LetITGo 엄선 추천 공고 </h2>
								</div>
							</div>
							<div class="tab-content">
								<div role="tabpanel" class="tab-pane fade in active" id="best">
									<div class="ss_featured_products">
										<div class="owl-carousel owl-theme">
											<div class="item" data-hash="zero">
												<c:forEach var="pr" items="${ requestScope.resultMap.premiumRecruitList }">
													<div class="jp_job_post_main_wrapper_cont">
														<div class="jp_job_post_main_wrapper">
															<div class="row">
																<div class="col-lg-8 col-md-8 col-sm-8 col-xs-12">
																	<div class="jp_job_post_side_img">
																		<img src="${ pageContext.servletContext.contextPath }${ pr.memFilePath }" alt="post_img"/>
																	</div>
																	<div class="jp_job_post_right_cont">
																		<h4><c:out value="${ pr.jobPostTitle }"/></h4>
																		<p style="cursor:pointer;" onclick="selectCompany(this);"><label style="font-size: 20px; cursor:pointer;"><c:out value="${ pr.coComName }"/></label></p>
																		
																		<input name="coMemNo" type="hidden" value="${ pr.coMemNo }">
																		<input name="jobPostNo" type="hidden" value="${ pr.jobPostNo }">
																		
																		<c:set var="coAddress" value="${ pr.coAddress }"/>
																		<c:set var="address" value="${ fn:split(coAddress,'$')[0]}"/>
																		<label><c:out value="${ address }"/></label><br>
																		<label><c:out value="${ pr.jobName }"/></label><br>
																		<label>
																		<c:set var="minExp" value="${ pr.jobPostMinExperience }"/>
																		<c:set var="maxExp" value="${ pr.jobPostMaxExperience }"/>
																		<c:if test="${ minExp ne maxExp }">
																			<c:choose>
																				<c:when test="${ (minExp eq 0) && (maxExp eq 10) }">
																					<c:out value="경력 무관"></c:out>
																				</c:when>
																				<c:otherwise>
																					<c:out value="${ minExp }"/><c:out value="~${ maxExp }년"/>
																				</c:otherwise>
																			</c:choose>
																		</c:if>
																		<c:if test="${ (minExp eq maxExp) && (minExp eq 0)}">
																			<c:out value="신입"></c:out>
																		</c:if>
																		<c:if test="${( minExp eq maxExp) && (minExp ne 0)}">
																			<c:out value="${ maxExp }년 이상"/>
																		</c:if>
																		</label>
																	</div>
																</div>
																<div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
																	<div class="jp_job_post_right_btn_wrapper">
																		<ul>
																			<li style="cursor: pointer" onclick="selectJobPost(this);"><a>공고 상세보기</a></li>
																		</ul>
																	</div>
																</div>
															</div>
														</div>
														<div class="jp_job_post_keyword_wrapper">
															<ul>
																<li><i class="fa fa-tags"></i>요구 기술 : </li>
																<c:forEach var="skills" items="${ requestScope.resultMap.skillsList }">
																	<c:if test="${ skills.jobPostNo eq pr.jobPostNo }">
																		<li><a><c:out value="${ skills.skillsName }"></c:out></a></li>
																	</c:if>
																</c:forEach>
															</ul>
														</div>
													</div>
												</c:forEach>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
						<div class="jp_register_section_main_wrapper">
							<div class="jp_regis_left_side_box_wrapper">
								<div class="jp_regis_left_side_box">
									<img src="${ pageContext.servletContext.contextPath }/resources/image/content/regis_icon.png" alt="icon" />
									<h4>좋은 직장을 찾고 싶어요</h4>
									<p>
										LetITGo의 회원이 되시면 <br>원하는 직장을 입맛대로 찾으실 수 있어요!
									</p>
									<ul>
										<li><a href="#"><i class="fa fa-plus-circle"></i>
												&nbsp;개인회원가입</a></li>
									</ul>
								</div>
							</div>
							<div class="jp_regis_right_side_box_wrapper">
								<div class="jp_regis_right_img_overlay"></div>
								<div class="jp_regis_right_side_box">
									<img
										src="${ pageContext.servletContext.contextPath }/resources/image/content/regis_icon2.png"
										alt="icon" />
									<h4>꼭 필요한 가족을 찾고 싶어요</h4>
									<p>
										LetITGo의 회원이 되시면<br>회사에 꼭 맞는 일원을 찾으실 수 있어요!
									</p>
									<ul>
										<li><a href="#"><i class="fa fa-plus-circle"></i>
												&nbsp;기업회원가입</a></li>
									</ul>
								</div>
								<div class="jp_regis_center_tag_wrapper">
									<p>OR</p>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	<!-- jp first sidebar Wrapper End -->
	<!--main js file start-->
	<script
		src="${ pageContext.servletContext.contextPath }/resources/js/jquery_min.js"></script>
	<script
		src="${ pageContext.servletContext.contextPath }/resources/js/bootstrap.js"></script>
	<script
		src="${ pageContext.servletContext.contextPath }/resources/js/jquery.menu-aim.js"></script>
	<script
		src="${ pageContext.servletContext.contextPath }/resources/js/jquery.countTo.js"></script>
	<script
		src="${ pageContext.servletContext.contextPath }/resources/js/jquery.inview.min.js"></script>
	<script
		src="${ pageContext.servletContext.contextPath }/resources/js/owl.carousel.js"></script>
	<script
		src="${ pageContext.servletContext.contextPath }/resources/js/modernizr.js"></script>
	<script
		src="${ pageContext.servletContext.contextPath }/resources/js/custom.js"></script>
	<!--main js file end-->
	
	<script src="${ pageContext.servletContext.contextPath }/resources/js/donggi/select.js"></script>
</body>
</html>