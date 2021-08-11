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
<script>
	
	var count = 1;
	var careerDiv = 
	
	$(document).ready(function() {
		$('.addCareerBtn').click(function() {
			$('#inputCareer').append(count);
			
			count += 1;
		});
	});

</script>
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
									<li><a href="#">Home</a></li>

									<li>> 이력서 ></li>

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
									name="title">
							</h3>
						</div>
						<div class="jp_adp_form_wrapper">
							<h3>직무 선택</h3>
							<br> <label><input
								style="width: 20px; height: 20px; border: 1px;" type="radio"
								id="jobField" value="sb" name="jobGroup">서버/백엔드</label> <label><input
								style="width: 20px; height: 20px; border: 1px;" type="radio"
								id="jobField" value="fe" name="jobGroup">프론트엔드</label> <label><input
								style="width: 20px; height: 20px; border: 1px;" type="radio"
								id="jobField" value="wf" name="jobGroup">웹 풀스택</label> <label><input
								style="width: 20px; height: 20px; border: 1px;" type="radio"
								id="jobField" value="mw" name="jobGroup">모바일 웹</label> <label><input
								style="width: 20px; height: 20px; border: 1px;" type="radio"
								id="jobField" value="gc" name="jobGroup">게임 클라이언트</label> <label><input
								style="width: 20px; height: 20px; border: 1px;" type="radio"
								id="jobField" value="gs" name="jobGroup">게임 서버</label> <label><input
								style="width: 20px; height: 20px; border: 1px;" type="radio"
								id="jobField" value="dba" name="jobGroup">데이터 엔지니어(DBA)</label><br>
							<label><input
								style="width: 20px; height: 20px; border: 1px;" type="radio"
								id="jobField" value="ml" name="jobGroup">인공지능/머신러닝</label> <label><input
								style="width: 20px; height: 20px; border: 1px;" type="radio"
								id="jobField" value="se" name="jobGroup">시스템 엔지니어</label> <label><input
								style="width: 20px; height: 20px; border: 1px;" type="radio"
								id="jobField" value="pr" name="jobGroup">보안</label> <label><input
								style="width: 20px; height: 20px; border: 1px;" type="radio"
								id="jobField" value="qa" name="jobGroup">QA</label> <label><input
								style="width: 20px; height: 20px; border: 1px;" type="radio"
								id="jobField" value="pm" name="jobGroup">프로젝트 매니저</label> <label><input
								style="width: 20px; height: 20px; border: 1px;" type="radio"
								id="jobField" value="hw" name="jobGroup">HW/임베디드</label> <label><input
								style="width: 20px; height: 20px; border: 1px;" type="radio"
								id="jobField" value="sw" name="jobGroup">SW/솔루션</label>
						</div>
							<button type="button" class="addCareerBtn">+</button>
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
									<br>
									<br> <label><input
										style="width: 17px; height: 17px; border: 1px;"
										type="checkbox" name="hiringCheck"> 현재 재직 중</label>
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
						</div>
						<div class="jp_adp_form_wrapper">
							<h3>포트폴리오 링크</h3>
							<br> 깃랩, 노션으로 작성한 포트폴리오 주소 or 구글 드라이브 파일 등 업무 성과를 보여줄 수 있는
							파일이 있다면 첨부해주세요. <input type="text" placeholder="Https://"
								name="potLinkAddress">
						</div>
					</div>

					<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
						<div class="jp_adp_textarea_main_wrapper">
							<h3>자기소개서</h3>
							<textarea rows="7" placeholder="Job Description"></textarea>
						</div>
					</div>
					<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
						<div class="jp_adp_choose_resume">
							<p>Company Post</p>
							<div class="custom-input">
								<span><i class="fa fa-upload"></i> &nbsp;Upload Job Post</span>
								<input type="file" name="resume" id="resume">
							</div>
						</div>
					</div>
					<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
						<div class="jp_adp_choose_resume_bottom_btn_post">
							<ul>
								<li><button type="submit">이력서 등록</button></li>
							</ul>
						</div>
					</div>

				</div>
			</div>
		</div>
		<!-- jp ad post Wrapper End -->

	</form>
	<jsp:include page="../common/footer.jsp" />
</body>
</html>