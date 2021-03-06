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
<link rel="stylesheet" type="text/css" href="${ pageContext.servletContext.contextPath }/resources/css/letitgo/letitgo.css" />


<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>

<script type="text/javascript" src="/let/resources/js/datatables.js"></script>
<link rel="stylesheet" type="text/css" href="/let/resources/css/datatables.css" />

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
												<h3 style="font-weight: bold">????????????</h3>
												<p>
												<p align="left">
													<a href="${ pageContext.servletContext.contextPath }/selfintroductionitem/list">??????????????? ?????? ??????</a>
												</p>
												<p align="left">
													<a href="${ pageContext.servletContext.contextPath }/jobfield/list">???????????? ??????</a>
												</p>
												<p align="left">
													<a href="${ pageContext.servletContext.contextPath }/skills/list">?????? ??????</a>
												</p>
												<p align="left">
													<a href="${ pageContext.servletContext.contextPath }/skillscategory/list">?????? ???????????? ??????</a>
												</p>
												<br> <br>
												<h3 style="font-weight: bold">?????? ??????</h3>
												<p>
												<p align="left">
													<a href="${ pageContext.servletContext.contextPath }/admin/product/list">?????? ??????</a>
												</p>
												<p align="left">
													<a href="${ pageContext.servletContext.contextPath }/admin/payment/select">?????? ?????? ??????</a>
												</p>
												<p align="left">
													<a href="${ pageContext.servletContext.contextPath }/admin/refund/select">?????? ?????? ??????</a>
												</p>
												<br> <br>
												<h3 style="font-weight: bold">?????? ?????? ??????</h3>
												<p>
												<p align="left">
													<a href="${ pageContext.servletContext.contextPath }/admin/post/insertRequest/select">?????? ?????? ??????</a>
												</p>
												<p align="left">
													<a href="${ pageContext.servletContext.contextPath }/admin/post/updateRequest/select">?????? ?????? ??????</a>
												</p>
												<p align="left">
													<a href="${ pageContext.servletContext.contextPath }/info/requestList">?????? ?????? ?????? ??????</a>
												</p>
												<p align="left">
													<a href="${ pageContext.servletContext.contextPath }/admin/request/comInfo">?????? ?????? ?????? ??????</a>
												</p>
												<br> <br>
												<h3 style="font-weight: bold">?????? ??????</h3>
												<p>
												<p align="left">
													<a href="${ pageContext.servletContext.contextPath }/member/withdrawal">?????? ?????? ?????? ??????</a>
												</p>
												<br> <br>
												<h3 style="font-weight: bold">????????? ??????</h3>
												<p>
												<p align="left">
													<a href="${ pageContext.servletContext.contextPath }/admin/notice/manger/servlet">???????????? ??????</a>
												</p>
												<p align="left">
													<a href="${ pageContext.servletContext.contextPath }/personalinfopolicy/list">???????????? ?????? ??????, ???????????? ??????</a>
												</p>
												<br> <br>
												<h3 style="font-weight: bold">1:1 ??????</h3>
												<p>
												<p align="left">
													<a href="${ pageContext.servletContext.contextPath }/admin/inquiry/select">1:1 ?????? ??????</a>
												</p>
												<p align="left">
													<a href="${ pageContext.servletContext.contextPath }/admin/Category/Page">1:1 ?????? ???????????? ??????</a>
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
							<h1>????????? ???????????? ??????</h1>
<%-- 									<form action="${ pageContext.servletContext.contextPath }/notice/check/ynupdate" method="post" > --%>
							<div class="jp_listing_tabs_wrapper">
								<table id="table_payment" class="hover cell-border stripe">
									<thead>
										<tr>
											<td align="center">??????</td>
											<td align="center">??????</td>
											<td align="center">????????????</td>
											<td align="center">????????????</td>
											<td align="center">????????????</td>
											<td align="center">????????????</td>
											<td align="center">????????????</td>
										</tr>
									</thead>
										<tbody align="center">
								<c:forEach var="notice" items="${ requestScope.notice }">
											<tr id="postNo">
												<td><c:out value="${ notice.postNo }"/></td>									
												<td><c:out value="${ notice.postTitle }"/></td>
												<td><c:out value="${ notice.postRegistrationDate }"/></td>
												<td><button class="btn btn-info" type=button class="btn btn-info" onclick="browse(this);" >????????????</button></td>
												<c:choose>
												<c:when test="${empty notice.postModifiedDate }">
												<td><c:out value="???????????? ?????? "/></td>
												</c:when>
												<c:otherwise>
												<td><c:out value="${ notice.postModifiedDate }"/></td>
												</c:otherwise>
												</c:choose>
												<td><c:out value="${ notice.postExposureStatus }"/></td>
												<td><button class="btn btn-info" type=button class="btn btn-info" onclick="modify(this);" >Y/N??????</button></td>
<%-- 												<td><input name="no" value="${ notice.postNo }"> --%>
<!-- 												<td><button class="btn btn-info" class="fa fa-plus-circle" type="submit" ></button></td> -->
											</tr>
								</c:forEach>					
										</tbody>	
								</table>
								</div>
<!-- 						</form> -->
					<div class="category-insert">
										<button class="btn btn-info" style="margin-left: 90%; margin-top: 5%;"
											type="submit" class="btn btn-info" onclick="insert();">??????</button>
								<br>
								<br>
							</div>
							
						</div>
						
					</div>
					</div>
					<br>
					
				</div>
				
				<br>
			</div>
		</div>
<script>
// ??????????????????
		$(document).ready(function() {
			$('#table_payment').DataTable();
		});
</script>

<script>
//????????????
		function insert(button) {
			
	 location.href = "${ pageContext.servletContext.contextPath }/notice/insert/servlet" 
			
		}
</script>
<script>
//??????????????????
function modify(button){
	
		const no = button.parentNode.parentNode.children[0].innerText
		const yn = button.parentNode.parentNode.children[5].innerText
		
// 		console.log(no);
// 		console.log(yn);
		
		let postNo = no;
		let postExposureStatus = yn;
		
		console.log(postNo);
		console.log(postExposureStatus);
		
// 		let date = { "postNo":postNo, "postExposureStatus":postExposureStatus};
		
		$.ajax({
			url:"${ pageContext.servletContext.contextPath }/notice/check/ynupdate",
			type:'post',
			data: {postNo:postNo,
				   postExposureStatus:postExposureStatus
			},
			success: function(date) {
				alert('??????????????? ?????????????????????.');
				window.location.reload();
			},
			error: function(xhr, error){
				console.log(xhr);
			}
			
		});
}
</script>
<script>
// ???????????? ??????
	function browse(button){
		
		const postNo = button.parentNode.parentNode.children[0].innerText
		
		
		location.href="${ pageContext.servletContext.contextPath }/notice/details/servlet?postNo="+postNo
				
	}	
</script>

</body>
</html>








