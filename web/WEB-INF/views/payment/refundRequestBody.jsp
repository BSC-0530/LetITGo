<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- 상단 검은색바탕 -->
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
									<li>></li>
									<li><a href="#">기업 마이페이지</a></li>
									<li>></li>
									<li><a href="#">결제 내역</a></li>
									<li>></li>
									<li>환불 요청</li>
								</ul>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	
	<!-- 왼쪽 메세지보내는 칸 -->
	<form id="refundRequestMessage" action="${ pageContext.servletContext.contextPath }/refund/request/insert" method="post">
	<div class="jp_contact_form_main_wrapper">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                    <div class="jp_contact_form_heading_wrapper">
                        <h1>환불 요청</h1>
                    </div>
                </div>
                <div class="col-lg-8 col-md-8 col-sm-12 col-xs-12">
                    <div class="jp_contact_form_box">
                        <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                            <h3>환불 사유</h3>
                        </div>
                        <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                            <div class="jp_contact_inputs_wrapper jp_contact_inputs4_wrapper">
                                <i class="fa fa-text-height"></i><textarea name="refundMessage" rows="6" placeholder="Type Your Message *"></textarea>
                            </div>
                        </div>
                        <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                            <div class="jp_contact_form_btn_wrapper">
                                
                                    <input type="submit" value="환불 요청" onclick="req()">
                                
                            </div>
                        </div>
                    </div>
                </div>

                <!-- 오른쪽 사이드바 -->
                <div class="col-lg-4 col-md-4 col-sm-12 col-xs-12">
                    <div class="jp_contact_right_box_wrapper">
                        <div class="jp_contact_form_add_heading_wrapper">
                            <h2>상품 정보</h2>
                        </div>
                        <div class="jp_form_add_wrapper gc_map_add_wrapper1">
                            <div class="jp_map_location_icon_wrapper">
                                <i class="fa fa-map-marker"></i>
                            </div>
                            <div class="gc_map_location_icon_cont_wrapper">
                                <h3>결제 번호</h3><br><span> : </span><c:out value="${ requestScope.refundRequestProduct.payNo }"/>
                            </div>
                        </div>
                        <div class="jp_form_add_wrapper gc_map_add_wrapper2">
                            <div class="jp_map_location_icon_wrapper">
                                <i class="fa fa-phone"></i>
                            </div>
                            <div class="gc_map_location_icon_cont_wrapper gc_map_location_icon_cont_wrapper2">
                                <h3>상품명</h3><br><span> : </span><c:out value="${ requestScope.refundRequestProduct.productName }"/>
                            </div>
                        </div>
                        <div class="jp_form_add_wrapper gc_map_add_wrapper2">
                            <div class="jp_map_location_icon_wrapper">
                                <i class="fa fa-fax"></i>
                            </div>
                            <div class="gc_map_location_icon_cont_wrapper gc_map_location_icon_cont_wrapper3">
                                <h3>결제 금액</h3><br><span> : </span><fmt:formatNumber value="${ requestScope.refundRequestProduct.payPrice }" pattern="###,###"/>
                            </div> 
                        </div>
                        <div class="jp_form_add_wrapper gc_map_add_wrapper3">
                            <div class="jp_map_location_icon_wrapper">
                                <i class="fa fa-envelope"></i>
                            </div>
                            <div class="gc_map_location_icon_cont_wrapper gc_map_location_icon_cont_wrapper4">
                                <h3> <a href="#">결제 일자</a></h3><br><span> : </span><c:out value="${ requestScope.refundRequestProduct.payDate }"/>
                            </div>
                        </div>
                        <div class="jp_contact_form_social_icon">
                            <ul>
                                <li><a href="#"><i class="fa fa-facebook"></i></a></li>
                                <li><a href="#"><i class="fa fa-twitter"></i></a></li>
                                <li><a href="#"><i class="fa fa-pinterest-p"></i></a></li>
                                <li class="hidden-xs"><a href="#"><i class="fa fa-linkedin"></i></a></li>
                                <li class="hidden-xs"><a href="#"><i class="fa fa-google-plus"></i></a></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    </form>
                    
</body>
</html>