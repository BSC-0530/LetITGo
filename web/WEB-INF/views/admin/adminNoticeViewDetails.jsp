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
</head>
<body>
 <div class="jp_listing_sidebar_main_wrapper">
		<div class="container">
			<div class="row">
				<div
					class="col-lg-3 col-md-3 col-sm-12 col-xs-12 hidden-sm hidden-xs">
					<div class="row">
						<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
							<div class="jp_rightside_job_categories_wrapper">
								<div class="jp_rightside_job_categories_heading">
									<h4 style="font-weight: bold">Admin</h4>
								</div>
								<div class="jp_rightside_job_categories_content">
									<div class="handyman_sec1_wrapper">
										<div class="content">

											<div class="box">
												<h3 style="font-weight: bold">회원정보</h3>
												<p>
												<p align="left">
													<a href="${ pageContext.servletContext.contextPath }/selfintroductionitem/list">자기소개서 항목 관리</a>
												</p>
												<p align="left">
													<a href="${ pageContext.servletContext.contextPath }/jobfield/list">직무분야 관리</a>
												</p>
												<p align="left">
													<a href="${ pageContext.servletContext.contextPath }/skills/list">기술 관리</a>
												</p>
												<p align="left">
													<a href="${ pageContext.servletContext.contextPath }/skillscategory/list">기술 카테고리 관리</a>
												</p>
												<br> <br>
												<h3 style="font-weight: bold">결제 관리</h3>
												<p>
												<p align="left">
													<a href="${ pageContext.servletContext.contextPath }/admin/product/list">상품 관리</a>
												</p>
												<p align="left">
													<a href="${ pageContext.servletContext.contextPath }/admin/payment/select">결제 내역 조회</a>
												</p>
												<p align="left">
													<a href="${ pageContext.servletContext.contextPath }/admin/refund/select">환불 요청 관리</a>
												</p>
												<br> <br>
												<h3 style="font-weight: bold">기업 요청 관리</h3>
												<p>
												<p align="left">
													<a href="${ pageContext.servletContext.contextPath }/admin/post/insertRequest/select">공고 등록 요청</a>
												</p>
												<p align="left">
													<a href="${ pageContext.servletContext.contextPath }/admin/post/updateRequest/select">공고 수정 요청</a>
												</p>
												<p align="left">
													<a href="${ pageContext.servletContext.contextPath }/info/requestList">기업 회원 가입 요청</a>
												</p>
												<p align="left">
													<a href="${ pageContext.servletContext.contextPath }/admin/request/comInfo">기업 정보 변경 요청</a>
												</p>
												<br> <br>
												<h3 style="font-weight: bold">회원 탈퇴</h3>
												<p>
												<p align="left">
													<a href="${ pageContext.servletContext.contextPath }/member/withdrawal">회원 탈퇴 사유 조회</a>
												</p>
												<br> <br>
												<h3 style="font-weight: bold">게시물 관리</h3>
												<p>
												<p align="left">
													<a href="${ pageContext.servletContext.contextPath }/admin/notice/manger/servlet">공지사항 관리</a>
												</p>
												<p align="left">
													<a href="${ pageContext.servletContext.contextPath }/personalinfopolicy/list">개인정보 처리 방침, 이용약관 관리</a>
												</p>
												<br> <br>
												<h3 style="font-weight: bold">1:1 문의</h3>
												<p>
												<p align="left">
													<a href="${ pageContext.servletContext.contextPath }/admin/inquiry/select">1:1 문의 조회</a>
												</p>
												<p align="left">
													<a href="${ pageContext.servletContext.contextPath }/admin/Category/Page">1:1 문의 카테고리 관리</a>
												</p>
												<br> <br>
												<div align="center" style="background-color:green" style="color:white">
                            						<ul>
														<li>
															<a href="${ pageContext.servletContext.contextPath }/member/logout">LOG OUT</a>
														</li>
							                    	 </ul>
							                    </div>
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
		<form action="${ pageContext.servletContext.contextPath }/notice/details/servlet" method="post" onsubmit="check();">	
				<div class="jp_contact_form_box">
						<div class="col-lg-4 col-md-6 col-sm-12 col-xs-12">
							<div class="jp_contact_inputs_wrapper jp_contact_inputs1_wrapper">
								<i class="fa fa-pencil-square-o"></i><input name="postNo"
									 placeholder="번호 : ${ noticeDetails.postNo }" readonly="readonly">
							</div>
						</div>
						<div class="col-lg-8 col-md-6 col-sm-12 col-xs-12">
							<div class="jp_contact_inputs_wrapper jp_contact_inputs1_wrapper">
								<i class="fa fa-pencil-square-o"></i><input name="managerMemberNo"
									placeholder="관리자자번호 : "value="${noticeDetails.managerMemberNo }">
							</div>
						</div>
						<div class="col-lg-12 col-md-6 col-sm-12 col-xs-12">
							<div class="jp_contact_inputs_wrapper jp_contact_inputs3_wrapper">
								<i class="fa fa-pencil-square-o"></i><input name="postTitle"
									value="${ noticeDetails.postTitle }" readonly="readonly">
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
								<textarea style="overflow-x:hidden; overflow-y:auto;" rows="16" name="postContent">${ noticeDetails.postContent }</textarea>
							</div>
						</div>
						<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
						<div class="jp_contact_inputs_wrapper jp_contact_inputs6_wrapper">
								<i class="fa fa-pencil-square-o"></i>
								<button style="width: 100px; height: 50px; margin-left: 85%"
								         type="submit" class="btn btn-info">수정하기</button>
							</div>
						</div>
						</div>
				</form>	
							<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
								<div class="jp_contact_form_btn_wrapper">
									<ul>
										<li><a href="#"><button class="btn btn-info"  onclick="back();"
													style="background-color: transparent; border: 0px transparent solid; width: 150px; height: 50px;">&nbsp;
													back</button>
											<i class="fa fa-plus-circle"></i> </a>
										</li>
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
function check(){
	
	var answer;
	answer = confirm('수정하시겠습니까?');
	
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