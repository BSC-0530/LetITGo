<%@page import="com.itsme.letitgo.admin.payment.model.dto.ProductListDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<title>WebStandard example</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

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

<script type="text/javascript"
	src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
<script type="text/javascript"
	src="https://service.iamport.kr/js/iamport.payment-1.1.2.js"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<style>
.mainPostExposureText {
	margin-left: 200px;
	margin-top: auto;
}
</style>
</head>
<body>
	<jsp:include page="../common/header/companyHeader.jsp" />

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

	<br>
	<br>
	<br>
	<br>
	<br>
	<br>


	<div class="jp_pricing_main_wrapper">
		<div class="container">
			<div class="row">
				<c:forEach var="product" items="${ requestScope.productList }">
					<c:if test="${ product.productKinds eq '열람권' }">
						<div class="col-lg-4 col-md-4 col-sm-12 col-xs-12">
							<div class="pricing_box1_wrapper pricing_border_box1_wrapper">
								<div class="box1_heading_wrapper">
									<h1>
										<c:out value="${ product.productName }" />
									</h1>
								</div>
								<div class="price_box1_wrapper">
									<div class="price_box1">
										<h1>
											<fmt:formatNumber value="${ product.productPrice }"
												pattern="###,###" type="currency" />
										</h1>
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
										<button type="button" onclick="payReading(this);">결제하기</button>
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
									<h1>
										<c:out value="${ product.productName }" />
									</h1>
								</div>
								<div class="price_box1_wrapper">
									<div class="price_box1">
										<h1>
											<fmt:formatNumber value="${ product.productPrice }"
												pattern="###,###" type="currency" />
										</h1>
									</div>
								</div>
								<div class="pricing_cont_wrapper">
									<div class="pricing_cont">
										<ul>
											<li>메인 공고 노출 <span><fmt:formatNumber
														value="${ product.upperExposureTime/24 }"
														groupingUsed="true" /></span><span>일권</span></li>
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



	<script>
		function payReading(button) {
			productName = button.parentNode.parentNode.parentNode.children[0].children[0].innerText; 
			productPrice = button.parentNode.parentNode.parentNode.children[1].children[0].children[0].innerText; 
			alert(productPrice);
			
			var IMP = window.IMP; // 생략가능
			IMP.init('imp86126357'); // 가맹점 식별 코드
		
		IMP.request_pay({
		    pg : 'kakaopay',
		    pay_method : 'card',
		    merchant_uid : 'merchant_' + new Date().getTime(),
		    name : productName,
		    amount : 100,
		    buyer_email : 'iamport@siot.do',
		    buyer_name : '구매자이름',
		    buyer_tel : '010-1234-5678',
		    buyer_addr : '서울특별시 강남구 삼성동',
		    buyer_postcode : '123-456'
		}, function(rsp) {
		    if ( rsp.success ) {
		    	alert('성공');
		    	//[1] 서버단에서 결제정보 조회를 위해 jQuery ajax로 imp_uid 전달하기
		    	$.ajax({
		    		type: "post",
		    		url:  "/let/payments/complete",
		    		data: {
		    		
			    		productName : productName
			    		//기타 필요한 데이터가 있으면 추가 전달
		    		},
					success : function(data) {
						alert('데이터 전송성공');

					},
					error:function(xhr) {
						alert('데이터 전송실패')
					}
		    	}).done(function(data) {
		    		//[2] 서버에서 REST API로 결제정보확인 및 서비스루틴이 정상적인 경우
		    		if ( everythings_fine ) {
		    			var msg = '결제가 완료되었습니다.';
		    			msg += '\n고유ID : ' + rsp.imp_uid;
		    			msg += '\n상점 거래ID : ' + rsp.merchant_uid;
		    			msg += '\결제 금액 : ' + rsp.paid_amount;
		    			msg += '카드 승인번호 : ' + rsp.apply_num;
		    			
		    			alert(msg);
		    		} else {
		    			//[3] 아직 제대로 결제가 되지 않았습니다.
		    			//[4] 결제된 금액이 요청한 금액과 달라 결제를 자동취소처리하였습니다.
		    		}
		    	});
		    } else {
		        var msg = '결제에 실패하였습니다.';
		        msg += '에러내용 : ' + rsp.error_msg;
		        
		        alert(msg);
		    }
		});
		} 
	</script>

	<jsp:include page="../common/footer.jsp" />
</html>