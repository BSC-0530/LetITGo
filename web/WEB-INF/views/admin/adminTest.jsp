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
	
	<form
		action="${ pageContext.servletContext.contextPath }<%-- /jobfield/list  --%>"
		method="post">

		<!-- jp ad post Wrapper Start -->
		<div class="jp_adp_main_section_wrapper">
			<div class="container">
				<div class="row">
					<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
						
						<div class="row" id="inputCareer">
							

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
							
							<div class="col-lg-12 col-md-12 col-md-12 col-xs-12">
								<div class="jp_adp_form_wrapper">
									<button id="addCareerBtn" type="button">추가 +</button>
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
 				.append("<input type='text' placeholder='직책 *' name='carJobName'>")
 				.append("</div>")
 				.append("</div>")
 				.append("<div class='col-lg-3 col-md-3 col-md-3 col-xs-12'>")
 				.append("<div class='jp_adp_form_wrapper'>")
 				.append("<input type='text' placeholder='직책 *' name='carJobName'>")
 				.append("</div>")
 				.append("</div>")
 				.append("<div class='col-lg-3 col-md-3 col-md-3 col-xs-12'>")
 				.append("<div class='jp_adp_form_wrapper'>")
 				.append("<input type='text' placeholder='직책 *' name='carJobName'>")
 				.append("</div>")
 				.append("</div>")
 				.append("<div class='col-lg-3 col-md-3 col-md-3 col-xs-12'>")
 				.append("<div class='jp_adp_form_wrapper'>")
 				.append("<input type='text' placeholder='직책 *' name='carJobName'>")
 				.append("</div>")
 				.append("</div>")
 				.append("")
 				.append("")
 				.append("")
 				.append("</div>")
 				
			
 		});



// 		<div class="col-lg-3 col-md-3 col-md-3 col-xs-12">
// 			<div class="jp_adp_form_wrapper">
// 				<br> <input type="text" placeholder="프로젝트명"
// 					name="projectName">
// 			</div>
// 		</div>
// 		<div class="col-lg-3 col-md-3 col-md-3 col-xs-12">
// 			<div class="jp_adp_form_wrapper">
// 				<br> <input type="text" placeholder="프로젝트 업무 내용"
// 					name="projectContent">
// 			</div>
// 		</div>
// 		<div class="col-lg-3 col-md-3 col-md-3 col-xs-12">
// 			<div class="jp_adp_form_wrapper">
// 				<label>프로젝트 시작일</label> <input type="date"
// 					name="projectStartDate">
// 			</div>
// 		</div>
// 		<div class="col-lg-3 col-md-3 col-md-3 col-xs-12">
// 			<div class="jp_adp_form_wrapper">
// 				<label>프로젝트 퇴사일</label> <input type="date"
// 					data-placeholder="프로젝트 종료일" name="projectEndDate">
// 			</div>
// 		</div>
// 		<div class="col-lg-12 col-md-12 col-md-12 col-xs-12">
// 			<div class="jp_adp_form_wrapper">
// 				<button id="addCareerBtn" type="button">추가 +</button>
// 			</div>
// 		</div>
// 	</div>
// </div>
 	</script>
	
</body>
</html>