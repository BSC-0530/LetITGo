<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>

</head>
<body>
	<jsp:include page="../common/header/personalHeader.jsp" />

	<div class="jp_tittle_main_wrapper">
        <div class="jp_tittle_img_overlay"></div>
        <div class="container">
            <div class="row">
                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                    <div class="jp_tittle_heading_wrapper">
                        <div class="jp_tittle_heading">
                            <h2>이력서 작성</h2>
                        </div>
                        <div class="jp_tittle_breadcrumb_main_wrapper">
                            <div class="jp_tittle_breadcrumb_wrapper">
                                <ul>
                                    <li><a href="#">Home</a> <i class="fa fa-angle-right"></i></li>
                                    <li><a href="#">이력서</a> <i class="fa fa-angle-right"></i></li>
                                    <li>이력서 작성</li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

	<form
		action="${ pageContext.servletContext.contextPath }/resume/insert"
		method="post">

		<!-- jp ad post Wrapper Start -->
		<div class="jp_adp_main_section_wrapper">
			<div class="container">
				<div class="row">
					<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
						<div class="jp_adp_form_wrapper">
							<h3>
								이력서 제목<input type="text" placeholder="이력서 제목을 입력해주세요."
									name="resumeTitle">
							</h3>
						</div>
						<div class="jp_adp_form_wrapper">
							<h3>직무 / 경력</h3>
							<br> <label><input
								style="width: 20px; height: 20px; border: 1px;" type="radio"
								id="jobNo" value="1" name="jobNo">서버/백엔드</label> <label><input
								style="width: 20px; height: 20px; border: 1px;" type="radio"
								id="jobNo" value="2" name="jobNo">프론트엔드</label> <label><input
								style="width: 20px; height: 20px; border: 1px;" type="radio"
								id="jobNo" value="3" name="jobNo">웹 풀스택</label> <label><input
								style="width: 20px; height: 20px; border: 1px;" type="radio"
								id="jobNo" value="4" name="jobNo">모바일 웹</label> <label><input
								style="width: 20px; height: 20px; border: 1px;" type="radio"
								id="jobNo" value="5" name="jobNo">게임 클라이언트</label> <label><input
								style="width: 20px; height: 20px; border: 1px;" type="radio"
								id="jobNo" value="6" name="jobNo">게임 서버</label> <label><input
								style="width: 20px; height: 20px; border: 1px;" type="radio"
								id="jobNo" value="7" name="jobNo">데이터 엔지니어(DBA)</label><br>
							<label><input
								style="width: 20px; height: 20px; border: 1px;" type="radio"
								id="jobNo" value="8" name="jobNo">인공지능/머신러닝</label> <label><input
								style="width: 20px; height: 20px; border: 1px;" type="radio"
								id="jobNo" value="9" name="jobNo">시스템 엔지니어</label> <label><input
								style="width: 20px; height: 20px; border: 1px;" type="radio"
								id="jobNo" value="10" name="jobNo">보안</label> <label><input
								style="width: 20px; height: 20px; border: 1px;" type="radio"
								id="jobNo" value="11" name="jobNo">QA</label> <label><input
								style="width: 20px; height: 20px; border: 1px;" type="radio"
								id="jobNo" value="12" name="jobNo">프로젝트 매니저</label> <label><input
								style="width: 20px; height: 20px; border: 1px;" type="radio"
								id="jobNo" value="13" name="jobNo">HW/임베디드</label> <label><input
								style="width: 20px; height: 20px; border: 1px;" type="radio"
								id="jobNo" value="14" name="jobNo">SW/솔루션</label>
						</div>
						
						<div class="row" id="inputCareer">
							<div class="col-lg-3 col-md-3 col-md-3 col-xs-12">
								<div class="jp_adp_form_wrapper">
								
									<input type="text" placeholder="회사명 *" name="carComName">
								</div>
							</div>
							<div class="col-lg-3 col-md-3 col-md-3 col-xs-12">
								<div class="jp_adp_form_wrapper">
									<input type="text" placeholder="부서명 *" name="carDeptName">
								</div>
							</div>
							<div class="col-lg-3 col-md-3 col-md-3 col-xs-12">
								<div class="jp_adp_form_wrapper">
									<input type="text" placeholder="직책 *" name="carJobName">
								</div>
							</div>
							<div class="col-lg-3 col-md-3 col-md-3 col-xs-12">
								<div class="jp_adp_form_wrapper">
									<input type="text" placeholder="업무 분야 *" name="carWorkField">
								</div>
							</div>
							<div class="col-lg-3 col-md-3 col-md-3 col-xs-12">
								<div class="jp_adp_form_wrapper">
									<label>입사일 *</label> <input type="date" name="carHireDate">
								</div>
							</div>
							<div class="col-lg-3 col-md-3 col-md-3 col-xs-12">
								<div class="jp_adp_form_wrapper">
									<label>퇴사일 *</label> <input type="date" name="carEntDate">
								</div>
							</div>
							<div class="col-lg-3 col-md-3 col-md-3 col-xs-12">
								<div class="jp_adp_form_wrapper">
									<br> <br> <label><input
										style="width: 17px; height: 17px; border: 1px;"
										type="checkbox" name="carStatus"> 현재 재직 중</label>
								</div>
							</div>

							<div class="col-lg-3 col-md-3 col-md-3 col-xs-12">
								<div class="jp_adp_form_wrapper">
									<label> </label>
								</div>
							</div>
							<div class="col-lg-3 col-md-3 col-md-3 col-xs-12">
								<div class="jp_adp_form_wrapper">
									<label> </label>
								</div>
							</div>
							<div class="col-lg-3 col-md-3 col-md-3 col-xs-12">
								<div class="jp_adp_form_wrapper">
									<label> </label>
								</div>
							</div>

							<div class="col-lg-3 col-md-3 col-md-3 col-xs-12">
								<div class="jp_adp_form_wrapper">
									<br> <input type="text" placeholder="프로젝트명"
										name="projectName">
								</div>
							</div>
							<div class="col-lg-3 col-md-3 col-md-3 col-xs-12">
								<div class="jp_adp_form_wrapper">
									<br> <input type="text" placeholder="프로젝트 업무 내용"
										name="projectContent">
								</div>
							</div>
							<div class="col-lg-3 col-md-3 col-md-3 col-xs-12">
								<div class="jp_adp_form_wrapper">
									<label>프로젝트 시작일</label> <input type="date"
										name="projectStartDate">
								</div>
							</div>
							<div class="col-lg-3 col-md-3 col-md-3 col-xs-12">
								<div class="jp_adp_form_wrapper">
									<label>프로젝트 퇴사일</label> <input type="date"
										data-placeholder="프로젝트 종료일" name="projectEndDate">
								</div>
							</div>
							<div class="col-lg-12 col-md-12 col-md-12 col-xs-12">
								<div class="jp_adp_form_wrapper">
									<button id="addCareerBtn" type="button">추가 +</button>
								</div>
							</div>
						</div>
						<div class="jp_adp_form_wrapper">
							<h3>포트폴리오 링크</h3>
							<br> 깃랩, 노션으로 작성한 포트폴리오 주소 or 구글 드라이브 파일 등 업무 성과를 보여줄 수 있는
							파일이 있다면 첨부해주세요. <input type="text" placeholder="Https://"
								name="potLinkAddress">
						</div>
					</div>
					<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
						<div class="jp_adp_choose_resume">
							<h3>포트폴리오 첨부</h3>
							<div class="custom-input">
								<span><i class="fa fa-upload"></i>파일선택</span> <input type="file"
									name="potFilePath" id="potFilePath">
							</div>
						</div>
					</div>

					<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
						<div class="jp_adp_textarea_main_wrapper" id="selfIntro">
							<h3>자기소개서</h3>
							<select name="selfIntroItemNo">
								<option value="" selected>-- 카테고리 선택 --</option>
								<option value="1">성장과정</option>
								<option value="2">지원동기</option>
								<option value="3">성격장단점</option>
								<option value="4">입사후포부</option>
							</select>
							<textarea rows="7" placeholder="항목에 맞는 내용을 입력하세요"
								name="selfIntroItemContent"></textarea>
						</div>
					</div>
					<br> <br>
					<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
					
						<div class="row" id="inputLicense">
							<div class="col-lg-3 col-md-3 col-md-3 col-xs-12">
								<div class="jp_adp_form_wrapper">
									<h3>자격증 이력</h3>
									<input type="text" placeholder="자격증 명" name="licenseName">
								</div>
							</div>
							<div class="col-lg-3 col-md-3 col-md-3 col-xs-12">
								<div class="jp_adp_form_wrapper">
	
									<br> <input type="text" placeholder="발행처"
										name="licenseAgency">
								</div>
							</div>
							<div class="col-lg-3 col-md-3 col-md-3 col-xs-12">
								<div class="jp_adp_form_wrapper">
									<label>자격증 취득일</label> <input type="date" name="licenseDate">
								</div>
							</div>
						</div>
					</div>
					<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
					
						<div class="row" id="inputEdu">
							<div class="col-lg-3 col-md-3 col-md-3 col-xs-12">
								<div class="jp_adp_form_wrapper">
									<h3>교육 이력</h3>
									<input type="text" placeholder="교육명" name="eduName">
								</div>
							</div>
							<div class="col-lg-3 col-md-3 col-md-3 col-xs-12">
								<div class="jp_adp_form_wrapper">
									<br> <input type="text" placeholder="교육기관" name="eduAgency">
								</div>
							</div>
							<div class="col-lg-3 col-md-3 col-md-3 col-xs-12">
								<div class="jp_adp_form_wrapper">
									<label>교육 시작일</label> <input type="date" name="eduStartDate">
								</div>
							</div>
							<div class="col-lg-3 col-md-3 col-md-3 col-xs-12">
								<div class="jp_adp_form_wrapper">
									<label>교육 종료일</label> <input type="date"
										data-placeholder="프로젝트 종료일" name="eduEndDate">
								</div>
							</div>
							<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
								<div class="jp_adp_textarea_main_wrapper">
									<h5>교육 내용</h5>
									<textarea rows="7" placeholder="교육 내용을 입력하세요"
										name="eduContent"></textarea>
								</div>
							</div>
						</div>
					</div>
					<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
					
						<div class="row" id="inputAwd">
							<div class="col-lg-3 col-md-3 col-md-3 col-xs-12">
								<div class="jp_adp_form_wrapper">
									<h3>수상 이력</h3>
									<input type="text" placeholder="수상 내역" name="awdName">
								</div>
							</div>
							<div class="col-lg-3 col-md-3 col-md-3 col-xs-12">
								<div class="jp_adp_form_wrapper">
									<br> <input type="text" placeholder="수여기관" name="awdAgency">
								</div>
							</div>
							<div class="col-lg-3 col-md-3 col-md-3 col-xs-12">
								<div class="jp_adp_form_wrapper">
									<label>수상 일자</label> <input type="date" name="awdDate">
								</div>
							</div>
							<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
								<div class="jp_adp_textarea_main_wrapper">
									<h5>수상 내용</h5>
									<textarea rows="7" placeholder="수상 내용을 입력하세요"
										name="awdContent"></textarea>
								</div>
							</div>
						</div>
					</div>

					<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
						<div class="jp_adp_choose_resume_bottom_btn_post">
							<ul>
								<li><button id="sendResume" type="submit">이력서 등록</button></li>
							</ul>
						</div>
					</div>

				</div>
			</div>
		</div>
		<!-- jp ad post Wrapper End -->

	</form>
 	<script type="text/javascript">
		$('#addCareerBtn').on('click', function() {
 			$('#inputCareer')
 				.append("<div class='row' id='inputCareer'>")
 				.append("<div class='col-lg-3 col-md-3 col-md-3 col-xs-12'>")
 				.append("<div class='jp_adp_form_wrapper'>")
 				.append("<input type='text' placeholder='회사명 *' name='carComName'>")
 				.append("</div>")
 				.append("</div>")
 				.append("<div class='col-lg-3 col-md-3 col-md-3 col-xs-12'>")
 				.append("<div class='jp_adp_form_wrapper'>")
 				.append("<input type='text' placeholder='부서명 *' name='carDeptName'>")
 				.append("</div>")
 				.append("</div>")
 				.append("<div class='col-lg-3 col-md-3 col-md-3 col-xs-12'>")
 				.append("<div class='jp_adp_form_wrapper'>")
 				.append("<input type='text' placeholder='직책 *' name='carJobName'>")
 				.append("</div>")
 				.append("</div>")
 				.append("<div class='col-lg-3 col-md-3 col-md-3 col-xs-12'>")
 				.append("<div class='jp_adp_form_wrapper'>")
 				.append("<input type='text' placeholder='업무 분야 *' name='carWorkField'>")
 				.append("</div>")
 				.append("</div>")
 				.append("<div class='col-lg-3 col-md-3 col-md-3 col-xs-12'>")
 				.append("<div class='jp_adp_form_wrapper'>")
 				.append("<label>입사일 *</label> <input type='date' name='carHireDate'>")
 				.append("</div>")
 				.append("</div>")
 				.append("<div class='col-lg-3 col-md-3 col-md-3 col-xs-12'>")
 				.append("<div class='jp_adp_form_wrapper'>")
 				.append("<label>퇴사일 *</label> <input type='date' name='carEntDate'>")
 				.append("</div>")
 				.append("</div>")
 				.append("<div class='col-lg-3 col-md-3 col-md-3 col-xs-12'>")
 				.append("<div class='jp_adp_form_wrapper'>")
 				.append("<br> <br> <label><input style='width: 17px; height: 17px; border: 1px;' type='checkbox' name='carStatus'> 현재 재직 중</label>")
 				.append("</div>")
 				.append("</div>")
 				.append("<div class='col-lg-3 col-md-3 col-md-3 col-xs-12'>")
 				.append("<div class='jp_adp_form_wrapper'>")
 				.append("<label> </label>")
 				.append("</div>")
 				.append("</div>")
 				.append("<div class='col-lg-3 col-md-3 col-md-3 col-xs-12'>")
 				.append("<div class='jp_adp_form_wrapper'>")
 				.append("<label> </label>")
 				.append("</div>")
 				.append("</div>")
 				.append("<div class='col-lg-3 col-md-3 col-md-3 col-xs-12'>")
 				.append("<div class='jp_adp_form_wrapper'>")
 				.append("<label> </label>")
 				.append("</div>")
 				.append("</div>")
 				.append("<div class='col-lg-3 col-md-3 col-md-3 col-xs-12'>")
 				.append("<div class='jp_adp_form_wrapper'>")
 				.append("<br> <input type='text' placeholder='프로젝트명' name='projectName'>")
 				.append("</div>")
 				.append("</div>")
 				.append("<div class='col-lg-3 col-md-3 col-md-3 col-xs-12'>")
 				.append("<div class='jp_adp_form_wrapper'>")
 				.append("<br> <input type='text' placeholder='프로젝트 업무 내용' name='projectContent'>")
 				.append("</div>")
 				.append("</div>")
 				.append("<div class='col-lg-3 col-md-3 col-md-3 col-xs-12'>")
 				.append("<div class='jp_adp_form_wrapper'>")
 				.append("<label>프로젝트 시작일</label> <input type='date' name='projectStartDate'>")
 				.append("</div>")
 				.append("</div>")
 				.append("<div class='col-lg-3 col-md-3 col-md-3 col-xs-12'>")
 				.append("<div class='jp_adp_form_wrapper'>")
 				.append("<label>프로젝트 종료일</label> <input type='date' data-placeholder='프로젝트 종료일' name='projectEndDate'>")
 				.append("</div>")
 				.append("</div>")
 				.append("<div class='col-lg-12 col-md-12 col-md-12 col-xs-12'>")
 				.append("<div class='jp_adp_form_wrapper'>")
 				.append("<button id='addCareerBtn' type='button'>추가 +</button>")
 				.append("</div>")
 				.append("</div>")
 				.append("</div>");
 				
			
 		});
		
		

 	</script>
	<jsp:include page="../common/footer.jsp" />
</body>
</html>