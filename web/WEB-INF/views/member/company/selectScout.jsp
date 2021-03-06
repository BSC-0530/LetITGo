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

<link rel="stylesheet" type="text/css" href="${ pageContext.servletContext.contextPath }/resources/css/letitgo/letitgo.css"/>


<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script type="text/javascript" charset="utf8" src="https://cdn.datatables.net/1.10.25/js/jquery.dataTables.js"></script>
<link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.25/css/jquery.dataTables.css">

</head>
<body>

<div class="jp_tittle_main_wrapper">
        <div class="jp_tittle_img_overlay"></div>
        <div class="container">
            <div class="row">
                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                    <div class="jp_tittle_heading_wrapper">
                        <div class="jp_tittle_heading">
                            <h2>??????????????????</h2>
                        </div>
                        <div class="jp_tittle_breadcrumb_main_wrapper">
                            <div class="jp_tittle_breadcrumb_wrapper">
                                <ul>
                                    <li><a href="${ pageContext.servletContext.contextPath }/mainPage/CoMember">Home</a></li>
									<li>></li>
									<li><a href="${ pageContext.servletContext.contextPath }/company/myPage/main">?????? ???????????????</a></li>
									<li>></li>
									<li>??????????????????</li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    
	<div class="jp_listing_sidebar_main_wrapper">
		<div class="container">
			<div class="row">
				<div
					class="col-lg-3 col-md-3 col-sm-12 col-xs-12 hidden-sm hidden-xs">
					<div class="row">
						<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
							<div class="jp_rightside_job_categories_wrapper">
								<div class="jp_rightside_job_categories_heading">
									<h4 style="font-weight: bold">??????????????????</h4>
								</div>
								<div class="jp_rightside_job_categories_content">
									<div class="handyman_sec1_wrapper">
										<div class="content">

											<div class="box">
												<p>
													<a href="${ pageContext.servletContext.contextPath }/coMem/infomationServlet">????????????</a>
												</p>
												<br><br>
												<p>
													<a href="${ pageContext.servletContext.contextPath }/companyTestServlet">????????????</a>
												</p>
												<br><br>

												<p>
													<a href="${ pageContext.servletContext.contextPath }/company/paymentHistory/select">????????????</a>
												</p>
												<br><br>
												<p>
													<a href="${ pageContext.servletContext.contextPath }/company/refundHistory/select">????????????</a>
												</p>
												<br><br>
												<p>

													<a href="${ pageContext.servletContext.contextPath }/company/jobPostingHistory/select">????????????</a>
												</p>
												<br><br>
												<p>
													<a href="${ pageContext.servletContext.contextPath }/Company/Scout/List/Select">??????????????????</a>
												</p>
												<br><br>
												<p>
													<a href="${ pageContext.servletContext.contextPath }/company/scout/wish/select">???????????????</a>
												</p>
												<br><br>
												<p>
													<a href="${ pageContext.servletContext.contextPath }/login/comember/withdrawal/yn">????????????</a>
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
				<div class="col-lg-9 col-md-9 col-sm-12 col-xs-12">
					<div class="row">
						<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
							<div class="jp_counter_main_wrapper">
								<h1 align="left">???????????? ??????</h1>
								<br>
								<div class="container">
									<div class="gc_counter_cont_wrapper">
										<div class="count-description">
											<span class="timer"><c:out value="${ simpleCountNum }"></c:out></span>
											<h5 class="con1">?????? ??????</h5>
										</div>
									</div>
									<div class="gc_counter_cont_wrapper2">
										<div class="count-description">
											<span class="timer"><c:out value="${ deepCountNum }"></c:out> </span>
											<h5 class="con2">?????? ??????</h5>
										</div>
									</div>
									<div class="gc_counter_cont_wrapper3">
										<div class="count-description">
											<span class="timer"><c:out value="${ scoutNum }"></c:out></span>
											<h5 class="con3"><a href=""> ?????? ??????</a></h5>
										</div>
									</div>
								</div>
								<br>
								<br>
							</div>
							<h2>????????? ?????? ??????</h2>
							<br><br>
							
						</div>
						<table id="table_scout" class="hover cell-border stripe">
								<thead>
									<tr>
										<td>????????? ??????</td>
										<td>??????</td>
										<td>??????</td>
										<td>??????</td>
										<td>??????</td>
										<td>????????????</td>
									</tr>
								</thead>
								<tbody align="center">
								<c:forEach var="broswe" items="${ browselist }">
									<tr>
										<td><c:out value="${ broswe.resumeTitle }"></c:out></td>
										<td><c:out value="${ broswe.memName }"></c:out> </td>
										<td>
										<c:forEach items="${ requestScope.scoutCareea }" var="careea" varStatus="status">
											<c:if test="${ broswe.resumeNo eq careea.RESUME_NO}">
												<i><c:out value= "${ careea.CAREER }??????"/> </i>
											</c:if>
										</c:forEach>
										</td>
										<td><c:out value="${broswe.jobName }"></c:out> </td>
										<td id="kindsName"><c:out value="${ broswe.resumeBrowseKinds }"></c:out> </td>
										<td><button class="btn btn-info" type="button"  onclick="browse(this);">????????????</button>
										<input type="hidden" id="hiddenResumeNo" value="${ broswe.resumeNo }">
										<input type="hidden" id="hiddenkinds" value="${ broswe.resumeBrowseKinds }">
										
										</td>
									</tr>
								</c:forEach>
								</tbody>
							</table>
					</div>
				</div>
				
			</div>
		</div>
	</div>
<script>
$(document).ready(function() {
	$('#table_scout').DataTable();
});

function browse(button){
	
	const resumeNo = button.parentNode.children[1].value;
	const kinds = button.parentNode.children[2].value;
	
	if(kinds == '????????????') {
		location.href = "${ pageContext.servletContext.contextPath }/simple/browse/select?resumeNo=" + resumeNo;
	} else if(kinds == '????????????') {
		location.href = "${ pageContext.servletContext.contextPath }/detail/browse/select?resumeNo=" + resumeNo;
	} else {
		location.href = "${ pageContext.servletContext.contextPath }/detail/browse/select?resumeNo=" + resumeNo;
	}
	
			
}
</script>

</body>
</html>