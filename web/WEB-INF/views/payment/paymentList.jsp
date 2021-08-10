<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
    <link rel="stylesheet" type="text/css" href="css/animate.css" />
    <link rel="stylesheet" type="text/css" href="css/bootstrap.css" />
    <link rel="stylesheet" type="text/css" href="css/font-awesome.css" />
    <link rel="stylesheet" type="text/css" href="css/fonts.css" />
    <link rel="stylesheet" type="text/css" href="css/reset.css" />
    <link rel="stylesheet" type="text/css" href="css/owl.carousel.css" />
    <link rel="stylesheet" type="text/css" href="css/owl.theme.default.css" />
    <link rel="stylesheet" type="text/css" href="css/flaticon.css" />
    <link rel="stylesheet" type="text/css" href="css/style_II.css" />
    <link rel="stylesheet" type="text/css" href="css/responsive2.css" />
<style>
.mainPostExposureText {
	margin-left:200px;
	margin-top:auto;
}
</style>
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
                            <h2>결제페이지</h2>
                        </div>
                        <div class="jp_tittle_breadcrumb_main_wrapper">
                            <div class="jp_tittle_breadcrumb_wrapper">
                                <ul>
                                    <li><a href="#">Home</a></li>
                                    <li>></li>
                                    <li>결제페이지</li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
	
	<br><br>	<br><br>	<br><br>
	
	
	<div class="jp_pricing_main_wrapper">
        <div class="container">
            <div class="row">
			<c:forEach var="product" items="${ requestScope.productList }">
			<c:if test="${ product.productKinds eq '열람권' }">
                <div class="col-lg-4 col-md-4 col-sm-12 col-xs-12">
                    <div class="pricing_box1_wrapper pricing_border_box1_wrapper">
                        <div class="box1_heading_wrapper">
                            <h1><c:out value="${ product.productName }"/></h1>
                        </div>
                        <div class="price_box1_wrapper">
                            <div class="price_box1">
                              <h1><fmt:formatNumber value="${ product.productPrice }" pattern="###,###" type="currency"/></h1>
                            </div>
                        </div>
                        <div class="pricing_cont_wrapper">
                            <div class="pricing_cont">
                                <ul>
                                    <li>스카우트 열람권 <span>${ product.readingNum }</span><span>개</span></li>                                  
                                </ul>
                            </div>
                        </div>
                        <div class="pricing_btn_wrapper">
                            <div class="pricing_btn1">
                                <ul>
                                    <li><a href="#">결제하기</a></li>
                                </ul>
                            </div>
                        </div>
                        <div class="jp_pricing_label_wrapper">
                            <i class="fa fa-star"></i>
                        </div>
                    </div>
                </div>
   			</c:if>
   			</c:forEach>             
            </div>
        </div>
    </div>
    <div class="jp_pricing_main_wrapper">
        <div class="container">
            <div class="row">
			<c:forEach var="product" items="${ requestScope.productList }">
			<c:if test="${ product.productKinds eq '노출권' }">
                <div class="col-lg-4 col-md-4 col-sm-12 col-xs-12">
                    <div class="pricing_box1_wrapper pricing_border_box1_wrapper">
                        <div class="box1_heading_wrapper">
                            <h1><c:out value="${ product.productName }"/></h1>
                        </div>
                        <div class="price_box1_wrapper">
                            <div class="price_box1">
                               <h1><fmt:formatNumber value="${ product.productPrice }" pattern="###,###" type="currency"/></h1>
                            </div>
                        </div>
                        <div class="pricing_cont_wrapper">
                            <div class="pricing_cont">
                                <ul>
                                    <li>메인 공고 노출 <span><fmt:formatNumber value="${ product.upperExposureHour/24 }" groupingUsed="true"/></span><span>일권</span></li>                                                                                             
                                </ul>
                            </div>
                        </div>
                        <div class="pricing_btn_wrapper">
                            <div class="pricing_btn1">
                                <ul>
                                    <li><a href="#">결제하기</a></li>
                                </ul>
                            </div>
                        </div>
                        <div class="jp_pricing_label_wrapper">
                            <i class="fa fa-star"></i>
                        </div>
                    </div>
                </div>
   			</c:if>
   			</c:forEach>             
            </div>
        </div>
    </div>
    

<jsp:include page="../common/footer.jsp"/>
</html>