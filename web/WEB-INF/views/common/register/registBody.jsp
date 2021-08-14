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
<script type="text/javascript">
	function validate() {
		var re = /^[a-zA-Z0-9]{4,12}$/ // 아이디가 적합한지 검사할 정규식
		var re2 =  /^(?=.*[a-zA-Z])(?=.*[!@#$%^*++-])(?=.*[0-9]).{8,18}$/; // 패스워드가 적합한지 검사할 정규식
		var re3 = /^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/i; //이메일이 적합한지
		var re4 = /^[0-9]$/ //핸드폰 번호가 적합한지
		
		var id = document.getElementById("id");
	    var pw = document.getElementById("pw");
	    var phone = document.getElementById("phone")
	    var email = document.getElementById("email");
	    
	    //----------유효성 검사 시작----------
	    
	    if(!check(re,id,"아이디는 4~12자의 영문 대소문자와 숮자로만 입력하세요!!")){
	    	return false;
	    }
	    
	    if(!check(re2,pw,"패스워드는 8~18자의 영문 대소문자, 숫자, 특수문자만 입력하세요")){
	    	return false;
	    }
	    
	    if(join.pw.value != join.value.checkpw.value){
	    	alert("비밀번호가 다릅니다 다시 확인해 주세요.");
	    	join.checkpw.value= "";
	    	join.checkpw.foucus();
	    	return false;
	    }
	    
	    if(!check(re4, phone, "핸드폰 번호가 아닙니다. 다시 입력해주세요.")){
	    	return false;
	    }
	    
	    if(email.value==""){
	    	alert("이메일을 입력해 주세요.");
	    	email.focus();
	    	return false;
	    }
	    
	    alert("회원가입이 완료되었습니다.")
	}
	
	  function check(re, what, message) {
	       if(re.test(what.value)) {
	           return true;
	       }
	       alert(message);
	       what.value = "";
	       what.focus();
	       //return false;
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
                            <h2>회원가입</h2>
                        </div>
                        <div class="jp_tittle_breadcrumb_main_wrapper">
                            <div class="jp_tittle_breadcrumb_wrapper">
                              
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
	   <!-- 여기부터 시작-->
	<form action="${ pageContext.servletContext.contextPath }/UserRegisterCheckServlet" name="join" onsubmit="return validate();" method="post">
    <div class="register_section">
        
        <div class="register_tab_wrapper">
            <div class="container">
                <div class="row">
                    <div class="col-md-10 col-md-offset-1">
                        <div role="tabpanel">
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
                                        
                                            <input type="text" name="userId"  style="text-transform: lowercase" placeholder="아이디" maxlength="20">
											<button name="idCheck" onclick="registerCheckFunction();" type="button">중복체크</button>
                                        </div>
                                        

                                        <div class="form-group col-md-6 col-sm-6 col-xs-12">
                                            <input type="email" name="email"   style="text-transform: lowercase" placeholder="이메일">
                                            <input type="button" value="이메일 보내기" class="btemail" id="btemail" >
                                            <img id="id_check_sucess" style="display: none;">
                                        </div>

                                        <div class="form-group col-md-6 col-sm-6 col-xs-12">
                                            <input type="text" name="comfirm" class="comfirm"value="인증번호 확인"  style="text-transform: lowercase" placeholder="인증번호">
                                            <input type="button" value="인증번호 확인" id="mailcheck"  class="mailcheck" >
                                        </div>

                                       
                                        <div class="form-group col-md-6 col-sm-6 col-xs-12">
                                            <input type="password" name="pw"  style="text-transform: lowercase" placeholder="비밀번호">
                                        </div>
                                        
                                        <div class="form-group col-md-6 col-sm-6 col-xs-12">

                                            <input type="password" name="checkpw"  style="text-transform: lowercase" placeholder="비밀번호 확인">
                                        </div>
                                        
                                        
                                        <div class="form-group col-md-6 col-sm-6 col-xs-12">

                                            <input type="text" name="name" style="text-transform: lowercase" placeholder="이름">

                                        </div>
                                        
                                        <div class="form-group col-md-6 col-sm-6 col-xs-12">

                                            <input type="text" name="phone" style="text-transform: lowercase" placeholder="phone">
                                        </div>

                                        <div class="form-group col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                            <div class="check-box text-center">
                                                <input type="checkbox" value="Y" name="agree" id="agree"> &ensp;
                                                <label for="account-option_1">회원가입을 <a href="#" class="check_box_anchr">규제하는 약관</a>에 동의합니다</label>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="login_btn_wrapper register_btn_wrapper login_wrapper ">
<!--                                         <a href="#" class="btn btn-primary login_btn" id="reg_submit"> 회원가입 </a> -->
											<input class="btn btn-regist" type="submit" value="회원가입"> 
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