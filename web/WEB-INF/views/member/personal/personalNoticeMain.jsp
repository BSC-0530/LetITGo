<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
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

<!-- letitgo 제작 css -->
<link rel="stylesheet" type="text/css" href="${ pageContext.servletContext.contextPath }/resources/css/letitgo/letitgo.css"/>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script type="text/javascript" charset="utf8"
	src="https://cdn.datatables.net/1.10.25/js/jquery.dataTables.js"></script>
<link rel="stylesheet" type="text/css"
	href="https://cdn.datatables.net/1.10.25/css/jquery.dataTables.css">
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
													<a href="${ pageContext.servletContext.contextPath }/companyTestServlet">개인정보처리방침</a>
												</p>
												<br><br>

												<p align="center">
													<a href="${ pageContext.servletContext.contextPath }/company/paymentHistory/select">이용약관</a>
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
							<h1>공지사항</h1>
<%-- 									<form action="${ pageContext.servletContext.contextPath }/notice/check/ynupdate" method="post" > --%>
							<div class="jp_listing_tabs_wrapper">
								<table id="table_payment" class="hover cell-border stripe">
									<thead>
										<tr>
											<td align="center">번호</td>
											<td align="center">제목</td>
											<td align="center">등록일자</td>
											<td align="center">상세보기</td>
											
										</tr>
									</thead>
										<tbody align="center">
								<c:forEach var="notice" items="${ requestScope.noticeList }">
											<tr id="postNo">
												<td><c:out value="${ notice.postNo }"/></td>				
												<td><c:out value="${ notice.postTitle }"/></td>
												<td><c:out value="${ notice.postRegistrationDate }"/></td>
												<td><button type="button" onclick="browse(this);" >상세보기</button></td>
												
											</tr>
									</c:forEach>					
										</tbody>	
								</table>
								</div>
<!-- 						</form> -->
								<br>
								<br>
							</div>
							
						</div>
						
					</div>
					<div class="category-insert">
										<button style="margin-left: 90%; margin-top: 5%;"
											type="submit" class="btn btn-info" onclick="insert();">등록</button>
					</div>
					<br>
					
				</div>
				
				<br>
			</div>
		</div>
<script>
// 데이터테이블
		$(document).ready(function() {
			$('#table_payment').DataTable();
		});
</script>
<script>
// 상세보기 버튼
	function browse(button){
		
		const postNo = button.parentNode.parentNode.children[0].innerText
		
		
		location.href="${ pageContext.servletContext.contextPath }/personal/notice/detail?postNo="+postNo
				
	}	
</script>
</body>
</html>