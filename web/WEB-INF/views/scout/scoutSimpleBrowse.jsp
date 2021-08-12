<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<jsp:include page="../common/header/companyHeader.jsp"/>

<div class="jp_tittle_main_wrapper">
        <div class="jp_tittle_img_overlay"></div>
        <div class="container">
            <div class="row">
                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                    <div class="jp_tittle_heading_wrapper">
                        <div class="jp_tittle_heading">
                            <h2>기업 마이페이지</h2>
                        </div>
                        <div class="jp_tittle_breadcrumb_main_wrapper">
                            <div class="jp_tittle_breadcrumb_wrapper">
                                <ul>
                                    <li><a href="#">Home</a></li>
                                    <li><a href="#">기업 마이페이지</a></li>
                                    <li>기업 마이페이지</li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
<div class="row">
				<div class="col-lg-4 col-md-4 col-sm-12 col-xs-12">
					<div class="jp_cp_left_side_wrapper">
						<div class="jp_cp_left_pro_wallpaper">
							<img src="${ pageContext.servletContext.contextPath }/resources/image/bmw.png" style="width: 205px; height: 205px;"alt="post_img" />
							<h2>이름와야함</h2>
							<p><br></p>
						</div>
						<div class="jp_cp_rd_wrapper">
						<br><br><br><br><br><br>
							<ul>
								<li><a href="#"><i class="fa fa-download"></i> &nbsp;상세 이력서 보기</a></li>
								<li><a href="#"><i class="fa fa-phone"></i> &nbsp;후보자 찜하기</a></li>
							</ul>
						</div>
					</div>
				</div>
				<div class="col-lg-8 col-md-8 col-sm-12 col-xs-12">
					<div class="jp_cp_right_side_wrapper">
						<div class="jp_cp_right_side_inner_wrapper">
							<h2>인재 소개란</h2>
							<table>
                                <tbody>
                                    <tr>
                                        <td class="td-w25">이름</td>
                                        <td class="td-w10">:</td>
                                        <td class="td-w65">이름와야함</td>
                                    </tr>
                                    <tr>
                                        <td class="td-w25">보유기술</td>
                                        <td class="td-w10">:</td>
                                        <td class="td-w65">보유기술와야함</td>
                                    </tr>
                                    <tr>
                                        <td class="td-w25">직무</td>
                                        <td class="td-w10">:</td>
                                        <td class="td-w65">직무밸류</td>
                                    </tr>
                                    <tr>
                                        <td class="td-w25">경력</td>
                                        <td class="td-w10">:</td>
                                        <td class="td-w65">경력밸류</td>
                                    </tr>
                                </tbody>
                            </table>
						</div>
					</div>
					<div class="row">
						<div class="col-lg-12 col-md-12 col-xs-12 col-sm-12">
							<div class="jp_cp_accor_heading_wrapper">
								<h2>상세이력서</h2>
								<p>아래의 메뉴에서 상세한 이력서를 조회하세요</p>
							</div>
						</div>
						<div class="col-lg-12 col-md-12 col-xs-12 col-sm-12">
							<div class="accordion_wrapper abt_page_2_wrapper">
								<div class="panel-group" id="accordion_threeLeft">


									<!-- /.panel-default -->
									<div class="panel panel-default">
										<div class="panel-heading bell">
											<h4 class="panel-title">
												<a class="collapsed" data-toggle="collapse" data-parent="#accordion_threeLeft" href="#collapseTwentyLeftThree" aria-expanded="false">
										DIPLOMA IN COMPUTER 
									  </a>
											</h4>
										</div>
										<div id="collapseTwentyLeftThree" class="panel-collapse collapse" aria-expanded="false" role="tablist">
											<div class="panel-body">
												Praesent in nisl egestas mauris aliquam luctus. Ut auctor faucibus orci, nec semper purus ultrices idorbi nec lorem risus orbi vitae felis gravida Pellentesque id eros quis massa convallis feugiat eu quis urna.
											</div>
										</div>
									</div>
									<div class="panel panel-default">
										<div class="panel-heading bell">
											<h4 class="panel-title">
												<a class="collapsed" data-toggle="collapse" data-parent="#accordion_threeLeft" href="#collapseTwentyLeftThree2" aria-expanded="false">
										HIGHER SECONDRY EDUCATION 
									  </a>
											</h4>
										</div>
										<div id="collapseTwentyLeftThree2" class="panel-collapse collapse" aria-expanded="false" role="tablist">
											<div class="panel-body">
												Praesent in nisl egestas mauris aliquam luctus. Ut auctor faucibus orci, nec semper purus ultrices idorbi nec lorem risus orbi vitae felis gravida Pellentesque id eros quis massa convallis feugiat eu quis urna.
											</div>
										</div>
									</div>
									<div class="panel panel-default">
										<div class="panel-heading bell">
											<h4 class="panel-title">
												<a class="collapsed" data-toggle="collapse" data-parent="#accordion_threeLeft" href="#collapseTwentyLeftThree3" aria-expanded="false">
										HIGH SCHOOL DEGREE
									  </a>
											</h4>
										</div>
										<div id="collapseTwentyLeftThree3" class="panel-collapse collapse" aria-expanded="false" role="tablist">
											<div class="panel-body">
												Praesent in nisl egestas mauris aliquam luctus. Ut auctor faucibus orci, nec semper purus ultrices idorbi nec lorem risus orbi vitae felis gravida Pellentesque id eros quis massa convallis feugiat eu quis urna.
											</div>
										</div>
									</div>
									<!-- /.panel-default -->
								</div>
								<!--end of /.panel-group-->
							</div>
						</div>
					</div>
				</div>
			</div>



<jsp:include page="../common/footer.jsp"/>

    <script src="/resource/js/jquery_min.js"></script>
</body>
</html>