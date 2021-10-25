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
<!--srart theme style -->
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
<script type="text/javascript">

/* 유효성 검사 */
function checkValue() {
	
	/* <form>의 정보를 var form 변수로 저장  */
	var form = document.inMemberRegist;
	
	/* 아이디가 적합한지 검사할 정규식 */
	var re = /^[a-zA-Z0-9]{4,12}$/; 	
	
	//  패스워드가 적합한지 검사할 정규식
	var re2 =  /^(?=.*[a-zA-Z])(?=.*[!@#$%^*++-])(?=.*[0-9]).{8,18}$/;

	/* id가 memId이 태그의 값을 var memId로 저장*/
	var memId = document.getElementById("memId");
	
	/* id가 memPwd이 태그의 값을 var memPwd로 저장*/
    var memPwd = document.getElementById("memPwd");

    /* memId가 re의 정규식에 적합하지 않을 경우 */
    if(!check(re,memId, "아이디는 4~12자의 영문 대소문자와 숫자로 입력해주세요")){
    	return false;
    }
	
    /* form안의 태그 아이디가 idDuplication인 태그의 값이 idCheck가 아닐경우 */
	if(form.idDuplication.value != "idCheck") {
		alert("아이디 중복체크를 해주세요.");
		return false;
	}
	
	 /* form안의 태그 아이디가 certificationYn인 태그의 값이 true가 아닐경우 */
	if(form.certificationYn.value != "true") {
		alert("이메일 인증확인을 해주세요.");
		return false;
	}

	 /* memPwd가 re2의 정규식에 적합하지 않을 경우 */
    if(!check(re2,memPwd, "패스워드는 8~18자의 영문 대소문자, 숫자, 특수문자를 모두 포함시켜 입력해주세요")){
    	return false;
    }
    
	/* id가 memPwd인 태그의 값과 id가 memPwd2인 태그의 값이 다를 경우 */ 
	if(form.memPwd.value != form.memPwd2.value ){
        alert("비밀번호를 동일하게 입력하세요.");
        return false;
    } 
	
}	

/* 아이디가 적합한지 검사할 정규식, 사용자가 입력한 아이디, alert를 통해 내보낼 메세지를 통한 유효성 검사 */
function check(re, what, message) {
	  
	  /* 정규식에 적합한 경우 */
     if(re.test(what.value)) {
         return true;
     }
	  
	  /* 정규식에 적합하지 않은 경우 */
     alert(message);
     what.value = "";
     what.focus();
     return false;
 }

/* 중복확인시 화면을 띄움 */
function openIdChk() {
	 
	/* 새창의 이름 */
	 window.name = "parentForm";
	
	/* 새창의 url, 크기, 높이, 크기/높이 조절가능여부, 스크롤바생성여부 등을 지정 */
	 window.open("/let/member/individual/idCheck", "chkForm", "width=500, height=300, resizable = no, scorllbars = no");
	 
}

/* 중복확인 후 다시 아이디를 입력했을 때, idDuplication의 값을 idUnCheck로 바꿈으로 중복체크를 다시해야하는 유효성 검사에 걸리게 함 */
function inputIdChk(){
    document.inMemberRegist.idDuplication.value ="idUncheck";
}	

/* 인증번호 전송시 */ 
function emailSend() {
	
	/* id가 memEmail이 태그의 값을 var memEmail로 저장*/
	var memEmail = document.getElementById('memEmail').value;
		
	/* var memEmail의 값을 ajax를 통해 해당 url의 get방식으로 전달 */
	$.ajax({
		type:"get",
		url:"/let/member/whole/email",
		data:{memEmail:memEmail},
		success : function(data) {			
			alert('인증번호가 전송되었습니다.');		
		},
		error:function(xhr) {
			alert('인증번호 전송을 실패하였습니다.')
		}
	});
			
}

/* 이메일에 보낸 인증번호와 사용자가 입력한 인증번호가 같은지 유효성 검사 */
function checkEmailCode() {
	
	/* id가 certificationNumber이 태그의 값을 var certificationNumber로 저장*/
	var certificationNumber = document.getElementById("certificationNumber").value;
	
	/* <form>의 정보를 var form 변수로 저장  */
	var form = document.inMemberRegist;
	
	/* var certificationNumber의 값을 ajax를 통해 해당 url의 get방식으로 전달 */
	$.ajax({
		type:"post",
		url:"/let/member/whole/email",
		data:{certificationNumber: certificationNumber},
		success : function(data) {
			if(data == "true") {
				alert('이메일 인증에 성공하였습니다.');
				
				/* 이메일 인증이 확인되어 value를 true로 변경함으로써 checkValue()의 유효성검사에 걸리지 않게함 */
				form.certificationYn.value = "true";
			} else {
				alert('이메일 인증에 실패하였습니다.');
				
				/* 이메일 인증이 일치하지 않아 사용자가 작성한 입력칸을 빈칸으로 만든다. */
				 form.certificationNumber.value = "";
				
				/* 이메일 인증이 일치하지 않아 커서를 인증번호입력칸으로 이동시킨다. */
				 form.certificationNumber.focus();
				
				/* 임에리 인증이 일치하지 않아  checkValue() 유효성 검사에 걸리게끔 false로 변경 */
				 form.certificationYn.value = "false";
				 return false;
			}
		},
		error: function(xhr) {
			alert('인증번호를 발송해주세요')
		}
	});
}

	
</script>
</head>
<body>

	<!-- 상단 검은색 바탕 -->

	<div class="jp_tittle_main_wrapper">
		<div class="jp_tittle_img_overlay"></div>
		<div class="container">
			<div class="row">
				<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
					<div class="jp_tittle_heading_wrapper">
						<div class="jp_tittle_heading">
							<h2>개인회원가입</h2>
						</div>
						<div class="jp_tittle_breadcrumb_main_wrapper">
							<div class="jp_tittle_breadcrumb_wrapper"></div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<!-- 회원가입 작성란 -->

	<form
		action="${ pageContext.servletContext.contextPath }/member/individualRegist"
		onSubmit="return checkValue();" name="inMemberRegist" method="post">
		<div class="register_section">
			<div class="register_tab_wrapper">
				<div class="container">
					<div class="row">
						<div class="col-md-10 col-md-offset-1">
							<div role="tabpanel">
								<ul id="tabOne" class="nav register-tabs">
									<li class="active"><a href="#contentOne-1"
										data-toggle="tab">개입회원가입 <br> <span
											style="font-size: 0.5em;">Li am looking for a job</span></a></li>
								</ul>
								<div class="tab-content">
									<div id="contentOne-1">

										<div class="jp_regiter_top_heading">
											<p>필수항목 *</p>
										</div>

										<div class="row clearfix">
											<div style="width: 460px;"
												class="form-group col-md-6 col-sm-6 col-xs-12">
												<input
													style="width: 430px; height: 60px; border-radius: 5px;"
													type="text" maxlength="50" name="memId" id="memId"
													maxlength="13" placeholder="아이디 *"
													onkeydown="inputIdChk();" required> <input
													style="width: 120px; height: 50px; border-radius: 10px;"
													type="button" value="중복확인" onclick="openIdChk();">
												<input type="hidden" name="idDuplication" value="idUncheck">

											</div>
											<div style="width: 460px;"
												class="form-group col-md-6 col-sm-6 col-xs-12">
												<input
													style="margin-top: 30px; width: 430px; height: 60px; border-radius: 5px;"
													type="email" id="memEmail" name="memEmail"
													placeholder="이메일*" required>
												<button
													style="width: 120px; height: 50px; border-radius: 10px;"
													id="emailcheck" onclick="emailSend()" type="button">인증번호발송</button>
												<input
													style="margin-top: 30px; width: 430px; height: 60px; border-radius: 5px;"
													type="text" name="certificationNumber"
													id="certificationNumber" placeholder="인증번호 *" required>
												<button
													style="width: 120px; height: 50px; border-radius: 10px;"
													id="certificationBtn" type="button"
													onclick="checkEmailCode();">인증하기</button>
												<input type="hidden" id="certificationYn" value="false">
											</div>

											<div class="form-group col-md-6 col-sm-6 col-xs-12">
												<input
													style="width: 430px; height: 60px; border-radius: 5px;"
													type="password" name="memPwd" id="memPwd"
													placeholder="비밀번호*" required>

											</div>
											<div class="form-group col-md-6 col-sm-6 col-xs-12">
												<input
													style="width: 430px; height: 60px; border-radius: 5px;"
													type="password" name="memPwd2" id="memPwd2"
													placeholder="비밀번호 재입력 *" required>
											</div>

											<div class="form-group col-md-6 col-sm-6 col-xs-12">
												<input
													style="width: 430px; height: 60px; border-radius: 5px;"
													type="text" name="memName" id="memName" placeholder="이름*"
													required>
											</div>

											<div class="form-group col-md-6 col-sm-6 col-xs-12">
												<input
													style="width: 430px; height: 60px; border-radius: 5px;"
													type="text" name="memPhone" id="memPhone"
													placeholder="핸드폰 번호 Ex) 01012345678 *" required>
											</div>


											<div class="form-group col-lg-12 col-md-12 col-sm-12 ">
												<div class="check-box text-center">
													<input type="checkbox" name="shipping-option"
														id="account-option_2" required> &ensp; <span>
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



</body>
</html>