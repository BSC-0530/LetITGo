<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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

</head>
<body>
		
<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
								<div class="jp_rightside_job_categories_wrapper">
									<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
									<div class="jp_rightside_job_categories_wrapper">
										<div class="jp_rightside_job_categories_heading">
											<h4>거절사유</h4>
										</div>
									<form action="${ pageContext.servletContext.contextPath }/selected/box/pop" method="post">	
									<input type="text" name="reqNo" value="${ reqNo }" />
										<div style="height: 200px; background: white;"
											class="jp_form_location_wrapper">
											
											<select style="border: 1px solid;" name="negative">
												<option value="" selected>사유를 선택해주세요</option>
												<option value="회사 정보 부적절">회사 정보 부적절</option>
												<option value="이미지 부적절">이미지 부적절</option>
												<option value="회사 소개 부적절">회사 소개 부적절</option>
											</select>
											<input type="text" placeholder="기타의견" name="text"/> 
										</div>
									<button type="submit" class="btn btn-info" onclick="send();">전송</button>
									</form>
									</div>
								</div>
							</div>
						</div>
</body>
</html>