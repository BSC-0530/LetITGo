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
	
function checkValue() {
	
	var form = document.inMemberRegist;

	if(!form.memId.value) {
		alert("아이디를 입력하세요.");
		return false;
	}
	
	if(form.idDuplication.value != "idCheck") {
		alert("아이디 중복체크를 해주세요.")
		return false;
	}
	
	if(!form.memEmail.value){
        alert("이름을 입력하세요.");
        return false;
    }
	
	if(!form.memPwd.value){
        alert("비밀번호를 입력하세요.");
        return false;
    }

	if(form.memPwd.value != form.memPwd2.value ){
        alert("비밀번호를 동일하게 입력하세요.");
        return false;
    }   
	
	if(!form.memPhone.value){
        alert("핸드폰 번호를 입력하세요.");
        return false;
    }

	var re = /^[a-zA-Z0-9]{4,12}$/ // 아이디가 적합한지 검사할 정규식
	var re2 =  /^(?=.*[a-zA-Z])(?=.*[!@#$%^*++-])(?=.*[0-9]).{8,18}$/; // 패스워드가 적합한지 검사할 정규식
	var re3 = /^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/i; //이메일이 적합한지
	var re4 = /^[0-9]$/ //핸드폰 번호가 적합한지
	
	var memId = document.getElementById("memId");
    var memPwd = document.getElementById("memPwd");
    var memPhone = document.getElementById("memPhone");
    var memEmail = document.getElementById("memEmail");
    
    if(!check(re,memId,"아이디는 4~12자의 영문 대소문자와 숮자로만 입력하세요!!")){
    	return false;
    }
    
    if(!check(re2,memPwd,"패스워드는 8~18자의 영문 대소문자, 숫자, 특수문자만 입력하세요")){
    	return false;
    }
    
    if(inMemberRegist.memPwd.value != inMemberRegist.memPwd2.value){
    	alert("비밀번호가 다릅니다 다시 확인해 주세요.");
    	inMemberRegist.memPwd2.value= "";
    	inMemberRegist.memPwd2.foucus();
    	return false;
    }
    
    if(!check(re4, memPhone, "핸드폰 번호가 아닙니다. 다시 입력해주세요.")){
    	return false;
    }
    
    if(memEmail.value==""){
    	alert("이메일을 입력해 주세요.");
    	email.focus();
    	return false;
    }
    
}	
	
function openIdChk() {
	 
	 window.name = "parentForm";
	 window.open("/let/member/individual/idCheck", "chkForm", "width=500, height=300, resizable = no, scorllbars = no");
	 
}

function inputIdChk(){
    document.inMemberRegist.idDuplication.value ="idUncheck";
}	

function validate() {
	var re = /^[a-zA-Z0-9]{4,12}$/ // 아이디가 적합한지 검사할 정규식
	var re2 =  /^(?=.*[a-zA-Z])(?=.*[!@#$%^*++-])(?=.*[0-9]).{8,18}$/; // 패스워드가 적합한지 검사할 정규식
	var re3 = /^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/i; //이메일이 적합한지
	var re4 = /^[0-9]$/ //핸드폰 번호가 적합한지
	
	var memId = document.getElementById("memId");
    var memPwd = document.getElementById("memPwd");
    var memPhone = document.getElementById("memPhone")
    var memEmail = document.getElementById("memEmail");
    
    //----------유효성 검사 시작----------
    
    if(!check(re,memId,"아이디는 4~12자의 영문 대소문자와 숮자로만 입력하세요!!")){
    	return false;
    }
    
    if(!check(re2,memPwd,"패스워드는 8~18자의 영문 대소문자, 숫자, 특수문자만 입력하세요")){
    	return false;
    }
    
    if(inMemberRegist.memPwd.value != inMemberRegist.memPwd2.value){
    	alert("비밀번호가 다릅니다 다시 확인해 주세요.");
    	inMemberRegist.memPwd2.value= "";
    	inMemberRegist.memPwd2.foucus();
    	return false;
    }
    
    if(!check(re4, memPhone, "핸드폰 번호가 아닙니다. 다시 입력해주세요.")){
    	return false;
    }
    
    if(memEmail.value==""){
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
                            <h2>개인회원가입</h2>
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
<%-- 	<form action="${ pageContext.servletContext.contextPath }/UserRegisterCheckServlet" name="join" onsubmit="return validate();" method="post"> --%>
	<form action="${ pageContext.servletContext.contextPath }/member/individual/regist" onsubmit="return checkValue();" name="inMemberRegist" method="post">
    <!-- jp register wrapper start -->
    <div class="register_section">
        <!-- register_form_wrapper -->
        <div class="register_tab_wrapper">
            <div class="container">
                <div class="row">
                    <div class="col-md-10 col-md-offset-1">
                        <div role="tabpanel">

                            <!-- Nav tabs -->
                            <ul id="tabOne" class="nav register-tabs">
                                <li class="active"><a href="#contentOne-1" data-toggle="tab">개입회원가입 <br> <span style="font-size:0.5em;">Li am looking for a job</span></a>
                                </li>                              
                            </ul>

                            <!-- Tab panes -->
                            <div class="tab-content">
                                <div class="tab-pane fade in active register_left_form" id="contentOne-1">
									
                                    <div class="jp_regiter_top_heading">
                                        <p>필수항목 * </p>
                                    </div>

                                    <div class="row clearfix">
                                        <!--Form Group-->
                                        <div style="width:460px;" class="form-group col-md-6 col-sm-6 col-xs-12">
                                            <input type="text" maxlength = "50" name="memId" id="memId" maxlength="13"  placeholder="아이디 *" onkeydown="onputIdChk()" required>
                                            <input style="width:120px; height:50px; border-radius: 10px;" type="button" value="중복확인" onclick="openIdChk()">
                                            <input type="hidden" name="idDuplication" value="idUncheck">                                       
                                        </div>
                                        
                                        <!--Form Group-->
                                        <div style="width:460px;" class="form-group col-md-6 col-sm-6 col-xs-12">
                                            <input style="margin-top:30px;" type="email" id="memEmail" name="memEmail"  placeholder="이메일*"  required>
                                            <button style="width:120px; height:50px; border-radius: 10px;" type="submit">인증번호발송</button> 
                                             <input  style="margin-top:30px;" type="text" name="memEmailNum"  placeholder="인증번호 *"  required>
                                        </div>
                                                                             
                                        <div class="form-group col-md-6 col-sm-6 col-xs-12">
                                            <input type="password" name="memPwd" id="memPwd"  placeholder="비밀번호*"  required>
                                        </div>
                                        
                                        <!--Form Group-->
                                        <div class="form-group col-md-6 col-sm-6 col-xs-12">
                                            <input type="password" name="memPwd2" id="memPwd2"  placeholder="비밀번호 재입력*" required>
                                        </div>

                                        <!--Form Group-->
                                        <div class="form-group col-md-6 col-sm-6 col-xs-12">
                                            <input type="text" name="memName" id="memName" placeholder="이름" required>
                                        </div>

                                        <!--Form Group-->
                                        <div class="form-group col-md-6 col-sm-6 col-xs-12">
                                            <input type="text" name="memPhone" id="memPhone" placeholder="핸드폰 번호" required>
                                        </div>

                                         <div class="form-group col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                            <div class="check-box text-center">
                                                 <input type="checkbox" name="shipping-option" id="account-option_2"> &ensp;
                                                  <label for="account-option_1"> LetItGo 웹사이트 <a href="#" class="check_box_anchr">이용약관</a> 에 동의합니다.</label>
                                             </div>
                                       </div>
                                    </div>
                                   
                                    <div class="login_btn_wrapper register_btn_wrapper login_wrapper ">
                                        <button class="btn btn-primary login_btn" style="width:100%; height:50px;" type="submit">회원가입</button>
                                    </div>
                                    <div class="login_message">
                                        <p>이미 회원이신가요? <a href="${ pageContext.servletContext.contextPath }/loginPage"> 로그인 </a> </p>
                                    </div>
                                </div>
                            </div>
                            <p class="btm_txt_register_form">공용/공유 컴퓨터를 사용하는 경우 계정에 대한 무단 액세스를 방지하기 위해 로그아웃하는 것이 좋습니다.</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
 </form>	
 
 
 
</body>
</html>