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
<!-- favicon links -->
<link rel="shortcut icon" type="image/png"
	href="${ pageContext.servletContext.contextPath }/resources/image/header/favicon.ico" />
<script>

	function goMain() {
		location.href = ' /let/index.jsp';
	};
	$('#idCheck').click(function() {
		$.ajax({
			url : "/member/check",
			type : "post",
			data : {
				id : $('#memberId').val()
			},
			success : function(data) {
				console.log(data);

				if (data == 'ok') {
					alert("사용 가능한 아이디 입니다.");
				} else {
					alert("이미 사용 중인 아이디입니다.");
					$("#memberId").select();
				}
			},
			error : function() {
				console.log("---ERROR");
			}
		});
	});

	function sendIt() {
		
		var id = document.getElementById(id);
		var pwd = document.getElementById(pwd);
		var mail = document.getElementById();
		var id = document.getElementById();
		var id = document.getElementById();
		var id = document.getElementById();
		var id = document.getElementById();
		
		
		//아이디 입력여부 검사
		if (f.id.value == "") {
			alert("아이디를 입력하지 않았습니다.")
			f.id.focus();
			return false;
		}
		//아이디 유효성 검사 (영문소문자, 숫자만 허용)
		for (var i = 0; i < document.f.id.value.length; i++) {
			ch = document.f.id.value.charAt(i)
			if (!(ch >= '0' && ch <= '9') && !(ch >= 'a' && ch <= 'z')
					&& !(ch >= 'A' && ch <= 'Z')) {
				alert("아이디는 영문 대소문자, 숫자만 입력가능합니다.")
				document.f.id.focus();
				document.f.id.select();
				return false;
			}
		}
		//아이디에 공백 사용하지 않기
		if (document.f.id.value.indexOf(" ") >= 0) {
			alert("아이디에 공백을 사용할 수 없습니다.")
			document.f.id.focus();
			document.f.id.select()
			return false;
		}
		//아이디 길이 체크 (4~12자)
		if (document.f.id.value.length<4 || document.f.id.value.length>12) {
			alert("아이디를 4~12자까지 입력해주세요.")
			document.f.id.focus();
			document.f.id.select();
			return false;
		}
		//비밀번호 입력여부 체크
		if (document.f.password.value == "") {
			alert("비밀번호를 입력하지 않았습니다.")
			document.f.password.focus();
			return false;
		}
		if (f.password.value == f.id.value) {
			alert("아이디와 비밀번호가 같습니다.")
			document.f.password.focus();
			return false;
		}
		//비밀번호 길이 체크(4~8자 까지 허용)
		if (document.f.password.value.length<4 || document.f.password.value.length>12) {
			alert("비밀번호를 4~12자까지 입력해주세요.")
			document.f.password.focus();
			document.f.password.select();
			return false;
		}
		//비밀번호와 비밀번호 확인 일치여부 체크
		if (document.f.password.value != document.f.password1.value) {
			alert("비밀번호가 일치하지 않습니다")
			document.f.password1.value = ""
			document.f.password1.focus();
			return false;
		}

		if (document.f.mail.value == "") {
			alert("이메일을 입력하지 않았습니다.")
			document.mail.focus();
			return false;
		}
		if (regex.test(mail) === false) {
			alert("잘못된 이메일 형식입니다.");
			document.f.mail.value = ""
			document.f.mail.focus();
			return false;
		}

		for (var i = 0; i < document.f.mail.value.length; i++) {
			chm = document.f.mail.value.charAt(i)
			if (!(chm >= '0' && chm <= '9') && !(chm >= 'a' && chm <= 'z')
					&& !(chm >= 'A' && chm <= 'Z')) {
				alert("이메일은 영문 대소문자, 숫자만 입력가능합니다.")
				document.f.mail.focus();
				document.f.mail.select();
				return false;
			}
		}

		if (document.f.name.value == "") {
			alert("이름을 입력하지 않았습니다.")
			document.f.name.focus();
			return false;
		}

		if (document.f.name.value.length < 2) {
			alert("이름을 2자 이상 입력해주십시오.")
			document.f.name.focus();
			return false;
		}

	}
