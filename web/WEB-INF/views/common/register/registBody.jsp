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
<script>
	

	function sendIt() {

		var idJ = /^[a-z0-9]{4,12}$/;
		
		
		$("#id").click(function () {
			
			var id = $('#id').val();
			$.ajax({
				url : '${pageContext.request.contextPath}/user/idCheck?userId='+ user_id,
				
				type : 'get',
				success : function(data) {
					
					console.log("1 = 중복O / 0 = 중복X : " + data);
					
					if(date == 1){
						
					alert("사용중인 아이디입니다.");
					$("#id_check").css("color", "red");
					$("#reg_submit").attr("disabled", true);
					}else{
						
						if(idJ.test(id)){
							// 0 : 아이디 길이 / 문자열 검사
							$("#id_check").text("");
							$("#reg_submit").attr("disabled", false);
				
						} else if(id == ""){
							
							alert('아이디를 입력해주세요');
							$('#id_check').css('color', 'red');
							$("#reg_submit").attr("disabled", true);				
							
						} else {
							
							alert("아이디는 소문자와 숫자 4~12자리만 가능합니다.");
							$("#reg_submit").attr("disabled", true);
						}
						
					}
				}, error : function() {
						console.log("실패");
				}
			});
		});
		
		
		var pwd = document.getElementById("pw1");
		var repwd = document.getElementById("pw2");
		var email = document.getElementById("email");
		var comfirm = document.getElementById("comfirm");
		var name = document.getElementById("name");
		var phone = document.getElementById("phone");
		var agree = document.getElementById("agree");



		if (pwd.value == "") {
			alert("비밀번호를 입력하세요.");
			pwd.focus();
			return false;
		};

		//비밀번호 영문자 + 숫자 + 특수조합(8~25자리 입력) 정규식
		var pwdCheck = /^(?=.*[a-zA-Z])(?=.*[!@#$%^*++-])(?=.*[0-9]).{8,18}$/;

		if (!pwdCheck.test(pwd.value)) {
			alert("비밀번호는 영문자+숫자+특수문자 조합으로 8~25자리 사용해야 합니다.");
			pwd.focus();
			return false;
		};

		if (repwd.value !== pwd.value) {
			alert("비밀번호가 일치하지 않습니다..");
			repwd.focus();
			return false;
		};

		if (email.value == "") {
			alert("이메일 주소를 입력하세요.");
			email.focus();
			return false;
		};

		var reg = /^[0-9]+/g;

		if (!reg.test(phone.value)) {
			alert("전화번호는 숫자만 입력할 수 있습니다.")
			phone.focus();
			return false;
		};

		if (!agree.checked) {
			alert("약관 동의를 체크하세요.!!!");
			agree.focus();
			return false;
		};

		document.join_form.submit();

	}
	function emailCheck() {
		var form = document.authenform;
		var comfirm = ${ comfirm };
		
		if(!form.comfirm.value){
			alert("인증번호를 입력하세요!!");
			return false;
		}
		if(form.comfirm.value != comfirm){
			alert("틀린 인증번호입니다. 인증번호를 다시 입력해주세요");
			return false;
		}
		if(form.comfirm.value==comfirm){
			alert("인증완료");
			opener.document.userinput.mailCheck.value ="인증완료";
			self.close();
		}
	}
</script>
</head>
<body>
	   <!-- 여기부터 시작-->
	<form action="/regist/member" name="join_form" method="post">
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
                                        
                                            <input type="text" name="id" class="form-control"  style="text-transform: lowercase" placeholder="아이디">
											<input type="button" name="id" value="중복체크">
                                        </div>
                                        

                                        <div class="form-group col-md-6 col-sm-6 col-xs-12">
                                            <input type="email" name="email"  onchange="sendIt()" style="text-transform: lowercase" placeholder="이메일">
                                            <input type="button" value="이메일 보내기" class="id_overlap_button" onclick="id_overlap_check()">
                                            <img id="id_check_sucess" style="display: none;">
                                        </div>

                                        <div class="form-group col-md-6 col-sm-6 col-xs-12">
                                            <input type="text" name="comfirm" value="인증번호 확인"  style="text-transform: lowercase" placeholder="인증번호">
                                            <input type="button" value="인증번호 확인" onclick="emailCheck()">
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
                                                <input type="checkbox" value="Y" name="agree" id="agree"> &ensp;
                                                <label for="account-option_1">회원가입을 <a href="#" class="check_box_anchr">규제하는 약관</a>에 동의합니다</label>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="login_btn_wrapper register_btn_wrapper login_wrapper ">
                                        <a href="#" class="btn btn-primary login_btn" id="reg_submit"> 회원가입 </a>
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
    </form>
</body>
</html>