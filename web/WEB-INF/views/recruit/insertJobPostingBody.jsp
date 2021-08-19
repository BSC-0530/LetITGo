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
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
	<script>
	$(function() {
		var select = "<option>선택좀해주세용</option>";
		$("#skillsCategory").change(function() {
			if($("#skillsCategory").val() == "") {
			$("#skills").find("option").remove().end().append(select);
			
			} else {
				categoryChange($(this).val());
			}
			
		});
		
		function categoryChange() {
			
			var categoryNo = $("#skillsCategory option:selected").val();
			
			$.ajax({
				type: "post",
				url: "${ pageContext.servletContext.contextPath }/fromCategory/getSkills/select",
				data: { categoryNo : categoryNo },
				dataType : "json",
				success: function(data) {
					
					if(data != "") {
						$("#skills").find("option").remove().end();
						
						for(var i = 0; i < data.length; i++) {
							$("#skills").append("<option value=" + data[i].skillsNo + ">" + data[i].skillsName + "</option>");

						};
					} else {
						$("#skills").find("option").remove().end().append(select);
					}
				},
				error:function(x,o,e){
					var msg = "페이지 호출 중 에러 발생 \n" + x.status + " : " + o + " : " + e; 
						alert(msg);
				}
			});
			
		}
// 			<input type="checkBox" name="skills" id="s${ status.index }" value="${ skills.skillsNo }">
// 			<label for="s${ status.index }"><c:out value="${ skills.skillsName }"></c:out></label>
//         <input type="checkbox" value="" name="selectSkills" id="test" style="display:none;">
//         <label for="test"><c:out value="dd"></c:out></label>
        
		$("#skills").change(function() {
			var skillsNo = $("#skills option:selected").val();
			var skillsName = $("#skills option:selected").text();
			
			alert(skillsNo);
			
			var appendSkills = "<div><input type='checkBox' value='" + skillsNo + "' name='selectSkills' id='s" + skillsNo + "' checked style='display:none;'>" +
							   "<label id='skillsLabel' for='s" + skillsNo + "'>" + skillsName +skillsNo+ "</label></div> "
			
							   
			var checked_length = document.getElementsByName("selectSkills").length;
			
			alert(checked_length)
			
			for(var j = 0; j < checked_length; j++) {
				
				if(document.getElementsByName("selectSkills")[j].value == skillsNo) {
					
					document.getElementsByName("selectSkills")[j].removeAll();
					
					
					alert("삭제완료");
				} else {
					
					
				}
			}
		
			// 선택한 기술을 selectSkills 에 append
			
			alert(appendSkills)
			
			$("#selectSkills").append(appendSkills);
			
	
			
			
		});
		
	});
    </script>
    <script>
		function btn_click(str) {
			
			if(str == "preview") {

				var previewWid = window.open('about:blank','preview','width=1920,height=1000')
				document.insertForm.action = "${ pageContext.servletContext.contextPath }/previewJobPosting"
				document.insertForm.target = "preview";
				document.insertForm.method = "post";
				document.insertForm.submit();
				
			} else if (str == "insert") {
				
				var skills_length = document.getElementsByName("selectSkills").length;
				
				if(skills_length == 0) {
					
					alert("기술을 한가지 이상 선택해주세요")
				} else {

					document.insertForm.method = "post";
					document.insertForm.action = "${ pageContext.servletContext.contextPath }/recruit/insert"
					document.insertForm.submit();
				
			}
			
		}
		
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
        <form id="insertForm" name="insertForm" method="post">
            <!-- jp ad post Wrapper Start -->
            <div class="jp_adp_main_section_wrapper">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12" > 
                        
                            <div class="col-lg-3 col-md-3 col-md-3 col-xs-12" style="width: 100%;">
                                <div class="jp_adp_form_wrapper" >
                                    <label id="titleFont"> 공고 제목</label>
                                    <input id="jobPostTitle" type="text" placeholder="채용공고 제목을 입력해주세요.*" name="jobPostTitle" maxlength="30" min="1" required>
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
     <!--  기@@@술 -->                           </div>
                                <label id="titleFont">기술</label><br>
                                <label>카테고리</label>
                                <select name="skillsCategory" id="skillsCategory">
                                <option value="">전체</option>
                                <c:forEach items="${ requestScope.skillsCategory }" var="categoryList">
                                	<option value="${ categoryList.categoryNo }"><c:out value="${ categoryList.categoryName }"/>
                                </c:forEach>
                                </select>
                                <label>기술</label>
                                <select name="skills" id="skills">
                                <option>카테고리를 선택해주세요</option>
                                </select>
                                <br>         
								<div id="selectSkills">
                                </div>
                            </div>
                            <div class="col-lg-3 col-md-3 col-md-3 col-xs-12" style="width: 100%; margin-top: 30px;">
                                <div class="jp_adp_form_wrapper">
                                </div>
                                <label id="titleFont">경력</label><br>
                                <select name="jobPostMinExperience" >
                                	<option value="0" selected  >신입</option>
                                	<c:forEach var="index" begin="1" end="9" step="1">
                                    <option value="${ index }"><c:out value="${ index }년"></c:out></option>
                                    </c:forEach>
                                    <option value="10">10년 이상</option>
                                </select>
                                <label>~</label>
                                <select name="jobPostMaxExperience" >
                                    <option value="0">신입</option>
                                	<c:forEach var="index" begin="1" end="9" step="1">
                                    <option value="${ index }"><c:out value="${ index }년"></c:out></option>
                                    </c:forEach>
                                    <option value="10" selected>10년 이상</option>
                                </select>
                                <br><br>
                                <label style="font-size: 10px">
                                	1) 최소경력과 최대 경력이 같은 경우 n년 이상 경력자를 구하는 글로 게시됩니다. <br>
                                	2) 신입만 구하는 경우 최소와 최대 모우 신입으로 표기해주세요<br>
                                	3) 신입 ~ 10년차 이상 경력무관으로 게시됩니다.
                                </label>
                            </div>
                            <div class="col-lg-3 col-md-3 col-md-3 col-xs-12" style="width: 100%;">
                                <div class="jp_adp_textarea_main_wrapper">
                                    <label id="titleFont"> 공고 내용</label>
                                    <textarea rows="7" placeholder="공고 내용을 입력하세요*" name="jobPostContents" required maxlength="2000">/</textarea>
                                </div>
                            </div>
                            <div class="col-lg-3 col-md-3 col-md-3 col-xs-12">
                                <div class="jp_adp_form_wrapper">
                                    <label id="titleFont">마감일 *</label> <input type="date" name="jobPostDeadLine" required> 
                                </div>
                            </div>
                            <div class="col-lg-3 col-md-3 col-md-3 col-xs-12" style="width: 100%;">
                                <div class="jp_adp_form_wrapper" >
                                    <label id="titleFont">자사이력서</label>
                                    <input id="resumeForm" type="text" placeholder="자사이력서 다운 가능 링크" name="jobPostTitle" maxlength="30" min="1">
                                </div>
                            </div>
                        <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                        	<input type="button" value="insert" onclick="btn_click('insert');">
                        	<input type="button" value="preview" onclick="btn_click('preview');">
                        
                        </div>
                        
                    </div>
                </div>
            </div>
		</div>
	</form>
</body>

   
</html>