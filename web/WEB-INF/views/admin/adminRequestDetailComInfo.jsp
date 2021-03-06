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
</head>
<body>
<% request.setCharacterEncoding("UTF-8"); %>
 <div class="jp_listing_sidebar_main_wrapper">
	<form action="${ pageContext.servletContext.contextPath }/request/detailComInfo/servlet" method="post" accept-charset="utf-8" onsubmit="positive();">
		<div class="container" style="width: 1400px">
			<div class="row">
				<div
					class="col-lg-6 col-md-3 col-sm-12 col-xs-12 hidden-sm hidden-xs">
					<div class="row">
						<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
							<div class="jp_rightside_job_categories_wrapper">
								<div class="jp_rightside_job_categories_heading">
									<h4 style="font-weight: bold">?????? ???</h4>
								</div>
								<div class="jp_rightside_job_categories_content">
									<div class="row">
						<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
							<div class="jp_listing_tabs_wrapper">

								<!--                             ????????? ?????? ???????????? ??? -->
								<input type="hidden" name="comDTO" value="${ orginInfo }">
								<input type="hidden" name="coMemNo" value="${ orginInfo.coMemNo }">
								<div class="tab-pane fade in active register_left_form"
									id="contentOne-1">

									<div class="jp_regiter_top_heading">
										<p><h1>????????????</h1></p>
										<img name=logoImage src="${ pageContext.servletContext.contextPath }${ logoImage }" width="150" height="150">
									</div>
									
									<div class="row">
										<!--Form Group-->
										<div class="form-group col-md-6 col-sm-6 col-xs-12">
											<label>?????????????????????:</label><input type="text" name="coNo" value="${ orginInfo.coNo }" readonly>
										</div>
										<!--Form Group-->
										<div class="form-group col-md-6 col-sm-6 col-xs-12">
											<label>????????????:</label><input type="text" name="webSite" value="${ orginInfo.webSite }" readonly>
										</div>
										<!--Form Group-->
										<div class="form-group col-md-6 col-sm-6 col-xs-12">


											<label>????????????:</label><input type="text" name="coComName" value="${orginInfo.coComName }" readonly>
										</div>
										<!--Form Group-->
										<div class="form-group col-md-6 col-sm-6 col-xs-12">
											<label>???????????????:</label><input type="text" name="coCeoName" value="${orginInfo.coCeoName }" readonly>
										
										</div>
										<!--Form Group-->
										<div class="form-group col-md-6 col-sm-6 col-xs-12">
											<label>??????:</label><input type="text" name="secTors" value="${ orginInfo.coSectors }" readonly>
										</div>
										<div class="form-group col-md-6 col-sm-6 col-xs-12">
											<label>??????:</label><input type="text" name="coStatus" value="${ orginInfo.coStatus }" readonly>
										</div>
										<div class="form-group col-md-6 col-sm-6 col-xs-12">
											<label>??????:</label><input type="text" name="address" value="${ orginInfo.coAddress }" readonly>
										</div>
										<div class="form-group col-md-4 col-sm-6 col-xs-12">
											<label>??????????????????:</label><input type="text" name="coPhone" value="${ orginInfo.coPhone }" readonly>
										</div>
										<div class="form-group col-md-6 col-sm-6 col-xs-12">
											<label>????????????:</label><input type="text" name="coPax" value="${ orginInfo.coPax }" readonly>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<br>
					<div class="companyText">	
                              	<label>????????????</label><input id="textArea" name="intro" value="${ orginInfo.coIntro  }" readonly >
                              	<img name=representativeImage src="${ pageContext.servletContext.contextPath }${ representativeImage }" width="150" height="150">
                              	<img name=businessRegistration src="${ pageContext.servletContext.contextPath }${ businessRegistration }" width="150" height="150">
                              	
                              	<input id="popNo" type="hidden" name="popNo" value="${ reqInfo.coReqNo }">
                              	<button class="btn btn-info"  value="${ reqInfo.coReqNo }" type="button" style="margin-left:80%;"
                              	class="btn btn-info" onclick="negative();">??????</button>
                    	</div>
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
									<h4 style="font-weight: bold">?????? ???</h4>
								</div>
								<div class="jp_rightside_job_categories_content">
									<div class="handyman_sec1_wrapper">
										<div class="row">
						<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
							<div class="jp_listing_tabs_wrapper">
								<!--                             ????????? ?????? ???????????? ??? -->
								<input type="hidden" name="reqComDTO" value="${ reqInfo }">
								<input type="hidden" name="reqCoMemNo" value="${ reqInfo.coMemNo }">
								<input type="hidden" name="coReqNo" value="${ reqInfo.coReqNo }">
								<div class="tab-pane fade in active register_left_form"
									id="contentOne-1">

									<div class="jp_regiter_top_heading">
										<p><h1>????????????</h1></p>
									</div>
									
									<div class="row">
										<!--Form Group-->
										<div class="form-group col-md-6 col-sm-6 col-xs-12">
											<label>?????????????????????:</label><input type="text" name="reqCoNo" value="${ reqInfo.coNo }" readonly>
										</div>
										<!--Form Group-->
										<div class="form-group col-md-6 col-sm-6 col-xs-12">
											<label>????????????:</label><input type="text" name="reqWebSite" value="${ reqInfo.webSite }" readonly>
										</div>
										<!--Form Group-->
										<div class="form-group col-md-6 col-sm-6 col-xs-12">


											<label>????????????:</label><input type="text" name="reqCoComName" value="${reqInfo.coComName }" readonly>
										</div>
										<!--Form Group-->
										<div class="form-group col-md-6 col-sm-6 col-xs-12">
											<label>???????????????:</label><input type="text" name="reqCoCeoName" value="${reqInfo.coCeoName }" readonly>
										
										</div>
										<!--Form Group-->
										<div class="form-group col-md-6 col-sm-6 col-xs-12">
											<label>??????:</label><input type="text" name="reqSecTors" value="${ reqInfo.coSectors }" readonly>
										</div>
										<div class="form-group col-md-6 col-sm-6 col-xs-12">
											<label>??????:</label><input type="text" name="reqCoStatus" value="${ reqInfo.coStatus }" readonly>
										</div>
										<div class="form-group col-md-6 col-sm-6 col-xs-12">
											<label>??????:</label><input type="text" name="reqAddress" value="${ reqInfo.coAddress }" readonly>
										</div>
										<div class="form-group col-md-4 col-sm-6 col-xs-12">
											<label>??????????????????:</label><input type="text" name="reqCoPhone" value="${ reqInfo.coPhone }" readonly>
										</div>
										<div class="form-group col-md-6 col-sm-6 col-xs-12">
											<label>????????????:</label><input type="text" name="reqCoPax" value="${ reqInfo.coPax }" readonly>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<br>
					<div class="companyText">	
                           	<label>????????????</label><input id="textArea" name="reqIntro" value="${ reqInfo.coIntro  }" readonly >
                           	
						<button class="btn btn-info" type="submit" style="margin-left:80%;"class="btn btn-info">??????</button>
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
								<div class="jp_contact_form_btn_wrapper">
									<ul>
										<li><a href="#"><button class="btn btn-info" type="button" onclick="back();"
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
			
				</form>
            </div>
           
           </body>
<script>
function positive(){
	
	var answer;
	answer = confirm('????????? ???????????????.');
	
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