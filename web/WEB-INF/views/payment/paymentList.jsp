<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<title>WebStandard example</title> 
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">              
<script src="https://stdpay.inicis.com/stdjs/INIStdPay.js" charset="UTF-8"></script>
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
                                    <li>메인 공고 노출 <span><fmt:formatNumber value="${ product.upperExposureTime/24 }" groupingUsed="true"/></span><span>일권</span></li>                                                                                             
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
    
    <!-- 결제test-->
     <form id="SendPayForm_id" action="${ pageContext.servletContext.contextPath }/payment/insert" name="form" method="POST" >

        <input type="hidden"  name="goodname" value="브론즈" >
        <input type="hidden"  name="buyername" value="정현수" >
        <input type="hidden"  name="buyertel" value="010-2728-7526" >
        <input type="hidden"  name="buyeremail" value="hsjung3679@naver.com" >
        <input type="hidden"  name="price" value="1000" >
        <input type="hidden"  name="mid" value="INIpayTest" >
        <input type="hidden"  name="gopaymethod" value="onlykakaopay" >
        <input type="hidden"  name="mKey" value="3a9503069192f207491d4b19bd743fc249a761ed94246c8c42fed06c3cd15a33" >
        <input type="hidden"  name="signature" value="162868db635c605a7f4d4876ba650ba97f28e95b8702e9b29f922cc969678993" >
        <input type="hidden"  name="oid" value="INIpayTest_1628840602127" >
        <input type="hidden"  name="timestamp" value="1628840602127" >
        <input type="hidden"  name="version" value="1.0" >
        <input type="hidden"  name="currency" value="WON" >
        <input type="hidden"  name="acceptmethod" value="below1000" >
        <input type="hidden"  name="returnUrl" value="http://127.0.0.1:8009/let"  >
        <input type="hidden"  name="closeUrl" value="http://127.0.0.1:8009/let/productList/select" >

   </form>

      <button onclick="INIStdPay.pay('SendPayForm_id')" style="padding:10px; margin-left:10%">결제요청</button>
	



       

<jsp:include page="../common/footer.jsp"/>
</html>