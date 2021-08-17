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
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script type="text/javascript">

	
function checkValue() {
	

	var re = /^[a-zA-Z0-9]{4,12}$/; // 아이디가 적합한지 검사할 정규식
	var re2 =  /^(?=.*[a-zA-Z])(?=.*[!@#$%^*++-])(?=.*[0-9]).{8,18}$/; // 패스워드가 적합한지 검사할 정규식
	var re3 = /01[016789]-[^0][0-9]{2,3}-[0-9]{3,4}/;  //핸드폰 번호가 적합한지
	var re4 = /^[가-힣]{2,4}|[a-zA-Z]{2,10}\s[a-zA-Z]{2,10}$/; //이름 정규식

	var memId = document.getElementById("memId");
    var memPwd = document.getElementById("memPwd");
    var memPhone = document.getElementById("memPhone");
    var memName = document.getElementById("memName");
	var form = document.inMemberRegist;

    if(!check(re,memId, "아이디는 4~12자의 영문 대소문자와 숫자로 입력해주세요")){
    	return false;
    }
	
	if(form.idDuplication.value != "idCheck") {
		alert("아이디 중복체크를 해주세요.");
		return false;
	}
	
	if(form.certificationYn.value != "false") {
		alert("이메일 인증확인을 해주세요.");
		return false;
	}

    if(!check(re2,memPwd, "패스워드는 8~18자의 영문 대소문자, 숫자, 특수문자를 모두 포함시켜 입력해주세요")){
    	return false;
    }
    
	if(form.memPwd.value != form.memPwd2.value ){
        alert("비밀번호를 동일하게 입력하세요.");
        return false;
    } 
	
	if(!check(re4, memName, "이름양식이 맞지 않습니다. 다시 입력해주세요.")){
    	return false;
    }

    if(!check(re3, memPhone, "핸드폰 번호양식이 맞지 않습니다. 다시 입력해주세요.")){
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

  function check(re, what, message) {
       if(re.test(what.value)) {
           return true;
       }
       alert(message);
       what.value = "";
       what.focus();
       return false;
   }
  
function emailSend() {
	
	let memEmail = document.getElementById('memEmail').value;
	
	
		$.ajax({
			type:"get",
			url:"email",
			data:{memEmail:memEmail},
			success : function(data) {			
				alert('인증번호가 전송되었습니다.');
				
				
			}
		});
			
}

function checkEmailCode() {
	
	var certificationNumber = document.getElementById("certificationNumber").value;
	
	var form = document.inMemberRegist;
	
	$.ajax({
		type:"post",
		url:"email",
		data:{certificationNumber: certificationNumber},
		success : function(data) {
			if(data == "true") {
				alert('이메일 인증에 성공하였습니다.');
			} else {
				alert('이메일 인증에 실패하였습니다.');
				 form.certificationNumber.value = "";
				 form.certificationNumber.focus();
				 return false;
			}
		},
		error: function(xhr) {
			alert('jsp : 이메일 인증에 오류가 있습니다.')
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
	  
	<form action="${ pageContext.servletContext.contextPath }/member/individual/regist" onsubmit="return checkValue();" name="inMemberRegist" method="post">
    <div class="register_section">
        <div class="register_tab_wrapper">
            <div class="container">
                <div class="row">
                    <div class="col-md-10 col-md-offset-1">
                        <div role="tabpanel">
                            <ul id="tabOne" class="nav register-tabs">
                                <li class="active"><a href="#contentOne-1" data-toggle="tab">개입회원가입 <br> <span style="font-size:0.5em;">Li am looking for a job</span></a>
                                </li>                              
                            </ul>
                            <div class="tab-content">
                                <div  id="contentOne-1">
									
                                    <div class="jp_regiter_top_heading">
                                        <p>필수항목 * </p>
                                    </div>

                                    <div class="row clearfix">
                                        <div style="width:460px;" class="form-group col-md-6 col-sm-6 col-xs-12">
                                            <input style="width:430px; height:60px; border-radius: 5px;" type="text" maxlength = "50" name="memId" id="memId" maxlength="13"  placeholder="아이디 *" onkeydown="inputIdChk();" required>
                                            <input style="width:120px; height:50px; border-radius: 10px;" type="button" value="중복확인" onclick="openIdChk();">
                                            <input type="hidden" name="idDuplication" value="idUncheck">   
                                                                             
                                        </div>
                                        <div style="width:460px;" class="form-group col-md-6 col-sm-6 col-xs-12">
                                            <input style="margin-top:30px; width:430px; height:60px; border-radius: 5px;" type="email" id="memEmail" name="memEmail"  placeholder="이메일*"  required>
                                            <button style="width:120px; height:50px; border-radius: 10px;" id="emailcheck" onclick="emailSend()" type="button">인증번호발송</button> 
                                             <input  style="margin-top:30px; width:430px; height:60px; border-radius: 5px;" type="text" name="memEmailNum" id="certificationNumber"  placeholder="인증번호 *"  required>
                                             <button  style="width:120px; height:50px; border-radius: 10px;" id="certificationBtn" type="button" onclick="checkEmailCode();">인증하기</button>
                                             <input  type="hidden" id="certificationYn" value="false">
                                        </div>  
                                                                   
                                        <div class="form-group col-md-6 col-sm-6 col-xs-12">
                                            <input style="width:430px; height:60px; border-radius: 5px;" type="password" name="memPwd" id="memPwd"  placeholder="비밀번호*"  required>
                                      
                                        </div>
                                        <div class="form-group col-md-6 col-sm-6 col-xs-12">
                                        	<input style="width:430px; height:60px; border-radius: 5px;" type="password" name="memPwd2" id="memPwd2"  placeholder="비밀번호 재입력 *" required>
                                        </div>
                                        
                                         <div class="form-group col-md-6 col-sm-6 col-xs-12">
                                         	<input style="width:430px; height:60px; border-radius: 5px;" type="text" name="memName" id="memName" placeholder="이름*" required>
                                         </div>
                                         
                                          <div class="form-group col-md-6 col-sm-6 col-xs-12">
                                          	<input style="width:430px; height:60px; border-radius: 5px;" type="text" name="memPhone" id="memPhone" placeholder="핸드폰 번호 Ex) 010-1234-5678 *" required>
                                          </div>
                               

                                         <div class="form-group col-lg-12 col-md-12 col-sm-12 ">
                                            <div class="check-box text-center">
                                                 <input type="checkbox" name="shipping-option" id="account-option_2" required> &ensp;
                                                  <span> LetItGo 웹사이트 <a href="#" class="check_box_anchr">이용약관</a> 에 동의합니다.</span>
                                             </div>
                                       </div>
                                    </div>
                                   
                                    <div class="login_btn_wrapper register_btn_wrapper login_wrapper ">
                                        <button class="btn btn-primary login_btn" style="width:100%; height:50px;" type="submit" >회원가입</button>
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