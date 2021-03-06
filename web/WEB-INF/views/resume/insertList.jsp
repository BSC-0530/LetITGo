<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">

<script src="https://code.jquery.com/jquery-1.12.4.js"></script>

<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>

<script type="text/javascript">
	
	$(document).ready(function() {
		$("#searchSkillsAuto").autocomplete({
			source: function(request, response) {
				$.ajax({
					url: "${ pageContext.servletContext.contextPath }/search/auto/skills",
					type: "POST",
					data: { term: request.term },
					dataType: "json",
					success: function(data, textStatus, xnr) {
						response($.map(data, function(item) {
							console.log(item);
							return {
								label: item.skillsName,
								value: item.value
							};
						}));
					},
					error: function(xnr, status, error) {
						console.log(xnr);
					}
				});
			},
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
                            <h2>????????? ??????</h2>
                        </div>
                        <div class="jp_tittle_breadcrumb_main_wrapper">
                            <div class="jp_tittle_breadcrumb_wrapper">
                                <ul>
                                    <li><a href="#">Home</a> <i class="fa fa-angle-right"></i></li>
                                    <li><a href="#">?????????</a> <i class="fa fa-angle-right"></i></li>
                                    <li>????????? ??????</li>
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
								????????? ??????<input type="text" placeholder="????????? ????????? ??????????????????."
									name="resumeTitle">
							</h3>
						</div>
						<div class="jp_adp_form_wrapper">
							<h3>?????? / ??????</h3>
							<br> <label><input
								style="width: 20px; height: 20px; border: 1px;" type="radio"
								id="jobNo" value="1" name="jobNo">??????/?????????</label> <label><input
								style="width: 20px; height: 20px; border: 1px;" type="radio"
								id="jobNo" value="2" name="jobNo">???????????????</label> <label><input
								style="width: 20px; height: 20px; border: 1px;" type="radio"
								id="jobNo" value="3" name="jobNo">??? ?????????</label> <label><input
								style="width: 20px; height: 20px; border: 1px;" type="radio"
								id="jobNo" value="4" name="jobNo">????????? ???</label> <label><input
								style="width: 20px; height: 20px; border: 1px;" type="radio"
								id="jobNo" value="5" name="jobNo">?????? ???????????????</label> <label><input
								style="width: 20px; height: 20px; border: 1px;" type="radio"
								id="jobNo" value="6" name="jobNo">?????? ??????</label> <label><input
								style="width: 20px; height: 20px; border: 1px;" type="radio"
								id="jobNo" value="7" name="jobNo">????????? ????????????(DBA)</label><br>
							<label><input
								style="width: 20px; height: 20px; border: 1px;" type="radio"
								id="jobNo" value="8" name="jobNo">????????????/????????????</label> <label><input
								style="width: 20px; height: 20px; border: 1px;" type="radio"
								id="jobNo" value="9" name="jobNo">????????? ????????????</label> <label><input
								style="width: 20px; height: 20px; border: 1px;" type="radio"
								id="jobNo" value="10" name="jobNo">??????</label> <label><input
								style="width: 20px; height: 20px; border: 1px;" type="radio"
								id="jobNo" value="11" name="jobNo">QA</label> <label><input
								style="width: 20px; height: 20px; border: 1px;" type="radio"
								id="jobNo" value="12" name="jobNo">???????????? ?????????</label> <label><input
								style="width: 20px; height: 20px; border: 1px;" type="radio"
								id="jobNo" value="13" name="jobNo">HW/????????????</label> <label><input
								style="width: 20px; height: 20px; border: 1px;" type="radio"
								id="jobNo" value="14" name="jobNo">SW/?????????</label>
						</div>
						
						<div class="row" id="inputSkills">
							<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
								<div class="jp_adp_form_wrapper">
									<h3>?????? ??????</h3>
									<label for="searchSkillsAuto">
										<input id="searchSkillsAuto" name="inputSkill">
									</label>
								</div>
							</div>
							<div class="col-lg-12 col-md-12 col-md-12 col-xs-12">
								<div class="jp_adp_form_wrapper">
									<button id="addSkillBtn" type="button">?????? +</button>
								</div>
							</div>
						</div>
						
						<div class="row" id="inputCareer">
							<div class="col-lg-3 col-md-3 col-md-3 col-xs-12">
								<div class="jp_adp_form_wrapper">
								
									<input type="text" placeholder="????????? *" name="carComName">
								</div>
							</div>
							<div class="col-lg-3 col-md-3 col-md-3 col-xs-12">
								<div class="jp_adp_form_wrapper">
									<input type="text" placeholder="????????? *" name="carDeptName">
								</div>
							</div>
							<div class="col-lg-3 col-md-3 col-md-3 col-xs-12">
								<div class="jp_adp_form_wrapper">
									<input type="text" placeholder="?????? *" name="carJobName">
								</div>
							</div>
							<div class="col-lg-3 col-md-3 col-md-3 col-xs-12">
								<div class="jp_adp_form_wrapper">
									<input type="text" placeholder="?????? ?????? *" name="carWorkField">
								</div>
							</div>
							<div class="col-lg-3 col-md-3 col-md-3 col-xs-12">
								<div class="jp_adp_form_wrapper">
									<label>????????? *</label> <input type="date" name="carHireDate">
								</div>
							</div>
							<div class="col-lg-3 col-md-3 col-md-3 col-xs-12">
								<div class="jp_adp_form_wrapper">
									<label>????????? *</label> <input type="date" name="carEntDate">
								</div>
							</div>
							<div class="col-lg-3 col-md-3 col-md-3 col-xs-12">
								<div class="jp_adp_form_wrapper">
									<br> <br> <label><input
										style="width: 17px; height: 17px; border: 1px;"
										type="checkbox" name="carStatus"> ?????? ?????? ???</label>
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
									<br> <input type="text" placeholder="???????????????"
										name="projectName">
								</div>
							</div>
							<div class="col-lg-3 col-md-3 col-md-3 col-xs-12">
								<div class="jp_adp_form_wrapper">
									<br> <input type="text" placeholder="???????????? ?????? ??????"
										name="projectContent">
								</div>
							</div>
							<div class="col-lg-3 col-md-3 col-md-3 col-xs-12">
								<div class="jp_adp_form_wrapper">
									<label>???????????? ?????????</label> <input type="date"
										name="projectStartDate">
								</div>
							</div>
							<div class="col-lg-3 col-md-3 col-md-3 col-xs-12">
								<div class="jp_adp_form_wrapper">
									<label>???????????? ?????????</label> <input type="date"
										data-placeholder="???????????? ?????????" name="projectEndDate">
								</div>
							</div>
							<div class="col-lg-12 col-md-12 col-md-12 col-xs-12">
								<div class="jp_adp_form_wrapper">
									<button id="addCareerBtn" type="button">?????? +</button>
								</div>
							</div>
						</div>
						<div class="jp_adp_form_wrapper">
							<h3>??????????????? ??????</h3>
							<br> ??????, ???????????? ????????? ??????????????? ?????? or ?????? ???????????? ?????? ??? ?????? ????????? ????????? ??? ??????
							????????? ????????? ??????????????????. <input type="text" placeholder="Https://"
								name="potLinkAddress">
						</div>
					</div>
					<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
						<div class="jp_adp_choose_resume">
							<h3>??????????????? ??????</h3>
							<div class="custom-input">
								<span><i class="fa fa-upload"></i>????????????</span> <input type="file"
									name="potFilePath" id="potFilePath">
							</div>
						</div>
					</div>

					<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12" id="inputIntro">
						<div class="jp_adp_textarea_main_wrapper" id="selfIntro">
							<h3>???????????????</h3>
							<select name="selfIntroItemNo">
								<option value="" selected>-- ???????????? ?????? --</option>
								<option value="1">????????????</option>
								<option value="2">????????????</option>
								<option value="3">???????????????</option>
								<option value="4">???????????????</option>
							</select>
							<textarea rows="7" placeholder="????????? ?????? ????????? ???????????????"
								name="selfIntroItemContent"></textarea>
						</div>
						<div class="col-lg-12 col-md-12 col-md-12 col-xs-12">
								<div class="jp_adp_form_wrapper">
									<button id="addIntroBtn" type="button">?????? +</button>
								</div>
							</div>
					</div>
					<br> <br>
					<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
					
						<div class="row" id="inputLicense">
							<div class="col-lg-3 col-md-3 col-md-3 col-xs-12">
								<div class="jp_adp_form_wrapper">
									<h3>????????? ??????</h3>
									<input type="text" placeholder="????????? ???" name="licenseName">
								</div>
							</div>
							<div class="col-lg-3 col-md-3 col-md-3 col-xs-12">
								<div class="jp_adp_form_wrapper">
	
									<br> <input type="text" placeholder="?????????"
										name="licenseAgency">
								</div>
							</div>
							<div class="col-lg-3 col-md-3 col-md-3 col-xs-12">
								<div class="jp_adp_form_wrapper">
									<label>????????? ?????????</label> <input type="date" name="licenseDate">
								</div>
							</div>
							<div class="col-lg-12 col-md-12 col-md-12 col-xs-12">
									<div class="jp_adp_form_wrapper">
										<button id="addLicenseBtn" type="button">?????? +</button>
									</div>
								</div>
						</div>
					</div>
					<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
					
						<div class="row" id="inputEdu">
							<div class="col-lg-3 col-md-3 col-md-3 col-xs-12">
								<div class="jp_adp_form_wrapper">
									<h3>?????? ??????</h3>
									<input type="text" placeholder="?????????" name="eduName">
								</div>
							</div>
							<div class="col-lg-3 col-md-3 col-md-3 col-xs-12">
								<div class="jp_adp_form_wrapper">
									<br> <input type="text" placeholder="????????????" name="eduAgency">
								</div>
							</div>
							<div class="col-lg-3 col-md-3 col-md-3 col-xs-12">
								<div class="jp_adp_form_wrapper">
									<label>?????? ?????????</label> <input type="date" name="eduStartDate">
								</div>
							</div>
							<div class="col-lg-3 col-md-3 col-md-3 col-xs-12">
								<div class="jp_adp_form_wrapper">
									<label>?????? ?????????</label> <input type="date"
										data-placeholder="???????????? ?????????" name="eduEndDate">
								</div>
							</div>
							<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
								<div class="jp_adp_textarea_main_wrapper">
									<h5>?????? ??????</h5>
									<textarea rows="7" placeholder="?????? ????????? ???????????????"
										name="eduContent"></textarea>
								</div>
							</div>
							<div class="col-lg-12 col-md-12 col-md-12 col-xs-12">
								<div class="jp_adp_form_wrapper">
									<button id="addEduBtn" type="button">?????? +</button>
								</div>
							</div>
						</div>
					</div>
					<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
					
						<div class="row" id="inputAwd">
							<div class="col-lg-3 col-md-3 col-md-3 col-xs-12">
								<div class="jp_adp_form_wrapper">
									<h3>?????? ??????</h3>
									<input type="text" placeholder="?????? ??????" name="awdName">
								</div>
							</div>
							<div class="col-lg-3 col-md-3 col-md-3 col-xs-12">
								<div class="jp_adp_form_wrapper">
									<br> <input type="text" placeholder="????????????" name="awdAgency">
								</div>
							</div>
							<div class="col-lg-3 col-md-3 col-md-3 col-xs-12">
								<div class="jp_adp_form_wrapper">
									<label>?????? ??????</label> <input type="date" name="awdDate">
								</div>
							</div>
							<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
								<div class="jp_adp_textarea_main_wrapper">
									<h5>?????? ??????</h5>
									<textarea rows="7" placeholder="?????? ????????? ???????????????"
										name="awdContent"></textarea>
								</div>
							</div>
							<div class="col-lg-12 col-md-12 col-md-12 col-xs-12">
								<div class="jp_adp_form_wrapper">
									<button id="addAwdBtn" type="button">?????? +</button>
								</div>
							</div>
						</div>
					</div>

					<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
						<div class="jp_adp_choose_resume_bottom_btn_post">
							<ul>
								<li><button id="sendResume" type="submit">????????? ??????</button></li>
							</ul>
						</div>
					</div>

				</div>
			</div>
		</div>
		<!-- jp ad post Wrapper End -->

	</form>
	
 	<script type="text/javascript">
 	 	$(document).on('click','#addCareerBtn',function() {
 	 		
 			$('#inputCareer')
 				.append('<div class="jp_adp_main_section_wrapper">')
 				.append('<div class="container">')
 				.append('<div class="row">')
 				.append('<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">')
 				.append("<div class='row' id='inputCareer'>")
 				.append("<div class='col-lg-3 col-md-3 col-md-3 col-xs-12'>")
 				.append("<div class='jp_adp_form_wrapper'>")
 				.append("<input type='text' placeholder='????????? *' name='carComName'>")
 				.append("</div>")
 				.append("</div>")
 				.append("<div class='col-lg-3 col-md-3 col-md-3 col-xs-12'>")
 				.append("<div class='jp_adp_form_wrapper'>")
 				.append("<input type='text' placeholder='????????? *' name='carDeptName'>")
 				.append("</div>")
 				.append("</div>")
 				.append("<div class='col-lg-3 col-md-3 col-md-3 col-xs-12'>")
 				.append("<div class='jp_adp_form_wrapper'>")
 				.append("<input type='text' placeholder='?????? *' name='carJobName'>")
 				.append("</div>")
 				.append("</div>")
 				.append("<div class='col-lg-3 col-md-3 col-md-3 col-xs-12'>")
 				.append("<div class='jp_adp_form_wrapper'>")
 				.append("<input type='text' placeholder='?????? ?????? *' name='carWorkField'>")
 				.append("</div>")
 				.append("</div>")
 				.append("<div class='col-lg-3 col-md-3 col-md-3 col-xs-12'>")
 				.append("<div class='jp_adp_form_wrapper'>")
 				.append("<label>????????? *</label> <input type='date' name='carHireDate'>")
 				.append("</div>")
 				.append("</div>")
 				.append("<div class='col-lg-3 col-md-3 col-md-3 col-xs-12'>")
 				.append("<div class='jp_adp_form_wrapper'>")
 				.append("<label>????????? *</label> <input type='date' name='carEntDate'>")
 				.append("</div>")
 				.append("</div>")
 				.append("<div class='col-lg-3 col-md-3 col-md-3 col-xs-12'>")
 				.append("<div class='jp_adp_form_wrapper'>")
 				.append("<br> <br> <label><input style='width: 17px; height: 17px; border: 1px;' type='checkbox' name='carStatus'> ?????? ?????? ???</label>")
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
 				.append("<br> <input type='text' placeholder='???????????????' name='projectName'>")
 				.append("</div>")
 				.append("</div>")
 				.append("<div class='col-lg-3 col-md-3 col-md-3 col-xs-12'>")
 				.append("<div class='jp_adp_form_wrapper'>")
 				.append("<br> <input type='text' placeholder='???????????? ?????? ??????' name='projectContent'>")
 				.append("</div>")
 				.append("</div>")
 				.append("<div class='col-lg-3 col-md-3 col-md-3 col-xs-12'>")
 				.append("<div class='jp_adp_form_wrapper'>")
 				.append("<label>???????????? ?????????</label> <input type='date' name='projectStartDate'>")
 				.append("</div>")
 				.append("</div>")
 				.append("<div class='col-lg-3 col-md-3 col-md-3 col-xs-12'>")
 				.append("<div class='jp_adp_form_wrapper'>")
 				.append("<label>???????????? ?????????</label> <input type='date' data-placeholder='???????????? ?????????' name='projectEndDate'>")
 				.append("</div>")
 				.append("</div>")
 				.append("<div class='col-lg-12 col-md-12 col-md-12 col-xs-12'>")
 				.append("<div class='jp_adp_form_wrapper'>")
 				.append("<button id='addCareerBtn' type='button'>?????? +</button>")
 				.append("</div>")
 				.append("</div>")
 				.append("</div>")
 				.append("</div>")
 				.append("</div>")
 				.append("</div>")
 				.append("</div>").trigger('create');
 		 
 	 });
 	 	
 	 $(document).on('click', '#addIntroBtn', function() {
 		$('#inputIntro').append('<div class="jp_adp_main_section_wrapper">')
						.append('<div class="container">')
						.append('<div class="row">')
						.append('<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">')
 						.append('<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12" id="inputIntro">')
 						.append('<div class="jp_adp_textarea_main_wrapper" id="selfIntro">')
 						.append('<h3>???????????????</h3>')
 						.append('<select name="selfIntroItemNo">')
 						.append('<option value="" selected>-- ???????????? ?????? --</option>')
 						.append('<option value="1">????????????</option>')
 						.append('<option value="2">????????????</option>')
 						.append('<option value="3">???????????????</option>')
 						.append('<option value="4">???????????????</option>')
 						.append('</select>')
 						.append('<textarea rows="7" placeholder="????????? ?????? ????????? ???????????????" name="selfIntroItemContent"></textarea>')
 						.append('</div>')
 						.append('<div class="col-lg-12 col-md-12 col-md-12 col-xs-12">')
 						.append('<div class="jp_adp_form_wrapper">')
 						.append('<button id="addIntroBtn" type="button">?????? +</button>')
 						.append('</div></div></div>')
 						.append('</div></div></div></div>');
 	 });
 	 
 	 $(document).on('click', '#addLicenseBtn', function() {
 		$('#inputLicense').append('<div class="col-lg-3 col-md-3 col-md-3 col-xs-12">')
			.append('<div class="jp_adp_form_wrapper">')
			.append('<h3>????????? ??????</h3>')
			.append('<input type="text" placeholder="????????? ???" name="licenseName">')
			.append('</div></div>')
			.append('<div class="col-lg-3 col-md-3 col-md-3 col-xs-12">')
			.append('<div class="jp_adp_form_wrapper">')
			.append('<br> <input type="text" placeholder="?????????" name="licenseAgency">')
			.append('</div></div>')
			.append('<div class="col-lg-3 col-md-3 col-md-3 col-xs-12">')
			.append('<div class="jp_adp_form_wrapper">')
			.append('<label>????????? ?????????</label> <input type="date" name="licenseDate">')
			.append('</div></div>')
			.append('<div class="col-lg-12 col-md-12 col-md-12 col-xs-12">')
			.append('<div class="jp_adp_form_wrapper">')
			.append('<button id="addLicenseBtn" type="button">?????? +</button>')
			.append('</div></div>');
 	 });
 	 
 	 $(document).on('click', '#addEduBtn', function() {
 		 $('#inputEdu').append('<div class="col-lg-3 col-md-3 col-md-3 col-xs-12">')
 		 				.append('<div class="jp_adp_form_wrapper">')
 		 				.append('<h3>?????? ??????</h3>')
 		 				.append('<input type="text" placeholder="?????????" name="eduName">')
 		 				.append('</div></div>')
 		 				.append('<div class="col-lg-3 col-md-3 col-md-3 col-xs-12">')
 		 				.append('<div class="jp_adp_form_wrapper">')
 		 				.append('<br> <input type="text" placeholder="????????????" name="eduAgency">')
 		 				.append('</div></div>')
 		 				.append('<div class="col-lg-3 col-md-3 col-md-3 col-xs-12">')
 		 				.append('<div class="jp_adp_form_wrapper">')
 		 				.append('<label>?????? ?????????</label> <input type="date" name="eduStartDate">')
 		 				.append('</div></div>')
 		 				.append('<div class="col-lg-3 col-md-3 col-md-3 col-xs-12">')
 		 				.append('<div class="jp_adp_form_wrapper">')
 		 				.append('<label>?????? ?????????</label> <input type="date" data-placeholder="???????????? ?????????" name="eduEndDate">')
 		 				.append('</div></div>')
 		 				.append('<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">')
 		 				.append('<div class="jp_adp_textarea_main_wrapper">')
 		 				.append('<h5>?????? ??????</h5>')
 		 				.append('<textarea rows="7" placeholder="?????? ????????? ???????????????" name="eduContent"></textarea>')
 		 				.append('</div></div>')
 		 				.append('<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">')
 		 				.append('<div class="jp_adp_form_wrapper">')
 		 				.append('<button id="addEduBtn" type="button">?????? +</button>')
 		 				.append('</div></div>');
 	 });
 	 
 	 $(document).on('click', '#addAwdBtn', function() {
 		 $('#inputAwd').append('<div class="col-lg-3 col-md-3 col-md-3 col-xs-12">')
 		 				.append('<div class="jp_adp_form_wrapper">')
 		 				.append('<h3>?????? ??????</h3>')
 		 				.append('<input type="text" placeholder="?????? ??????" name="awdName">')
 		 				.append('</div></div>')
 		 				.append('<div class="col-lg-3 col-md-3 col-md-3 col-xs-12">')
 		 				.append('<div class="jp_adp_form_wrapper">')
 		 				.append('<br> <input type="text" placeholder="????????????" name="awdAgency">')
 		 				.append('</div></div>')
 		 				.append('<div class="col-lg-3 col-md-3 col-md-3 col-xs-12">')
 		 				.append('<div class="jp_adp_form_wrapper">')
 		 				.append('<label>?????? ??????</label> <input type="date" name="awdDate">')
 		 				.append('</div></div>')
 		 				.append('<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">')
 		 				.append('<div class="jp_adp_textarea_main_wrapper">')
 		 				.append('<h5>?????? ??????</h5>')
 		 				.append('<textarea rows="7" placeholder="?????? ????????? ???????????????" name="awdContent"></textarea>')
 		 				.append('</div></div>')
 		 				.append('<div class="col-lg-12 col-md-12 col-md-12 col-xs-12">')
 		 				.append('<div class="jp_adp_form_wrapper">')
 		 				.append('<button id="addAwdBtn" type="button">?????? +</button>')
 		 				.append('</div></div>');
 	 });
 	 
 	 $(document).on('click', '#addSkillBtn', function() {
 		$('#inputSkills').append('<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">')
 						.append('<div class="jp_adp_form_wrapper">')
 						.append('<label for="searchSkillsAuto">')
 						.append('<input id="searchSkillsAuto" name="inputSkill">')
 						.append('</label></div></div>').trigger('create');
 	 });


 	</script>
	<jsp:include page="../common/footer.jsp" />
</body>
</html>