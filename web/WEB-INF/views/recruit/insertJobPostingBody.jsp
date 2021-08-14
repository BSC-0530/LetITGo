<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
    <style>
        #titleFont {
            font-size: 30px;
        }

        select {
            padding: .8em .5em; /* 여백으로 높이 설정 */
            border-radius: 10px;
            border-color: rgb(223, 223, 223);
            width: 25%;
        }

    </style>
</head>
<body>

	<div class="jp_tittle_main_wrapper">
            <div class="jp_tittle_img_overlay"></div>
            <div class="container">
                <div class="row">
                    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                        <div class="jp_tittle_heading_wrapper">
                            <div class="jp_tittle_heading">
                                <h2>공고 등록</h2>
                            </div>
                            <div class="jp_tittle_breadcrumb_main_wrapper">
                                <div class="jp_tittle_breadcrumb_wrapper">
                                    <ul>
                                        <li><a href="#">Home</a> <i class="fa fa-angle-right"></i></li>
                                        <li><a href="#">채용공고</a> <i class="fa fa-angle-right"></i></li>
                                        <li>공고 등록</li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <form action="${ pageContext.servletContext.contextPath }/recruit/insert" method="post">
            <!-- jp ad post Wrapper Start -->
            <div class="jp_adp_main_section_wrapper">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12" > 
                            
                            <div class="col-lg-3 col-md-3 col-md-3 col-xs-12" style="width: 100%;">
                                <div class="jp_adp_form_wrapper" >
                                    <label id="titleFont"> 공고 제목</label>
                                    <input id="jobPostTitle" type="text" placeholder="채용공고 제목을 입력해주세요.*" name="jobPostTitle" required>
                                    <span id="count">0</span><span id="max-count">0</span>
                                </div>
                            </div>
                            <div class="col-lg-3 col-md-12 col-sm-12 col-xs-12" style="width: 100%;" >
                                <div class="jp_adp_form_wrapper" >
                                    <label id="titleFont">직무</label><br>
                                    <c:forEach var="jobNameList" items="${ requestScope.jobNameList }" varStatus="status" >
                                    	<input style="width: 20px; height: 20px; border: 1px;" type="radio" id="${ jobNameList.jobNo }" value="${ jobNameList.jobNo }" name="jobNo">
                                    	<label for=${ jobNameList.jobNo }><c:out value="${ jobNameList.jobName  }"/></label>
                                    	<!-- 한줄에 8개씩 출력하기 위해서) <br>태그를 통해 줄바꿈 -->
	                                    	<c:choose>
	                                    		<c:when test="${ status.index eq 8 }"><br></c:when>
	                                    		<c:when test="${ status.index eq 16 }"><br></c:when>
	                                    	</c:choose>
                                    </c:forEach>
                                </div>
                            </div>
                            <div class="col-lg-3 col-md-3 col-md-3 col-xs-12" style="width: 100%; margin-top: 30px;">
                                <div class="jp_adp_form_wrapper">
                                </div>
                                <label id="titleFont">요구 기술</label><br>
                                <c:forEach var="skills" items="${ requestScope.skillsList }" varStatus="status">
	                                <input type="checkBox" name="skills" id="s${ status.index }" value="${ skills.skillsNo }">
	                                <label for="s${ status.index }"><c:out value="${ skills.skillsName }"></c:out></label>
                                </c:forEach>
                                
                            </div>
                            
                            <div class="col-lg-3 col-md-3 col-md-3 col-xs-12" style="width: 100%; margin-top: 30px;">
                                <div class="jp_adp_form_wrapper">
                                </div>
                                <label id="titleFont">경력</label><br>
                                <select name="jobPostMinExperience" >
                                	<option value="" selected>최소경력 선택</option>
                                	<option value="0">신입</option>
                                	<c:forEach var="index" begin="1" end="9" step="1">
                                    <option value="${ index }"><c:out value="${ index }년"></c:out></option>
                                    </c:forEach>
                                    <option value="10">10년 이상</option>
                                </select>
                                <label>~</label>
                                <select name="jobPostMaxExperience" >
                                    <option value="" selected>최대경력 선택</option>
                                    <option value="0">신입</option>
                                	<c:forEach var="index" begin="1" end="9" step="1">
                                    <option value="${ index }"><c:out value="${ index }년"></c:out></option>
                                    </c:forEach>
                                    <option value="10">10년 이상</option>
                                </select>
                                <br><br>
                                <label style="font-size: 10px">
                                	1) 최소 경력만 입력하는 경우 n년 이상 경력자를 구하는 글로 게시됩니다.<br>
                                	2) 최대 경력만 입력하는 경우 n년 이하 경력자를 구하는 글로 게시됩니다.<br>
                                	3) 최소경력과 최대 경력이 같은 경우 n년 이상 경력자를 구하는 글로 게시됩니다. <br>
                                	4) 최소경력과 최대경력의 위치가 바뀔 경우 자동으로 높은 수가 최대경력으로 입력됩니다.<br>
                                	5) 최대경력이 0인경우 경력무관으로 게시됩니다.<br>
                                	6) 경력을 입력하지 않을 경우 경력무관으로 게시됩니다.
                                </label>
                            </div>
                            <div class="col-lg-3 col-md-3 col-md-3 col-xs-12" style="width: 100%;">
                                <div class="jp_adp_textarea_main_wrapper">
                                    <label id="titleFont"> 공고 내용</label>
                                    <textarea rows="7" placeholder="공고 내용을 입력하세요*" name="jobPostContents" required></textarea>
                                </div>
                            </div>
                            <div class="col-lg-3 col-md-3 col-md-3 col-xs-12">
                                <div class="jp_adp_form_wrapper">
                                    <label id="titleFont">마감일 *</label> <input type="date" name="jobPostDeadLine">
                                </div>
                            </div>
                            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                <div class="jp_adp_choose_resume">
                                    <label id="titleFont"></label>
                                    <br> <label>자사 이력서 양식이 있는 경우 자사이력서 양식을 첨부해주세요</label>
                                    <div class="custom-input">
                                        <span><i class="fa fa-upload"></i>파일선택</span> <input type="file" name="potFilePath" id="potFilePath">
                                    </div>
                                </div>
                            </div>
                        <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                <button class="submit" id="requestJobPosting">채용공고 등록 요청</button>
                                <button class="recruit" id="preview">미리보기</button>
                                <button type="button" onClick="history.go(-1)">뒤로가기</button>
                        </div>
                    </div>
                </div>
            </div>
		</div>
	</form>
	<script>
		
		$('#preview').click(function(){
			
			window.location.href()
			
			
		});
		
		document.getElementId('jobPostTitle').addEvenetListener('keyup', checkByte);
		var countSpan = document.getElementById('count');
		var message = "";
		var MAX_MESSAGE_BYTE = 30;
		document.getElementById('max-count').innerHTML = MAX_MESSAGE_BYTE.toString();
		
		function count(message) {
			var totalByte = 0;
			
			for(var index = 0, lenghth = message.leght; index < length; index++) {
				var currentByte = message.charCodeAt(index);
				(currentByte > 128)? totalByte += 2: totalByte++;
			}
		}
		function checkByte(event) {
			const totalByte = count(event.target.value);
			if(totalByte <= MAX_MESSAGE_BYTE) {
				countSpan.innerText = totalByte.toString();
				
			} else {
				alert(MAX_MESSAGE_BYTE + "바이트까지 전송 가능합니다.");
				countSpan.innerText = count(message).toString();
				event.target.value = message;
			}
		}
        </script>
    </body>
</html>