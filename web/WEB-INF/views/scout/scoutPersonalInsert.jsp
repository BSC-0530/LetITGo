<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri="http://java.sun.com/jsp/jstl/core" %>
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
	<jsp:include page="../common/header/personalHeader.jsp"/>
	
	<div class="jp_tittle_main_wrapper">
        <div class="jp_tittle_img_overlay"></div>
        <div class="container">
            <div class="row">
                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                    <div class="jp_tittle_heading_wrapper">
                        <div class="jp_tittle_heading">
                            <h2>스카우트 등록</h2>
                        </div>
                        <div class="jp_tittle_breadcrumb_main_wrapper">
                            <div class="jp_tittle_breadcrumb_wrapper">
                                <ul>
                                    <li><a href="#">Home</a> <i class="fa fa-angle-right"></i></li>
                                    <li><a href="#">스카우트</a> <i class="fa fa-angle-right"></i></li>
                                    <li>스카우트 등록</li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

	<form
		action="${ pageContext.servletContext.contextPath }/scout/personal/insert"
		method="post">


		<c:forEach items="${ resumeList }" var="resume">
			
			<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 jp_cl_right_bar">
				<div class="row">
					<div class="col-lg-3 col-md-3 col-sm-3 col-xs-12"></div>
					<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
						<div class="jp_recent_resume_box_wrapper">

							<div class="jp_recent_resume_cont_wrapper">
								<h3>
									<input type="hidden" name="resumeNo" value="${ resume.resumeNo }">
									<c:out value="${ resume.resumeTitle }"></c:out>
								</h3>
								<p>
									<i class="fa fa-folder-open-o"></i> <a href="#"><c:out
											value="${ resume.resumeWriteDate }"></c:out></a>
								</p>
							</div>
							<div class="jp_recent_resume_btn_wrapper">
								
								<button class="btn_info">
									스카우트 이력서 등록
								</button>
							</div>
						</div>
					</div>
				</div>
			</div>

		</c:forEach>
	</form>


	<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 jp_cl_right_bar"></div>
	<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 jp_cl_right_bar"></div>
	
	
	<jsp:include page="../common/footer.jsp"/>
</body>
</html>