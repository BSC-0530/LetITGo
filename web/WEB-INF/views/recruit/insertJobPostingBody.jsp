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
                                    <input type="text" placeholder="채용공고 제목을 입력해주세요.*" name="jobPostTitle" required>
                                </div>
                            </div>
                            <div class="col-lg-3 col-md-12 col-sm-12 col-xs-12" style="width: 100%;" >
                                <div class="jp_adp_form_wrapper" >
                                    <label id="titleFont">직무</label><br>
                                    <c:forEach var="jobNameList" items="${ requestScope.jobNameList }" varStatus="status">
                                    	<input style="width: 20px; height: 20px; border: 1px;" type="radio" id="${ jobNameList.jobNo }" value="${ jobNameList.jobNo }" name="jobNo">
                                    	<label for=${ jobNameList.jobNo }><c:out value="${ jobNameList.jobName  }"/></label>
                                    	<!-- foreach 문의 index가 6일때 (한줄에 7개씩 출력하기 위해서) <br>태그를 통해 줄바꿈 -->
                                    	<c:if test="${ status.index eq 6 }"><br></c:if>
                                    </c:forEach>
                                </div>
                            </div>
                            <div class="col-lg-3 col-md-3 col-md-3 col-xs-12" style="width: 100%; margin-top: 30px;">
                                <div class="jp_adp_form_wrapper">
                                </div>
                                <label id="titleFont">요구 기술</label><br>
                                <select name="skillsCategory" >
                                    <option value="">--최소경력--</option>
                                </select>
                            </div>
                            
                            <div class="col-lg-3 col-md-3 col-md-3 col-xs-12" style="width: 100%; margin-top: 30px;">
                                <div class="jp_adp_form_wrapper">
                                </div>
                                <label id="titleFont">경력</label><br>
                                <select name="jobPostMinExperience" >
                                    <option value="">--최소경력--</option>
                                </select>
                                <label>~</label>
                                <select name="jobPostMaxExperience" >
                                    <option value="">--최대경력--</option>
                                </select>
                            </div>
                            <div class="col-lg-3 col-md-3 col-md-3 col-xs-12" style="width: 100%;">
                                <div class="jp_adp_textarea_main_wrapper">
                                    <label id="titleFont"> 공고 내용</label>
                                    <textarea rows="7" placeholder="공고 내용을 입력하세요*" name="jobPostContents" required></textarea>
                                </div>
                            </div>
                            <div class="col-lg-3 col-md-3 col-md-3 col-xs-12">
                                <div class="jp_adp_form_wrapper">
                                    <label id="titleFont">마감일 *</label> <input type="date" name="jobPostEnrollDate">
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
                                <button class="recruit" id="requestJobPosting">채용공고 등록 요청</button>
                                <button class="recruit" id="preview">미리보기</button>
                                <button type="button" onClick="history.go(-1)">뒤로가기</button>
                        </div>
                    </div>
                </div>
            </div>
		</div>
	</form>
	<script>
		var inputJobPosting = {
				
				jobPostTitle: jobPostTitle,
				jobNo: jobNo,
				jobPostMinExperience: jobPostMinExperience,
				jobPostMaxExperience: jobPostMaxExperience,
				jobPostContents: jobPostContents,
				jobPostEnrollDate: jobPostEnrollDate,
				potFilePath: potFilePath
		};
		
		const jsonString = JSON.stringify(inputJobPosting);
		
		$('#requestJobPosting').click(function(){
			
			 $.ajax({
                 url: "/let/recruit/insert",
                 type: "post",
                 data: {jsonString: jsonString},
                 success: function(data, textStatus, xhr) {
                     alert('성공');
                     location.href = "../list";
                 },
                 failed: function(xhr, status, error) {
                     alert('실패');
                     location.href = "../list";
                 }
             });
         });
		
		
		$('#preview').click(function(){
			
			window.location.href()
			
			
		});
		
		
	</script>
        <!-- <script>
            $('#sendResume').click(function() {
                
                const inputResume = {
                        resumeTitle: resumeTitle,
                        jobNo: jobNo,
                        carComName: carComName,
                        carDeptName: carDeptName,
                        carJobName: carJobName,
                        carWorkField: carWorkField,
                        carHireDate: carHireDate,
                        carEntDate: carEntDate,
                        carStatus: carStatus,
                        projectName: projectName,
                        projectContent: projectContent,
                        projectStartDate: projectStartDate,
                        projectEndDate: projectEndDate,
                        potLinkAddress: potLinkAddress,
                        potFilePath: potFilePath,
                        selfIntroItemNo: selfIntroItemNo,
                        selfIntroItemContent: selfIntroItemContent,
                        licenseName: licenseName,
                        licenseAgency: licenseAgency,
                        licenseDate: licenseDate,
                        eduName: eduName,
                        eduAgency: eduAgency,
                        eduStartDate: eduStartDate,
                        eduEndDate: eduEndDate,
                        eduContent: eduContent,
                        awdName: awdName,
                        awdAgency: awdAgency,
                        awdDate: awdDate,
                        awdContent: awdContent
                };
                
                const jsonString = JSON.stringify(inputResume);
                
                $.ajax({
                    url: "/let/resume/insert",
                    type: "post",
                    data: {jsonString: jsonString},
                    success: function(data, textStatus, xhr) {
                        alert('성공');
                        location.href = "../list";
                    },
                    failed: function(xhr, status, error) {
                        alert('실패');
                        location.href = "../list";
                    }
                });
            });
        </script> -->
    </body>
</html>