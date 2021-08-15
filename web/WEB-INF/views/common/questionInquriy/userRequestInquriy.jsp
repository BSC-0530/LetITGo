<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>    
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
				<form action="${ pageContext.servletContext.contextPath }/request/inquiry/servlet" method="post">
				<div class="jp_contact_form_box">
						<div class="col-lg-12 col-md-6 col-sm-12 col-xs-12">
							<div class="jp_contact_inputs_wrapper jp_contact_inputs2_wrapper">
								<i class="fa fa-pencil-square-o"></i><input 
								placeholder="문의제목"	name="inquiryTitle">
							</div>
						</div>
						<div class="col-lg-4 col-md-12 col-sm-12 col-xs-12">
							<div class="jp_adp_form_wrapper" style="margin-top: 30px">
						
						<select name="inquiryCategoryNo">
							<option value="" selected>-- 카테고리 선택 --</option>
						<c:forEach items="${ requestScope.categoryListSelect }" var="name" >	
							<option value="${ name.inquiryCategoryNo }">${ name.inquiryCategoryName }</option>
						</c:forEach>	
						</select>
					</div>
						</div>
						<div class="col-lg-4 col-md-12 col-sm-12 col-xs-12">
							<div class="jp_contact_inputs_wrapper jp_contact_inputs3_wrapper">
								<i class="fa-text-height"></i><input placeholder="문의일자"
									type="date" name="licenseDate">
							</div>
						</div>
						<div class="col-lg-4 col-md-12 col-sm-12 col-xs-12">
							<div class="jp_contact_inputs_wrapper jp_contact_inputs3_wrapper">
								<i class="fa fa-envelope"></i><input placeholder="이메일"
									name="email">
							</div>
						</div>
						<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
							<div class="jp_contact_inputs_wrapper jp_contact_inputs4_wrapper">
								<i class="fa fa-text-height"></i>
								<textarea name="content" rows="6" placeholder="Type Your Message *"></textarea>
							</div>
						</div>
					
					<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
						<div class="jp_contact_form_btn_wrapper">
							<ul>
								<li><a href="#"><button type="submit" id="send-btn"
											style="background-color: transparent; border: 0px transparent solid; width: 150px; height: 50px;">&nbsp;
											SEND</button>
										<i class="fa fa-plus-circle"></i> </a></li>
							</ul>
							</div>
							</div>
							<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
								<div class="jp_contact_form_btn_wrapper">
									<ul>
										<li><a href="#"><button onclick="back();"
													style="background-color: transparent; border: 0px transparent solid; width: 150px; height: 50px;">&nbsp;
													back</button>
												<i class="fa fa-plus-circle"></i> </a></li>
									</ul>
								</div>
							</div>
						</div>
					</form>
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