</script>
</head>
<body>
	   <!-- 여기부터 시작-->
    <div class="register_section">
        
        <div class="register_tab_wrapper">
            <div class="container">
                <div class="row">
                    <div class="col-md-10 col-md-offset-1">
                        <div role="tabpanel">

                            <!-- Nav tabs -->
                            <ul id="tabOne" class="nav register-tabs">
                                <li class="active"><a href="#contentOne-1" data-toggle="tab">개인회원 가입 <br> <span>구직하고 싶어요</span></a>
                                </li>
                                <li><a href="#contentOne-2" data-toggle="tab">기업회원 가입 <br> <span>사람을 찾고 싶어요</span></a>
                                </li>
                            </ul>

                            <!-- Tab panes -->
                            <div class="tab-content">
                                <div class="tab-pane fade in active register_left_form" id="contentOne-1">
									
                                    <div class="jp_regiter_top_heading">
                                        <p>회원가입란 </p>
                                    </div>
                                    <div class="row">
                                       
                                        <div class="form-group col-md-6 col-sm-6 col-xs-12">
                                            <input type="text" name="id"  onchange="sendIt()" style="text-transform: lowercase" placeholder="아이디">
                                            <input type="button" value="중복채크" onclick="idCheck">
                                        </div>

                                        <div class="form-group col-md-6 col-sm-6 col-xs-12">
                                            <input type="email" name="mail"  onchange="sendIt()" style="text-transform: lowercase" placeholder="이메일">
                                            <input type="button" value="이메일 보내기" onclick="">
                                        </div>

                                        <div class="form-group col-md-6 col-sm-6 col-xs-12">
                                            <input type="text" name="comfirm" value="인증번호 확인"  style="text-transform: lowercase" placeholder="인증번호">
                                            <input type="button" value="인증번호 확인" onclick="">
                                        </div>

                                       
                                        <div class="form-group col-md-6 col-sm-6 col-xs-12">
                                            <input type="password" name="pw1" onchange="sendIt()" style="text-transform: lowercase" placeholder="비밀번호">
                                        </div>
                                        
                                        <div class="form-group col-md-6 col-sm-6 col-xs-12">

                                            <input type="password" name="pw2" onchange="sendIt()"  style="text-transform: lowercase" placeholder="비밀번호 확인">
                                        </div>
                                        
                                        
                                        <div class="form-group col-md-6 col-sm-6 col-xs-12">

                                            <input type="text" name="name" onchange="sendIt()" style="text-transform: lowercase" placeholder="이름">

                                        </div>
                                        
                                        <div class="form-group col-md-6 col-sm-6 col-xs-12">

                                            <input type="text" name="phone" onchange="sendIt()" style="text-transform: lowercase" placeholder="phone">
                                        </div>

                                        <div class="form-group col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                            <div class="check-box text-center">
                                                <input type="checkbox" name="shipping-option" id="account-option_1"> &ensp;
                                                <label for="account-option_1">회원가입을 <a href="#" class="check_box_anchr">규제하는 약관</a>에 동의합니다</label>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="login_btn_wrapper register_btn_wrapper login_wrapper ">
                                        <a href="#" class="btn btn-primary login_btn"> 회원가입 </a>
                                    </div>
                                    <div class="login_message">
                                        <p>회원인가요? <a href="#"> Login Here </a> </p>
                                    </div>
                                </div>

                                <div class="tab-pane fade register_left_form" id="contentOne-2">

                                    <div class="jp_regiter_top_heading">
                                        <p>Fields with * are mandetory </p>
                                    </div>
                                    <div class="row clearfix">
                                        <!--Form Group-->
                                        <div class="form-group col-md-6 col-sm-6 col-xs-12">
                                            <input type="text" name="field-name" value="" placeholder="Username*">
                                        </div>
                                        <!--Form Group-->
                                        <div class="form-group col-md-6 col-sm-6 col-xs-12">
                                            <input type="text" name="field-name" value="" placeholder="Email*">
                                        </div>
                                        <!--Form Group-->
                                        <div class="form-group col-md-6 col-sm-6 col-xs-12">

                                            <input type="password" name="field-name" value="" placeholder="password*">
                                        </div>
                                        <!--Form Group-->
                                        <div class="form-group col-md-6 col-sm-6 col-xs-12">

                                            <input type="password" name="field-name" value="" placeholder="re-enter password*">
                                        </div>

                                        <!--Form Group-->
                                        <div class="form-group col-md-6 col-sm-6 col-xs-12">

                                            <input type="text" name="field-name" value="" placeholder="phone">
                                        </div>

                                        <!--Form Group-->
                                        <div class="form-group col-md-6 col-sm-6 col-xs-12">

                                            <input type="text" name="field-name" value="" placeholder="company name">

                                        </div>

                                        <!--Form Group-->
                                        <div class="form-group col-md-6 col-sm-6 col-xs-12">

                                            <input type="text" name="field-name" value="" placeholder="website">

                                        </div>
                                        <!--Form Group-->
                                        <div class="form-group col-md-6 col-sm-6 col-xs-12">

                                            <input type="text" name="field-name" value="" placeholder="address line">
                                        </div>

                                        <div class="form-group col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                            <div class="check-box text-center">
                                                <input type="checkbox" name="shipping-option" id="account-option_2"> &ensp;
                                                <label for="account-option_2">I agreed to the <a href="#" class="check_box_anchr">Terms and Conditions</a> governing the use of jobportal</label>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="login_btn_wrapper register_btn_wrapper login_wrapper ">
                                        <a href="#" class="btn btn-primary login_btn"> register </a>
                                    </div>
                                    <div class="login_message">
                                        <p>Already a member? <a href="#"> Login Here </a> </p>
                                    </div>

                                </div>

                            </div>
                            <p class="btm_txt_register_form">In case you are using a public/shared computer we recommend that you logout to prevent any un-authorized access to your account</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</body>
</html>