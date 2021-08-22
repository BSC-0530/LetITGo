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
<link rel="stylesheet" type="text/css"
	href="${ pageContext.servletContext.contextPath }/resources/css/letitgo/letitgo.css" />
</head>
<body>
			<jsp:include page="../../common/header/personalHeader.jsp"/>
<!-- 상단 검은색 -->
   <div class="jp_tittle_main_wrapper">
        <div class="jp_tittle_img_overlay"></div>
        <div class="container">
            <div class="row">
                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                    <div class="jp_tittle_heading_wrapper">
                        <div class="jp_tittle_heading">
                            <h2>공지사항</h2>
                        </div>
                        <div class="jp_tittle_breadcrumb_main_wrapper">
                            <div class="jp_tittle_breadcrumb_wrapper">
                                <ul>
                                    <li><a href="#">Home</a></li>
                                    <li><a href="#">고객센터</a></li>
                                    <li>공지사항</li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

<!-- 사이드바 -->
	<div class="jp_listing_sidebar_main_wrapper">
		<div class="container">
			<div class="row">
				<div
					class="col-lg-3 col-md-3 col-sm-12 col-xs-12 hidden-sm hidden-xs">
					<div class="row">
						<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
							<div class="jp_rightside_job_categories_wrapper">
								<div class="jp_rightside_job_categories_heading">
									<h4 style="font-weight : bold">고객센터</h4>
								</div>
								<div class="jp_rightside_job_categories_content">
									<div class="handyman_sec1_wrapper">
										<div class="content">
											<div class="box">
												<p align="center">
													<a href="${ pageContext.servletContext.contextPath }/coMem/infomationServlet">공지사항</a>
												</p>
												<br><br>
												<p align="center"> 
													<a href="${ pageContext.servletContext.contextPath }/guideline/list">개인정보처리방침</a>
												</p>
												<br><br>

												<p align="center">
													<a href="${ pageContext.servletContext.contextPath }/guideline/list">이용약관</a>
												</p>
												
												<br><br>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="col-lg-9 col-md-9 col-sm-9 col-xs-12">
					<div class="row">
						<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
							<br><br><br>
   
				<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
					<div class="jp_contact_form_heading_wrapper">
						<h2>공지사항 상세보기</h2>
					</div>
				</div>
		
				<div class="jp_contact_form_box">
						<div class="col-lg-4 col-md-6 col-sm-12 col-xs-12">
							<div class="jp_contact_inputs_wrapper jp_contact_inputs1_wrapper">
								<i class="fa fa-pencil-square-o"></i><input name="postNo"
									 value="번호 : ${ noticeDetails.postNo }" readonly="readonly">
							</div>
						</div>
						<div class="col-lg-8 col-md-6 col-sm-12 col-xs-12">
							<div class="jp_contact_inputs_wrapper jp_contact_inputs1_wrapper">
							</div>
						</div>
						<div class="col-lg-12 col-md-6 col-sm-12 col-xs-12">
							<div class="jp_contact_inputs_wrapper jp_contact_inputs3_wrapper">
								<i class="fa fa-pencil-square-o"></i><input name="postTitle"
									value="제목 : ${ noticeDetails.postTitle }" readonly="readonly">
							</div>
						</div>
						<div class="col-lg-4 col-md-6 col-sm-12 col-xs-12">
							<div class="jp_contact_inputs_wrapper jp_contact_inputs3_wrapper">
								<i class="fa fa-pencil-square-o"></i><input name="postRegistrationDate"
									 value="${ noticeDetails.postRegistrationDate }" readonly="readonly">
							</div>
						</div>
						<div class="col-lg-4 col-md-6 col-sm-12 col-xs-12">
							<div class="jp_contact_inputs_wrapper jp_contact_inputs3_wrapper">
						<c:choose>
							<c:when test="${empty noticeDetails.postModifiedDate } }">
								<i class="fa fa-pencil-square-o">
								</i><input name="postModifiedDate"placeholder="수정일: 없음" readonly="readonly">
							</c:when>
							<c:otherwise>
								<i class="fa-pencil-square-o">
								</i><input name="postModifiedDate" value="${ noticeDetails.postModifiedDate }" readonly="readonly">
							</c:otherwise>
						</c:choose>
							</div>
						</div>
						<div class="col-lg-4 col-md-6 col-sm-12 col-xs-12">
							<div class="jp_contact_inputs_wrapper jp_contact_inputs3_wrapper">
								<i class="fa fa-pencil-square-o"></i><input name="postExposureStatus"
									value="${ noticeDetails.postExposureStatus }" readonly="readonly">
							</div>
						</div>
						<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
							<div class="jp_contact_inputs_wrapper jp_contact_inputs4_wrapper">
								<i class="fa fa-text-height"></i>
								<textarea style="overflow-x:hidden; overflow-y:auto;" 
									rows="16" name="postContent" readonly="readonly">${ noticeDetails.postContent }</textarea>
							</div>
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
           
	<jsp:include page="../../common/footer.jsp"/>
</body>
</html>