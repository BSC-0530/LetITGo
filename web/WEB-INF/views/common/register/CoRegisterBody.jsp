<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />
<title>Job Pro Responsive HTML Template</title>
<meta content="width=device-width, initial-scale=1.0" name="viewport" />
<meta name="description" content="Job Pro" />
<meta name="keywords" content="Job Pro" />
<meta name="author" content="" />
<meta name="MobileOptimized" content="320" />
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
<link rel="shortcut icon" type="image/png"
	href="${ pageContext.servletContext.contextPath }/resources/image/header/favicon.ico" />
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script>
	function checkValue2() {

		var form = document.coMemberRegist;

		var re = /^[a-zA-Z0-9]{4,12}$/; // 아이디가 적합한지 검사할 정규식
		var re2 = /^(?=.*[a-zA-Z])(?=.*[!@#$%^*++-])(?=.*[0-9]).{8,18}$/; // 패스워드가 적합한지 검사할 정규식
		var re3 = /01[016789]-[^0][0-9]{2,3}-[0-9]{3,4}/; //핸드폰 번호 정규식
		var re4 = /^[0-9]{2,3}-[0-9]{3,4}-[0-9]{4}$/; // 전화번호/팩스번호 입력하는 정규식
		var re5 = /^[가-힣]{2,4}|[a-zA-Z]{2,10}\s[a-zA-Z]{2,10}$/; //이름 정규식

		var cmemId = document.getElementById("cmemId");
		var cmemPwd = document.getElementById("cmemPwd");

		if (!check2(re, cmemId, "아이디는 4~12자의 영문 대소문자와 숫자로 입력해주세요")) {
			return false;
		}

		if (form.idDuplication.value != "idCheck2") {
			alert("아이디 중복체크를 해주세요.")
			return false;
		}
		
		if(form.certificationYn.value != "true") {
			alert("이메일 인증확인을 해주세요.");
			return false;
		}

		if (!check2(re2, cmemPwd, "패스워드는 8~18자의 영문 대소문자, 숫자, 특수문자를 모두 포함시켜 입력해주세요")) {
			return false;
		}

		if (form.cmemPwd.value != form.cmemPwd2.value) {
			alert("비밀번호를 동일하게 입력하세요.");
			return false;
		}

	}

	function check2(re, what, message) {
		if (re.test(what.value)) {
			return true;
		}
		alert(message);
		what.value = "";
		what.focus();
		return false;
	}
</script>
<script>
	function openIdChk2() {

		window.name = "parentForm";
		window.open("/let/member/coporate/idCheck2", "chkForm",
				"width=500, height=300, resizable = no, scorllbars = no");

	}
</script>
<script>
	function inputIdChk2() {
		document.coMemberRegist.idDuplication.value = "idUncheck";
	}
</script>
<script>
	function emailSend2() {

		let memEmail = document.getElementById('memEmail').value;
		
		$.ajax({
			type : "get",
			url : "/let/member/whole/email",
			data : {
				memEmail: memEmail
			},
			success : function(data) {
				alert('인증번호가 전송되었습니다.');

			},
			error:function(xhr) {
				alert('jsp : 인증번호 전송을 실패하였습니다.')
			}
		});

	}
</script>
<script>
	function checkEmailCode2() {

		var certificationNumber = document
				.getElementById("certificationNumber").value;

		var form = document.coMemberRegist;

		$.ajax({
			type : "post",
			url : "/let/member/whole/email",
			data : {
				certificationNumber : certificationNumber
			},
			success : function(data) {
				if (data == "true") {
					alert('이메일 인증에 성공하였습니다.');
					form.certificationYn.value = "true";
				} else {
					alert('이메일 인증에 실패하였습니다.');
					form.certificationNumber.value = "";
					form.certificationNumber.focus();
					form.certificationYn.value = "false";
					return false;
				}
			},
			error : function(xhr) {
				alert('jsp : 이메일 인증에 오류가 있습니다.');
			}
		});
	}
</script>
</head>
<body>

	<div class="jp_tittle_main_wrapper">
		<div class="jp_tittle_img_overlay"></div>
		<div class="container">
			<div class="row">
				<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
					<div class="jp_tittle_heading_wrapper">
						<div class="jp_tittle_heading">
							<h2>기업회원가입</h2>
						</div>
						<div class="jp_tittle_breadcrumb_main_wrapper">
							<div class="jp_tittle_breadcrumb_wrapper"></div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<form
		action="${ pageContext.servletContext.contextPath }/member/coporateRegist"
		id="coMemberRegist" name="coMemberRegist"
		onSubmit="return checkValue2();" method="post" enctype="multipart/form-data">
		<div class="register_section">
			<div class="register_tab_wrapper">
				<div class="container">
					<div class="row">
						<div class="col-md-10 col-md-offset-1">
							<div role="tabpanel">

								<ul id="tabOne" class="nav register-tabs">
									<li class="active"><a href="#contentOne-1"
										data-toggle="tab">기업회원가입 <br> <span>i am
												looking for a employee</span></a></li>
								</ul>

								<div class="tab-content">
									<div id="contentOne-1">
										<div class="jp_regiter_top_heading">
											<p>필수항목 *</p>
										</div>
										<div class="row">
											<div style="width: 460px;"
												class="form-group col-md-6 col-sm-6 col-xs-12">
												<input
													style="width: 430px; height: 60px; border-radius: 5px;"
													type="text" maxlength="50" name="cmemId" id="cmemId"
													maxlength="13" placeholder="아이디 *"
													onkeydown="inputIdChk2()" required> <input
													style="width: 120px; height: 50px; border-radius: 10px;"
													type="button" value="중복확인" onclick="openIdChk2()">
												<input type="hidden" name="idDuplication" value="idUncheck">
												<input
													style="width: 430px; height: 60px; border-radius: 5px; margin-top: 30px;"
													type="email" name="memEmail" id="memEmail"
													placeholder="이메일*" required>
												<button
													style="width: 120px; height: 50px; border-radius: 10px;"
													id="cemailcheck" onclick="emailSend2()" type="button">인증번호발송</button>
												<input
													style="margin-top: 30px; width: 430px; height: 60px; border-radius: 5px;"
													type="text" name="certificationNumber"
													id="certificationNumber" placeholder="인증번호 *" required>
												<button
													style="width: 120px; height: 50px; border-radius: 10px;"
													id="certificationBtn" type="button"
													onclick="checkEmailCode2();">인증하기</button>
												<input type="hidden" id="certificationYn" value="false">
											</div>

											<div class="form-group col-md-6 col-sm-6 col-xs-12">

												<input
													style="width: 430px; height: 60px; magin-top: 30px; border-radius: 5px;"
													type="password" name="cmemPwd" id="cmemPwd"
													placeholder=" 비밀번호*" required>
											</div>

											<div class="form-group col-md-6 col-sm-6 col-xs-12">
												<input
													style="width: 430px; height: 60px; magin-left: 20px; border-radius: 5px;"
													type="password" name="cmemPwd2" id="cmemPwd2" value=""
													placeholder="비밀번호 재입력*" required>
											</div>

											<div class="form-group col-md-6 col-sm-6 col-xs-12">
												<input
													style="width: 430px; height: 60px; border-radius: 5px;"
													type="text" name="cmemName" id="cmemName"
													placeholder="담당자 이름*" required>
											</div>

											<div class="form-group col-md-6 col-sm-6 col-xs-12">
												<input
													style="width: 430px; height: 60px; border-radius: 5px;"
													type="text" name="cmemPhone" id="cmemPhone"
													placeholder="담당자 전화번호  ex) 010-1234-5678*" required>
											</div>

											<div class="form-group col-md-6 col-sm-6 col-xs-12">
												<input
													style="width: 430px; height: 60px; border-radius: 5px;"
													type="text" name="coNo" id="coNo" placeholder="사업자등록번호*"
													required>

												<button
													style="width: 120px; height: 50px; border-radius: 10px;"
													id="certificationBtn" type="button" onclick="noCheck();">양식확인</button>


											</div>

											<div class="form-group col-md-6 col-sm-6 col-xs-12">
												<input
													style="width: 430px; height: 60px; border-radius: 5px;"
													type="text" name="coComName" id="coComName"
													placeholder="기업 이름*" required>
											</div>

											<div class="form-group col-md-6 col-sm-6 col-xs-12">
												<input
													style="width: 430px; height: 60px; border-radius: 5px;"
													type="text" name="coCeoName" id="coCeoName"
													placeholder="대표자 이름 *" required>
											</div>

											<div class="form-group col-md-6 col-sm-6 col-xs-12">
												<input
													style="width: 430px; height: 60px; border-radius: 5px;"
													type="text" name="coSectors" id="coSectors"
													placeholder="업종 *" required>
											</div>

											<div style="width: 460px;"
												class="form-group col-md-6 col-sm-6 col-xs-12">
												<input
													style="width: 430px; height: 60px; border-radius: 5px;"
													type="text" name="coStatus" id="coStatus"
													placeholder="업태* " required>
											</div>

											<div class="form-group col-md-6 col-sm-6 col-xs-12">
												<input
													style="width: 430px; height: 60px; magin-left: 20px; border-radius: 5px;"
													type="text" name="zipCode" id="zipCode" id="zipCode"
													readonly placeholder="우편번호 *"> <input
													style="width: 120px; border: 2px solid black; height: 50px; border-radius: 10px;"
													type="button" value="검색" class="btn btn-yg"
													id="searchZipCode">
											</div>

											<div class="form-group col-md-6 col-sm-6 col-xs-12">
												<input
													style="width: 430px; height: 60px; magin-left: 20px; border-radius: 5px;"
													type="text" name="address1" id="address1"
													placeholder="주소 *" readonly>
											</div>

											<div class="form-group col-md-6 col-sm-6 col-xs-12">
												<input
													style="width: 430px; height: 60px; magin-left: 20px; border-radius: 5px;"
													type="text" name="address2" id="address2"
													placeholder="상세주소 *">
											</div>

											<div class="form-group col-md-6 col-sm-6 col-xs-12">
												<input
													style="width: 430px; height: 60px; magin-left: 20px; border-radius: 5px;"
													type="text" name="coWebsite" id="coWebsite"
													placeholder="웹사이트 주소">
											</div>

											<div class="form-group col-md-6 col-sm-6 col-xs-12">
												<input
													style="width: 430px; height: 60px; magin-left: 20px; border-radius: 5px;"
													type="text" name="coPhone" id="coPhone"
													placeholder="기업 전화번호 ex) 020000000">
											</div>

											<div style="width: 460px;"
												class="form-group col-md-6 col-sm-6 col-xs-12">
												<input
													style="width: 430px; height: 60px; magin-left: 20px; border-radius: 5px;"
													type="text" name="coPax" id="coPax"
													placeholder="기업 팩스번호 ex) 0200000000">
											</div>

											<div class="form-group col-md-6 col-sm-6 col-xs-12">
												<h2>회사소개글</h2>
												<div
													class="jp_contact_inputs_wrapper jp_contact_inputs4_wrapper">
													<textarea style="width: 207%; height: 200px;"
														name="coIntro" id="coIntro" rows="6" cols="10"
														placeholder="회사소개 *" required></textarea>

												</div>
												<div
													class="form-group col-md-6 col-sm-6 col-xs-12 custom_input">
													<input type="file" name="coLogo" id="coLogo" required>
													<p></p>
													<p>회사 로고</p>
													<input type="file" name="coRepresentativImage"
														id="coRepresentativImage" required>
													<p></p>
													<p>회사 대표이미지</p>
													<input type="file" name="businessRegistration"
														id="businessRegistration" required>
													<p></p>
													<p>사업자 등록증</p>
												</div>
												<div
													class="form-group col-md-6 col-sm-6 col-xs-12 custom_input">
												</div>
												<div
													class="form-group col-md-6 col-sm-6 col-xs-12 custom_input">
												</div>
											</div>

											<div
												class="form-group col-lg-12 col-md-12 col-sm-12 col-xs-12">
												<div class="check-box text-center">
													<input type="checkbox" name="shipping-option"
														id="account-option_1" required> &ensp; <span>
														LetItGo 웹사이트 <a href="#" class="check_box_anchr">이용약관</a>
														에 동의합니다.
													</span>
												</div>
											</div>
										</div>

										<div
											class="login_btn_wrapper register_btn_wrapper login_wrapper ">
											<button class="btn btn-primary login_btn"
												style="width: 100%; height: 50px;" type="submit">회원가입</button>
										</div>
										<div class="login_message">
											<p>
												이미 회원이신가요? <a
													href="${ pageContext.servletContext.contextPath }/loginPage">
													로그인 </a>
											</p>
										</div>
									</div>
								</div>
								<p class="btm_txt_register_form">공용/공유 컴퓨터를 사용하는 경우 계정에 대한
									무단 액세스를 방지하기 위해 로그아웃하는 것이 좋습니다.</p>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</form>

	<script
		src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js">
		
	</script>

	<script>
		const $searchZipCode = document.getElementById("searchZipCode");

		$searchZipCode.onclick = function() {

			new daum.Postcode({
				oncomplete : function(data) {
					document.getElementById("zipCode").value = data.zonecode;
					document.getElementById("address1").value = data.address;
					document.getElementById("address2").focus();
				}
			}).open();
		}
	</script>
	<script>
function noCheck(button){
// 	사업자 등록증 번호 유효한지 체크 
	let coNo = $("#coNo").val();
			
// 	alert(coComNo);
	if(!checkCorporateRegistrationNumber(coNo.replaceAll("-",""))){
		   alert("유효한 사업자번호를 입력하세요");
		   $("#coNo").focus();
		   $("#coNo").val("");
		   return;
		}
	alert('사용가능한 사업자 번호입니다.');
	
	
	
}
</script>
<script>
function checkCorporateRegistrationNumber(value) {
    var valueMap = value.replace(/-/gi, '').split('').map(function(item) {
        return parseInt(item, 10);
    });

    if (valueMap.length === 10) {
        var multiply = new Array(1, 3, 7, 1, 3, 7, 1, 3, 5);
        var checkSum = 0;

        for (var i = 0; i < multiply.length; ++i) {
            checkSum += multiply[i] * valueMap[i];
        }

        checkSum += parseInt((multiply[8] * valueMap[8]) / 10, 10);
        return Math.floor(valueMap[9]) === (10 - (checkSum % 10));
    }

    return false;
}
</script>

</body>
</html>