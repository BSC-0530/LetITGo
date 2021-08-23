<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Let IT Go admin</title>
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
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script type="text/javascript" charset="utf8"src="https://cdn.datatables.net/1.10.25/js/jquery.dataTables.js"></script>
<link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.25/css/jquery.dataTables.css">
</head>
<body>

	<div class="jp_contact_form_main_wrapper">
		<div class="container">
			<div class="row">
				<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
					<div class="jp_contact_form_heading_wrapper">
						<h2>1:1문의</h2>
					</div>
				</div>
				<div class="jp_contact_form_box">
					<c:forEach items="${ requestScope.answerInquiry }" var="answer">
						<div class="col-lg-12 col-md-6 col-sm-12 col-xs-12">
							<div class="jp_contact_inputs_wrapper jp_contact_inputs2_wrapper">
								<i class="fa fa-pencil-square-o"></i><input readonly="readonly"
									value="${ answer.inquiryTitle }">
							</div>
						</div>
						<div class="col-lg-4 col-md-12 col-sm-12 col-xs-12">
							<div class="jp_contact_inputs_wrapper jp_contact_inputs3_wrapper">
								<i class="fa-envelope"></i><input readonly="readonly"
									value="${ answer.categoryNameDTO.inquiryCategoryName }"
									placeholder="카테고리">
							</div>
						</div>
						<div class="col-lg-4 col-md-12 col-sm-12 col-xs-12">
							<div class="jp_contact_inputs_wrapper jp_contact_inputs3_wrapper">
								<i class="fa-text-height"></i><input placeholder="문의일자"
									readonly="readonly" value="${ answer.inquiryDate }">
							</div>
						</div>
						<div class="col-lg-4 col-md-12 col-sm-12 col-xs-12">
							<div class="jp_contact_inputs_wrapper jp_contact_inputs3_wrapper">
								<i class="fa fa-envelope"></i><input placeholder="이메일"
									readonly="readonly" value="${ answer.inquiryEmail }">
							</div>
						</div>
						<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
							<div class="jp_contact_inputs_wrapper jp_contact_inputs4_wrapper">
								<i class="fa fa-text-height"></i>
								<textarea rows="6" placeholder="Type Your Message *">${ answer.inquiryContents }</textarea>
							</div>
						</div>
					</c:forEach>
					<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
						<div class="jp_contact_form_btn_wrapper">
							<br>
							<br>
							<h3>답변 내용</h3>
							<br>
						</div>
					</div>
					<c:forEach items="${requestScope.answerInquiry }" var="answer">
						<div class="col-lg-12 col-md-6 col-sm-12 col-xs-12">
							<div class="jp_contact_inputs_wrapper jp_contact_inputs2_wrapper">
								<i class="fa fa-pencil-square-o"></i><input readonly="readonly"
									value="${ answer.inquiryTitle }" placeholder="제목">
							</div>
						</div>
						<div class="col-lg-4 col-md-12 col-sm-12 col-xs-12">
							<div class="jp_contact_inputs_wrapper jp_contact_inputs3_wrapper">
								<i class="fa-envelope"></i><input readonly="readonly"
									value="${ answer.categoryNameDTO.inquiryCategoryName }"
									placeholder="카테고리">
							</div>
						</div>
						<div class="col-lg-4 col-md-12 col-sm-12 col-xs-12">
							<div class="jp_contact_inputs_wrapper jp_contact_inputs3_wrapper">
								<i class="fa-text-height"></i><input readonly="readonly"
									value="${ answer.inquiryDate } " placeholder="문의일자">
							</div>
						</div>
						<div class="col-lg-4 col-md-12 col-sm-12 col-xs-12">
							<div class="jp_contact_inputs_wrapper jp_contact_inputs3_wrapper">
								<i class="fa fa-envelope"></i><input readonly="readonly"
									value="${ answer.inquiryEmail } " placeholder="이메일">
							</div>
						</div>
					</c:forEach>
					<form action="${ pageContext.servletContext.contextPath }/admin/Answer/Servlet" method="post">
						<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
							<div class="jp_contact_inputs_wrapper jp_contact_inputs4_wrapper">
								<i class="fa fa-text-height"></i>
								<textarea name="ansContent" rows="6" placeholder="Type Your Message *"></textarea>
								<input type="hidden" name="num" value=${ requestScope.num } >
							</div>
						</div>
					<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
						<div class="jp_contact_form_btn_wrapper">
							<ul>
								<li><a href="#"><button class="btn btn-info" type="submit" id="send-btn"
											style="background-color: transparent; border: 0px transparent solid; width: 150px; height: 50px;">&nbsp;
											SEND</button>
										<i class="fa fa-plus-circle"></i> </a></li>
							</ul>
							</div>
							</div>
					</form>
							<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
								<div class="jp_contact_form_btn_wrapper">
									<ul>
										<li><a href="#"><button class="btn btn-info" onclick="back();"
													style="background-color: transparent; border: 0px transparent solid; width: 150px; height: 50px;">&nbsp;
													back</button>
												<i class="fa fa-plus-circle"></i> </a></li>
									</ul>
								</div>
							</div>
						</div>

					</div>
				</div>
			</div>
	<script>
	function back(back){
		window.history.back();
	}	
</script>
</body>
</html>