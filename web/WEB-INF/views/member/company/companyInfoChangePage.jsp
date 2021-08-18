<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
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

<!-- letitgo 제작 css -->
<script type="text/javascript" src="/let/resources/js/bongean/button.js"></script>
<link rel="stylesheet" type="text/css" href="${ pageContext.servletContext.contextPath }/resources/css/letitgo/letitgo.css"/>
<!-- 제이쿼리 -->
<!-- <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script> -->
<!-- 상세주소 -->


</head>
<style>
#noCheck{
width: 100px; height: 50px; background-color:transparent; 
}
</style>

<body>

  <!-- 상단 검은색 -->
   <div class="jp_tittle_main_wrapper">
    <div class="jp_tittle_img_overlay"></div>
    <div class="container">
        <div class="row">
            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                <div class="jp_tittle_heading_wrapper">
                    <div class="jp_tittle_heading">
                        <h2>기업 마이페이지</h2>
                    </div>
                    <div class="jp_tittle_breadcrumb_main_wrapper">
                        <div class="jp_tittle_breadcrumb_wrapper">
                            <ul>
                                <li><a href="#">Home</a></li>
                                <li><a href="#">기업 마이페이지</a></li>
                                <li>기업 마이페이지</li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- 사이드바 -->
<div class="jp_listing_sidebar_main_wrapper">
    <div class="container">
        <div class="row">
            <div
                class="col-lg-3 col-md-3 col-sm-12 col-xs-12 hidden-sm hidden-xs">
                <div class="row">
                    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                        <div class="jp_rightside_job_categories_wrapper">
                            <div class="jp_rightside_job_categories_heading">
                                <h4 style="font-weight : bold">My Page</h4>
                            </div>
                            <div class="jp_rightside_job_categories_content">
                                <div class="handyman_sec1_wrapper">
                                    <div class="content">
                                        <div class="box">
                                            <p align="center">
                                                <a href="${ pageContext.servletContext.contextPath }/coMem/infomationServlet"">회원정보</a>
                                            </p>
                                            <br><br>
                                            <p>
                                                <a href="${ pageContext.servletContext.contextPath }/companyTestServlet">기업정보</a>
                                            </p>
                                            <br><br>

                                            <p>
                                                <a href="${ pageContext.servletContext.contextPath }/company/paymentHistory/select">결제내역</a>
                                            </p>
                                            <br><br>
                                            <p>
                                                <a href="${ pageContext.servletContext.contextPath }/company/refundHistory/select">환불내역</a>
                                            </p>
                                            <br><br>
                                            <p>

                                                <a href="${ pageContext.servletContext.contextPath }/company/jobPostingHistory/select">공고관리</a>
                                            </p>
                                            <br><br>
                                            <p>
                                                <a href="${ pageContext.servletContext.contextPath }/Company/Scout/List/Select">스카우트 현황</a>
                                            </p>
                                            <br><br>
                                            <p>
                                                <a href="#">찜한 후보자</a>
                                            </p>
                                            <br><br>
                                            <p>
                                                <a href="#">회원 탈퇴</a>
                                            </p>
                                            <br><br>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
