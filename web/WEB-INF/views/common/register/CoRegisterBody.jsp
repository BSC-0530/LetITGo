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
                            <h2>기업회원가입</h2>
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
	<form action="${ pageContext.servletContext.contextPath }/member/coporate/regist"  method="post">
    <div class="register_section">
        <div class="register_tab_wrapper">
            <div class="container">
                <div class="row">
                    <div class="col-md-10 col-md-offset-1">
                        <div role="tabpanel">

                            <ul id="tabOne" class="nav register-tabs">
                                <li class="active"><a href="#contentOne-1" data-toggle="tab">기업회원가입 <br> <span>i am looking for a employee</span></a>
                                </li>
                            </ul>

                            <div class="tab-content">
                                <div class="tab-pane fade in active register_left_form" id="contentOne-1">
                                    <div class="jp_regiter_top_heading">
                                        <p>필수항목 * </p>
                                    </div>
                                    <div class="row">
                                        <div style="width:460px;" class="form-group col-md-6 col-sm-6 col-xs-12">
                                            <input type="text" name="memId" maxlength="13"  placeholder="아이디 *" required>
                                            <button style="width:120px; height:50px; border-radius: 10px;" type="submit">중복확인</button>   
                                                                                   
                                            <input style="margin-top:30px;" type="email" name="memEmail"  placeholder="이메일*"  required>
                                            <button style="width:120px; height:50px; border-radius: 10px;" type="submit">인증번호발송</button> 
                                            
                                             <input  style="margin-top:30px;" type="text" name="memEmailNum"  placeholder="인증번호 *"  required>
                                             <button style="width:120px; height:50px; border-radius: 10px;" type="submit">인증번호확인</button> 
                                        </div>
                                        
                                        
                                        <div class="form-group col-md-6 col-sm-6 col-xs-12">

                                            <input type="password" name="memPwd" placeholder=" 비밀번호*" required>
                                        </div>
                                        
                                        <div class="form-group col-md-6 col-sm-6 col-xs-12">
                                            <input type="password" name="memPwd2"value="" placeholder="비밀번호 재입력*" required>
                                        </div>
                                        
                                        <div class="form-group col-md-6 col-sm-6 col-xs-12">
                                            <input type="text" name="memName" placeholder="담당자 이름*" required>
                                        </div>

                                        <div class="form-group col-md-6 col-sm-6 col-xs-12">
						                    <input type="text" name="memPhone" placeholder="담당자 전화번호*" required>
                                        </div>
                                        
                                         <div class="form-group col-md-6 col-sm-6 col-xs-12">
						                    <input type="text" name="coComName"  placeholder="기업 이름*" required>
                                        </div>
                                        
                                        <div class="form-group col-md-6 col-sm-6 col-xs-12">
                                            <input type="text" name="coCeoName"  placeholder="대표자 이름 " required>
                                        </div>
                                        
                                        <div class="form-group col-md-6 col-sm-6 col-xs-12">
                                            <input type="text" name="coSectors"  placeholder="업종 *" required>
                                        </div>
                                       
                                        <div class="form-group col-md-6 col-sm-6 col-xs-12">
                                            <input type="text" name="coStatus"  placeholder="업태* " required>
                                        </div>
                                        
                                        <div class="form-group col-md-6 col-sm-6 col-xs-12">
                                            <input type="text" name="zipCode"  placeholder="우편번호 *" required>
                                        </div>
                                        
                                        <div class="form-group col-md-6 col-sm-6 col-xs-12">
                                            <input type="text" name="address1"  placeholder="주소 *" required>
                                        </div>
                                        
                                        <div class="form-group col-md-6 col-sm-6 col-xs-12">
                                            <input type="text" name="address2"  placeholder="상세주소 *">
                                        </div>
                                        
                                        <div class="form-group col-md-6 col-sm-6 col-xs-12">
                                            <input type="text" name="coWebsite" value="" placeholder="웹사이트 주소 *">
                                        </div>
                                        
                                        <div class="form-group col-md-6 col-sm-6 col-xs-12">
                                            <input type="text" name="coPhone" value="" placeholder="기업 전화번호">
                                        </div>
                                        
                                         <div class="form-group col-md-6 col-sm-6 col-xs-12">
                                            <input type="text" name="coPax" value="" placeholder="기업 팩스번호">
                                        </div>
                                        
                                        <div class="form-group col-md-6 col-sm-6 col-xs-12">
                                        <h2> 회사소개글 </h2>
                                         <div class="jp_contact_inputs_wrapper jp_contact_inputs4_wrapper">
                                            <textarea style="width:207%; height:500px;" name="coIntro" rows="6" cols="10" placeholder="회사소개 *" required></textarea>
                                        </div>
                                        </div>
                                        
                                        
                                        
                                        <!-- 디자인을 위해서 공간확보 -->
                                        <div class="form-group col-md-6 col-sm-6 col-xs-12">
                                            <input  style="visibility: hidden; type="" name="" value="" placeholder="">
                                        </div>     
                                        <div class="form-group col-md-6 col-sm-6 col-xs-12">
                                            <input  style="visibility: hidden; type="text" name="" value="" placeholder="">
                                        </div>    
                                        <div class="form-group col-md-6 col-sm-6 col-xs-12">
                                            <input  style="visibility: hidden; type="text" name="" value="" placeholder="">
                                        </div>   
                                        <div class="form-group col-md-6 col-sm-6 col-xs-12">
                                            <input  style="visibility: hidden; type="text" name="" value="" placeholder="">
                                        </div>   
                                        <div class="form-group col-md-6 col-sm-6 col-xs-12">
                                            <input  style="visibility: hidden; type="text" name="" value="" placeholder="">
                                        </div>   
                                        <!-- 디자인을 위해서 공간확보 -->    
                                        
                                        
                                      
                                        <div class="form-group col-md-6 col-sm-6 col-xs-12 custom_input">
                                            <input type="file" name="coLogo" required>
                                            <p></p><p>회사 로고</p>
                                        </div>
                                        
                                        <div class="form-group col-md-6 col-sm-6 col-xs-12 custom_input">
                                            <input type="file" name="coRepresentativImage" required>
                                             <p></p><p>회사 대표이미지</p>
                                        </div>
                                        
                                        <div class="form-group col-md-6 col-sm-6 col-xs-12 custom_input">
                                            <input type="file" name="businessRegistration" required>
                                             <p></p><p>사업자 등록증</p>
                                        </div>
                                    
                                        <div class="form-group col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                            <div class="check-box text-center">
                                                <input type="checkbox" name="shipping-option" id="account-option_1" required> &ensp;
                                                <label for="account-option_1"> LetItGo 웹사이트 <a href="#" class="check_box_anchr">이용약관</a> 에 동의합니다.</label>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="login_btn_wrapper register_btn_wrapper login_wrapper ">
                                        <a href="#" class="btn btn-primary login_btn"> 회원가입 </a>
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