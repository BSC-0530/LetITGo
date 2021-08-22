<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page import="java.util.*"%>
<%
    request.setCharacterEncoding("UTF-8");
%>    
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
<% request.setCharacterEncoding("UTF-8"); %>
 <div class="jp_listing_sidebar_main_wrapper">
		<div class="container" style="width: 1400px">
			<div class="row">
				<div
					class="col-lg-6 col-md-3 col-sm-12 col-xs-12 hidden-sm hidden-xs">
					<div class="row">
						<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
							<div class="jp_rightside_job_categories_wrapper">
								<div class="jp_rightside_job_categories_heading">
									<h4 style="font-weight: bold">수정 전</h4>
								</div>
								<div class="jp_rightside_job_categories_content">
									<div class="row">
						<div class="col-lg-9 col-md-9 col-sm-12 col-xs-12">
                <div class="row">
                    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                        <div class="jp_listing_tabs_wrapper">
                            <!--                             이거는 이제 정보뜨는 칸 -->
                            <div class="tab-pane fade in active register_left_form"
                                id="contentOne-1">

                                <div class="jp_regiter_top_heading">
                                    <p><h1>이미지 변경</h1></p>
                                    <input type="hidden" name="memNo" value= " ${ memNo }" >
                                    <div
									class="form-group col-md-12 col-sm-6 col-xs-12 custom_input">
									<p>회사 로고</p>
									<img name="repreFile" src="${ pageContext.servletContext.contextPath }${ logoFile }" width="300" height="300">
									<p></p>
									<p>회사 대표이미지</p>
									<img name="repreFile" src="${ pageContext.servletContext.contextPath }${ repreFile }" width="300" height="300">
									<p></p>
									<p>사업자 등록증</p>
                              	<img name="businFile" src="${ pageContext.servletContext.contextPath }${ businFile }" width="300" height="300">
                                </div>
                      			  </div>               
                    </div>
                </div>
                </div>
                </div>
                </div>
					</div>
					<br>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div
					class="col-lg-6 col-md-3 col-sm-12 col-xs-12 hidden-sm hidden-xs">
					<div class="row">
						<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
							<div class="jp_rightside_job_categories_wrapper">
								<div class="jp_rightside_job_categories_heading">
									<h4 style="font-weight: bold">수정 후</h4>
								</div>
								<div class="jp_rightside_job_categories_content">
									<div class="handyman_sec1_wrapper">
										<div class="row">
						<div class="col-lg-9 col-md-9 col-sm-12 col-xs-12">
                <div class="row">
                    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                        <div class="jp_listing_tabs_wrapper">
                            <!--                             이거는 이제 정보뜨는 칸 -->
                            <div class="tab-pane fade in active register_left_form"
                                id="contentOne-1">

		<form action="${ pageContext.servletContext.contextPath }/request/detailImage/servlet" method="post" accept-charset="utf-8" onsubmit="positive();">
                                <div class="jp_regiter_top_heading">
                                    <p><h1>이미지 변경</h1></p>
                                    <input type="hidden" name="memNo" value="${ memNo }" >
                                    <div
									class="form-group col-md-12 col-sm-6 col-xs-12 custom_input">
									<p>회사 로고</p>
									<c:if test="${ reqLogoFile eq null }">
									<img name="orgLogoFile" src="${ pageContext.servletContext.contextPath }${ logoFile }" width="300" height="300">
									</c:if>
									<c:if test="${ reqLogoFile ne null }">
									<img name="repreFile" src="${ pageContext.servletContext.contextPath }${ reqLogoFile }" width="300" height="300">
									<input type="text" name="repreFileName" value= "${ logoName }" />
									<input type="text" name="repreOrignFileName" value="${ logoNameOrign }"/>
									</c:if>
									<p></p>
									<p>회사 대표이미지</p>
									<c:if test="${ reqRepreFile eq null }">
									<img name="orgpreFile" src="${ pageContext.servletContext.contextPath }${ repreFile }" width="300" height="300">
									</c:if>
									<c:if test="${reqRepreFile ne null }" >
									<img name="repreFile" src="${ pageContext.servletContext.contextPath }${ reqRepreFile }" width="300" height="300">
									</c:if>
									
									
									<p></p>
									<p>사업자 등록증</p>
									<c:if test="${ reqRepreFile eq null }">
									<img name="orgbusinFile" src="${ pageContext.servletContext.contextPath }${ businFile }" width="300" height="300">
									</c:if>
									<c:if test="${ reqBusinFile ne null }">
                              	<img name="businFile" src="${ pageContext.servletContext.contextPath }${ reqBusinFile }" width="300" height="300">
                              	</c:if>
                                </div>
                      			  </div>             
                      			  <button type="submit" style="margin-left:80%;"class="btn btn-info">수락</button>  
				</form>
                    </div>
                </div>
                </div>
                </div>
                </div>
					</div>
					<br>
									</div>
								</div>
							</div>
						</div>
					</div>

				<div class="col-lg-9 col-md-9 col-sm-9 col-xs-12">
					<div class="row">
						<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
							<br><br><br>
								<div class="jp_contact_form_btn_wrapper">
									<ul>
										<li><a href="#"><button type="button" onclick="back();"
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
           
           </body>
<script>
function positive(){
	
	var answer;
	answer = confirm('요청을 승낙합니다.');
	
	if(answer == true){
		return true;
	}
	else if(answer == false){
		return false;
	}
}	
</script>           
<script>
	function back(back){
		window.history.back();
	}	
</script>
<script>
	function negative(button){
		
		const coReqNo = document.getElementById("popNo").value;
		
// 		alert(coReqNo);
		window.open("/let/selected/box/pop?coReqNo="+coReqNo, "width=150, height=150, resizable = no, scorllbars = no")
		
	}	
</script>