<!-- 옆에 넣으려면 여기에 넣어야함 -->
<!--   				111~114번이 있어야 사이드바 옆에 내용이 입력됨       -->
<form action="${ pageContext.servletContext.contextPath }/company/modify/info" method="post" onsubmit="requestAdminChange();">
            <div class="col-lg-9 col-md-9 col-sm-12 col-xs-12">
                <div class="row">
                    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                        <div class="jp_listing_tabs_wrapper">
                            <!--                             이거는 이제 정보뜨는 칸 -->
                            <div class="tab-pane fade in active register_left_form"
                                id="contentOne-1">

                                <div class="jp_regiter_top_heading">
                                    <p><h1>기업정보 변경</h1></p>
                                </div>
                                <div class="row">
                                    <!--Form Group-->
                                    
                                    <div class="form-group col-md-8 col-sm-6 col-xs-12">
                                        <input type=text  onkeypress="inNumber();"
                                        id="coComNo" name="requestcoNo" value="${ comDTO.coNo }" placeholder="-를 포함해서 입력해주세요">
                                    </div>
                                    <div class="form-group col-md-2 col-sm-6 col-xs-12">
                                         <i><button class="btn btn-info" type="button" onclick="noCheck();">중복검사</button></i>
                                    </div>
								                                    
                                    <div class="form-group col-md-6 col-sm-6 col-xs-12">
                                        <input type="text" name="requestComName" value="${ comDTO.coComName }" >
                                    </div>
                                    
                                                                       <!--Form Group-->
                                    <div class="form-group col-md-6 col-sm-6 col-xs-12">
                                        <input type="text" name="requestcoCeoName" value="${ comDTO.coCeoName }"  >
                                    </div>
                                    <!--Form Group-->
                                    <div class="form-group col-md-6 col-sm-6 col-xs-12">

                                        <input type="text" name="requestcoSectors" value="${comDTO.coSectors }">
                                    </div>
                                    <!--Form Group-->
                                    <div class="form-group col-md-6 col-sm-6 col-xs-12">
                                        <input type="text" name="requestcoStatus" value="${comDTO.coStatus }">
                                    </div>
                                    <!--Form Group-->
                                    <div class="form-group col-md-8 col-sm-6 col-xs-12">
                                        <input type="text" name="requestcoAddress" value="${ comDTO.coAddress }" readonly="readonly">
                                   </div>
                                    <div class="form-group col-md-4 col-sm-6 col-xs-12">
										<a><input class="btn btn-info" type="button" value="검색" class="btn btn-yg" id="searchZipCode"></a>
									</div>
                                    <div class="form-group col-md-6 col-sm-6 col-xs-12">
                                        <input type="text" name="request" value="상세주소" >
                                    </div>
                                    <div class="form-group col-md-6 col-sm-6 col-xs-12">
                                        <input type="text" name="requestWebSite" value="${ comDTO.webSite }" >
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <br>
                <div class="companyText">	
                              <label>회사소개</label><input id="textArea" name="requestcoIntro" type="text"  placeholder="${ comDTO.coIntro  }" >
                    </div>
            <!-- end --> 
	            </div>
                     <button type="submit" class="btn btn-info" style="float: right;" >기업 정보 변경 요청 </button>
      </form>
 
							<div>
     					  <div class="img_wrap">
         				  <img id="img" />
      					 </div>
							</div>

 							</div>
        </div>
    </div>
<script>
function savePDF(){
    //저장 영역 div id
    html2canvas($('#pdfArea')[0] ,{	
      //logging : true,		// 디버그 목적 로그
      proxy: "html2canvasproxy.php",
      allowTaint : true,	// cross-origin allow 
      useCORS: true,		// CORS 사용한 서버로부터 이미지 로드할 것인지 여부
      scale : 2			// 기본 96dpi에서 해상도를 두 배로 증가
      
    }).then(function(canvas) {	
      // 캔버스를 이미지로 변환
      var imgData = canvas.toDataURL('image/png');

      var imgWidth = 190; // 이미지 가로 길이(mm) / A4 기준 210mm
      var pageHeight = imgWidth * 1.414;  // 출력 페이지 세로 길이 계산 A4 기준
      var imgHeight = canvas.height * imgWidth / canvas.width;
      var heightLeft = imgHeight;
      var margin = 10; // 출력 페이지 여백설정
      var doc = new jsPDF('p', 'mm');
      var position = 0;

      // 첫 페이지 출력
      doc.addImage(imgData, 'PNG', margin, position, imgWidth, imgHeight);
      heightLeft -= pageHeight;

      // 한 페이지 이상일 경우 루프 돌면서 출력
      while (heightLeft >= 20) {			// 35
      position = heightLeft - imgHeight;
      position = position - 20 ;		// -25

      doc.addPage();
      doc.addImage(imgData, 'PNG', margin, position, imgWidth, imgHeight);
      heightLeft -= pageHeight;
      }

      // 파일 저장
      doc.save('filename.pdf');
    });
  }


</script>



<script>
// 변경 요청 버튼 
function requestAdminChange(button){
	var answer;
	answer = confirm('변경 요청을 하시겠습니까?');
	
	if(answer == true){
		location.href="${ pageContext.servletContext.contextPath }/company/modify/info"
	}
	else if(answer == false){
		return false;
	}
	
}
</script>
<script>
function noCheck(button){
// 	사업자 등록증 번호 유효한지 체크 
	let coComNo = $("#coComNo").val();
			
// 	alert(coComNo);
	if(!checkCorporateRegistrationNumber(coComNo.replaceAll("-",""))){
		   alert("유효한 사업자번호를 입력하세요");
		   $("#coComNo").focus();
		   $("#coComNo").val("");
		   return;
		}
	alert('중복확인되었습니다.')
	
	
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








