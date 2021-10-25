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

/* 이메일 인증을 하였는지에 대한 유효성 검사 */	
function checkValue() {
	
	/* <form>의 정보를 var form 변수로 저장  */
	var form = document.forgetId;

	/* form안의 태그 아이디가 certificationYn인 태그의 값이 true가 아닐경우 */
	if(form.certificationYn.value != "true") {
		alert("이메일 인증확인을 해주세요.");
		return false;
	}

	
}	
	
/* 인증번호 전송시 */  
function emailSend() {
	
	/* id가 memEmail이 태그의 값을 var memEmail로 저장*/
	var memEmail = document.getElementById('memEmail').value;
	
	/* var memEamil의 값을 ajax를 통해 해당 url의 get방식으로 전달 */
	$.ajax({
		type:"get",
		url:"/let/member/whole/email",
		data:{memEmail:memEmail},
		success : function(data) {			
			alert('인증번호가 전송되었습니다.');		
		},
		error:function(xhr) {
			alert('jsp : 인증번호 전송을 실패하였습니다.')
		}
	});
			
}

/* 이메일에 보낸 인증번호와 사용자가 입력한 인증번호가 같은지 유효성 검사 */
function checkEmailCode() {
	
	/* id가 certificationNumber이 태그의 값을 var certificationNumber로 저장*/
	var certificationNumber = document.getElementById("certificationNumber").value;
	
	/* <form>의 정보를 var form 변수로 저장  */
	var form = document.forgetId;
	
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
                            <h2>아이디 찾기</h2>
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
    
    <!-- 이메일 인증하는 란 -->
	  
	<form action="${ pageContext.servletContext.contextPath }/member/forgetId" onSubmit="return checkValue();" name="forgetId" method="post">
    <div class="register_section">
        <div class="register_tab_wrapper">
            <div class="container">
                <div class="row">
                    <div class="col-md-10 col-md-offset-1">
                        <div role="tabpanel">
                            <ul id="tabOne" class="nav register-tabs">
                                <li class="active"><a href="#contentOne-1" data-toggle="tab">아이디 찾기 <br> <span style="font-size:0.5em;">i am looking for Id</span></a>
                                </li>                              
                            </ul>
                            <div class="tab-content">
                                <div  id="contentOne-1">
									
                                    <div class="jp_regiter_top_heading">
                                        <p>필수항목 * </p>
                                    </div>

                                    <div class="row clearfix">
                                       
                                        <div style="width:460px;" class="form-group col-md-6 col-sm-6 col-xs-12">
                                            <input style="margin-top:30px; width:430px; height:60px; border-radius: 5px;" type="email" id="memEmail" name="memEmail"  placeholder="이메일*"  required>
                                            <button style="width:120px; height:50px; border-radius: 10px;" id="emailcheck" onclick="emailSend()" type="button">인증번호발송</button> 
                                             <input  style="margin-top:30px; width:430px; height:60px; border-radius: 5px;" type="text" name="certificationNumber" id="certificationNumber"  placeholder="인증번호 *"  required>
                                             <button  style="width:120px; height:50px; border-radius: 10px;" id="certificationBtn" type="button" onclick="checkEmailCode();">인증하기</button>
                                             <input  type="hidden" id="certificationYn" value="false">
                                        </div>  
                                    </div>
                                   
                                    <div class="login_btn_wrapper register_btn_wrapper login_wrapper ">
                                        <button class="btn btn-primary login_btn" style="width:100%; height:50px;" type="submit" >아이디 찾기</button>
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