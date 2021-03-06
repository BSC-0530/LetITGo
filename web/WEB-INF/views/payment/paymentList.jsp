<%@page
	import="com.itsme.letitgo.admin.payment.model.dto.ProductListDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page import="java.util.List,javax.servlet.http.HttpSession, javax.servlet.http.HttpServlet, com.itsme.letitgo.login.model.dto.MemberLoginDTO"%>
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


<%	
	/* 르그인된 회원의 세션에서 값 꺼내오기 */
	MemberLoginDTO dto = (MemberLoginDTO) session.getAttribute("loginMember");

	String memEmail = dto.getMemEmail();
	String memName = dto.getMemName();
	String memPhone = dto.getMemPhone();
%>

<script>

	/* 열람권 결제시  */
	function payReadingRight(button) {
		
		/* 버튼을 기준으로  parentNode시 1단계 위 div / parentNode시 2단계 위 div / parentNode시 3단계 위 div / children[0]시 0번째 인덱스 div / children[0]시 h1의 텍스트 */ 
		productName = button.parentNode.parentNode.parentNode.children[0].children[0].innerText; 
		
		/* 버튼을 기준으로  parentNode시 1단계 위 div / parentNode시 2단계 위 div / parentNode시 3단계 위 div / children[1]시 0번째 인덱스 div /  children[0]시 0번째 인덱스 div / children[0]시 h1의 텍스트 */ 
		productPrice = button.parentNode.parentNode.parentNode.children[1].children[0].children[0].innerText; 
			
		/* 아임포트에서 계정에 부여된 테스트결제 번호  */
		var IMP = window.IMP; 
		IMP.init('imp86126357'); 
	
		/* 결제정보 및 구매자 정보 */
	IMP.request_pay({
	    pg : 'kakaopay',
	    pay_method : 'card',
	    merchant_uid : 'merchant_' + new Date().getTime(),
	    name : productName,
	    amount : productPrice,
	    buyer_email : '<%=memEmail%>',
	    buyer_name : '<%=memName%>',
	    buyer_tel : '<%=memPhone%>',
	    buyer_addr : '',
	    buyer_postcode : ''
	}, function(rsp) {
	    if ( rsp.success ) {
	    	
	    	/* 결제가 정상적으로 진행시 ajax를 통해 해당 url에 post방식으로 productName을 전달 */
	    	$.ajax({
	    		type: "post",
	    		url:  "/let/payments/reading/complete",
	    		data: {
	    		
		    		productName : productName

	    		},
	    		
	    		/* 결제가 성공하였을 경우 */
				success : function(data) {
					alert('결제가 성공적으로 완료되었습니다.');

				},
				
				/* 결제를 실패하였을 경우 */
				error:function(xhr) {
					alert('결제를 실패하였습니다.');
				}
	    	})
	    /* 결제 진행이 실패하였을 경우 */
	    } else {
	        var msg = '결제에 실패하였습니다.';
	        msg += '에러내용 : ' + rsp.error_msg;
	        
	        alert(msg);
	    }
	});
	} 
</script>

<script>

	/* 노출권 결제시  */
	function payExposureRight(button) {
		
		/* 버튼을 기준으로  parentNode시 1단계 위 div / parentNode시 2단계 위 div / parentNode시 3단계 위 div / children[0]시 0번째 인덱스 div / children[0]시 h1의 텍스트 */ 
		productName = button.parentNode.parentNode.parentNode.children[0].children[0].innerText; 
		
		/* 버튼을 기준으로  parentNode시 1단계 위 div / parentNode시 2단계 위 div / parentNode시 3단계 위 div / children[1]시 0번째 인덱스 div /  children[0]시 0번째 인덱스 div / children[0]시 h1의 텍스트 */ 
		productPrice = button.parentNode.parentNode.parentNode.children[1].children[0].children[0].innerText; 
		
		/* 아임포트에서 계정에 부여된 테스트결제 번호  */
		var IMP = window.IMP; 
		IMP.init('imp86126357');
	
		/* 결제정보 및 구매자 정보 */
	IMP.request_pay({
	    pg : 'kakaopay',
	    pay_method : 'card',
	    merchant_uid : 'merchant_' + new Date().getTime(),
	    name : productName,
	    amount : productPrice,
	    buyer_email : '<%=memEmail%>',
	    buyer_name : '<%=memName%>',
	    buyer_tel : '<%=memPhone%>',
	    buyer_addr : '',
        buyer_postcode : ''
		}, function(rsp) {
			if (rsp.success) {

				/* 결제가 정상적으로 진행시 ajax를 통해 해당 url에 post방식으로 productName을 전달 */
				$.ajax({
					type : "post",
					url : "/let/payments/exposure/complete",
					data : {

						productName : productName

					},
					
					/* 결제가 성공하였을 경우 */
					success : function(data) {
						alert('결제가 성공적으로 완료되었습니다.');

					},
					
					/* 결제를 실패하였을 경우 */
					error : function(xhr) {
						alert('결제를 실패하였습니다.');
					}
				})
				
		    /* 결제 진행이 실패하였을 경우 */
			} else {
				var msg = '결제에 실패하였습니다.';
				msg += '에러내용 : ' + rsp.error_msg;

				alert(msg);
			}
		});
	}
</script>

	<jsp:include page="../common/header/companyHeader.jsp" />

	<!-- 검은색 바탕 -->
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
									<li><a
										href="${ pageContext.servletContext.contextPath }/mainPage/CoMember">Home</a></li>
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

	<!-- 스카우트 열람권 상품조회 -->

	<div class="jp_pricing_main_wrapper">
		<h1 style="margin-right: 900px;">스카우트 열람권</h1>
		<br> <br>
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
										<br>
									</div>
								</div>
								<div class="pricing_btn_wrapper">
									<div class="pricing_btn1">
										<button type="button" class="btn btn-info"
											onclick="payReadingRight(this);">결제하기</button>
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

	<!-- 공고노출권 상품 조회 -->

	<div class="jp_pricing_main_wrapper">
		<h1 style="margin-right: 950px;">공고 노출권</h1>
		<br> <br>
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
														value="${ product.upperExposureTime/24/60/60 }"
														groupingUsed="true" /></span><span>일권</span></li>
										</ul>
										<br>
									</div>
								</div>
								<div class="pricing_btn_wrapper">
									<div class="pricing_btn1">
										<button type="button" class="btn btn-info"
											onclick="payExposureRight(this);">결제하기</button>
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



	<jsp:include page="../common/footer.jsp" />
</html>