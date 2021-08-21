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

</head>
<body>
		
<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
								<div class="jp_rightside_job_categories_wrapper">
									<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
									<div class="jp_rightside_job_categories_wrapper">
										<div class="jp_rightside_job_categories_heading">
											<h4>거절사유</h4>
										</div>
									<input type="hidden" name="reason" value="${ reason }" />
										<div style="height: 200px; background: white;"
											class="jp_form_location_wrapper">
											<textarea rows="6" cols="60">${ reason }</textarea>
										</div>
									<button type="submit" class="btn btn-info" onclick="send();">닫기</button>
									</div>
								</div>
							</div>
						</div>
<script>
function send(button){
	window.close();
}

</script>
</body>
</html>