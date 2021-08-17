<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>

</head>
<body>

	<!--    <div class="jp_bottom_footer_Wrapper_header_img_wrapper">
        <div class="jp_slide_img_overlay"></div>
        <div class="jp_banner_heading_cont_wrapper">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                        <div class="jp_job_heading_wrapper">
                            <div class="jp_job_heading">
                                <h1><span>30 </span>개의 진행 중 공고</h1>
                                <p style="margin-left: 30px;">채용 공고를 검색해보세요 </p>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                        <div class="jp_header_form_wrapper">
                            <div class="col-lg-4 col-md-4 col-sm-12 col-xs-12">
                                <input type="text" placeholder="Keyword e.g. (Job Title, Description, Tags)">
                            </div>
                            <div class="col-lg-3 col-md-3 col-sm-12 col-xs-12">
                                <div class="jp_form_location_wrapper">
                                    <select>
                                        <option>Select Location</option>
                                        <option>Select Location</option>
                                        <option>Select Location</option>
                                        <option>Select Location</option>
                                        <option>Select Location</option>
                                    </select><i class="fa fa-angle-down second_icon"></i>
                                </div>
                            </div>
                            <div class="col-lg-3 col-md-3 col-sm-12 col-xs-12">
                                <div class="jp_form_exper_wrapper">
                                    <select>
                                        <option>Experience</option>
                                        <option>Experience</option>
                                        <option>Experience</option>
                                        <option>Experience</option>
                                        <option>Experience</option>
                                    </select><i class="fa fa-angle-down second_icon"></i>
                                </div>
                            </div>
                            <div class="col-lg-2 col-md-2 col-sm-12 col-xs-12">
                                <div class="jp_form_btn_wrapper">
                                    <ul>
                                        <li><a href="#"><i class="fa fa-search"></i> Search</a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                        <div class="jp_banner_main_jobs_wrapper">
                            <div class="jp_banner_main_jobs">
                                <ul>
                                    <li>여기에 키워드 불러와서 넣어주면 될듯?</li>
                                    <li></li>
                                    <li></li>
                                    <li></li>
                                    <li></li>
                                    <li></li>
                                    <li></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>-->
	<!-- Header W rapper End -->
	<!-- jp listing sidebar Wrapper Start -->
	<!-- 상단 검은색 -->
	<form action="${ pageContext.servletContext.contextPath }/member/allJobPosting/select"
		method="post">
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
				<div class="row">
					<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
						<div class="jp_listing_heading_wrapper">
							<h2>
								We found <span><c:out
										value="${ requestScope.jobPostingList.size() }"></c:out></span>
								Matches for you.
							</h2>
						</div>
					</div>
					<div
						class="col-lg-3 col-md-3 col-sm-12 col-xs-12 hidden-sm hidden-xs">
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
													<option>Sort Default</option>
													<option>Sort Default</option>
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
													<div
														class="jp_job_post_main_wra[]pper_cont jp_job_post_grid_main_wrapper_cont">
	
														<!-- div 영역 클릭 시 상세 공고 페이지로 이동 -->
														<div
															class="jp_job_post_main_wrapper jp_job_post_grid_main_wrapper"
															style="cursor: pointer; height: 250px"
															onclick="post(this);">
	
															<input type="text" id="postNo"
																value="${ jobPosting.jobPostNo }">
	
															<div class="row">
																<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
	
																	<!-- 이미지 경로  -->
																	<div class="jp_job_post_side_img">
																		<img
																			src="${ pageContext.servletContext.contextPath }/resources/image/bmw.png"
																			style="width: 120px; height: 120px;" alt="post_img" />
																	</div>
																	<div></div>
																	<div
																		class="jp_job_post_right_cont jp_job_post_grid_right_cont">
																		<!-- 제목 -->
																		<a id="detailedJobPost"
																			style="font-weight: bold; font-size: 20px; color: black;"><c:out
																				value="${ jobPosting.jobPostTitle }" /></a><br>
																		<br> <a><c:out
																				value="${ jobPosting.coMemberAddInfoDTO.coComName }" />
																		</a><a>(서울)</a><br> <a> <!-- 경력 --> <c:if
																				test="${ jobPosting.jobPostMinExperience != jobPosting.jobPostMaxExperience }">
																				<c:out value="${ jobPosting.jobPostMinExperience }" /> ~ <c:out
																					value="${ jobPosting.jobPostMaxExperience }" /> 년
																			</c:if> <c:if
																				test="${ jobPosting.jobPostMinExperience eq jobPosting.jobPostMaxExperience }">
																				<c:if
																					test="${ jobPosting.jobPostMinExperience eq 0 }">
																					<c:out value="신입개발자"></c:out>
																				</c:if>
																			</c:if>
																		</a><br>
																		<!-- 직무 -->
																		<a><c:out
																				value="${ jobPosting.jobFieldDTO.jobName }"></c:out></a><br>
																		<!-- 채용공고 마감일 -->
																		<a><c:out value="${ jobPosting.jobPostEnrollDate }" />
																			~ <c:out value="${ jobPosting.jobPostDeadline }" /></a>
	
																	</div>
																</div>
															</div>
														</div>
														<div class="jp_job_post_keyword_wrapper">
															<ul>
																<li>요구 기술 :</li>
																<c:forEach var="jpSkills"
																	items="${ requestScope.jpSkills }">
																	<c:if
																		test="${ jpSkills.jobPostNo eq jobPosting.jobPostNo}">
																		<li><a href="#"><c:out
																					value="${ jpSkills.skillsName }"></c:out></a></li>
																	</c:if>
																</c:forEach>
															</ul>
														</div>
	
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
		</div>
	</form>
	<input id="searchInput">
	
	<script>
	

    $(function() {    //화면 다 뜨면 시작
        var searchSource = ["김치 볶음밥", "신라면", "진라면", "라볶이", "팥빙수","너구리","삼양라면","안성탕면","불닭볶음면","짜왕","라면사리" ]; // 배열 형태로 
        $("#searchInput").autocomplete({  //오토 컴플릿트 시작
            source : searchSource,    // source 는 자동 완성 대상
            select : function(event, ui) {    //아이템 선택시
                console.log(ui.item);
            },
            focus : function(event, ui) {    //포커스 가면
                return false;//한글 에러 잡기용도로 사용됨
            },
            minLength: 1,// 최소 글자수
            autoFocus: true, //첫번째 항목 자동 포커스 기본값 false
            classes: {    //잘 모르겠음
                "ui-autocomplete": "highlight"
            },
            delay: 500,    //검색창에 글자 써지고 나서 autocomplete 창 뜰 때 까지 딜레이 시간(ms)
//            disabled: true, //자동완성 기능 끄기
            position: { my : "right top", at: "right bottom" },    //잘 모르겠음
            close : function(event){    //자동완성창 닫아질때 호출
                console.log(event);
            }
        });
        
    });
	</script>
	<script>

		

		// 		// 조건 걸어서 검색 필요 
		//     	$("#search-job-posting").onclick(function() {

		//     		const selectJobNo = document.getElementById("selectJobNo").value;
		//     		const selectExperience = document.getElementById("selectExperience").value;

		//     		const selectOption = {

		//     				selectJobNO : selectJobNO,
		//     				selectExperience : selectExperience
		//     		};

		//     		$.ajax({
		//     			url: "let/member/allJobPosting/select",
		//     			type: "post",
		//     			data: selectOption,
		//     			success: function(){

		//     			},
		//     			error: function(xhr){
		//     				console.log(xhr);
		//     			}
		//     		});
		//     	});

		function post(div) {

			const jobPostNo = div.children[0].value;

			location.href = "${ pageContext.servletContext.contextPath }/detail/jobPosting/select?jobPostNo="
					+ jobPostNo;

		}
	</script>

</body>
</html>