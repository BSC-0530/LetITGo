<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
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
        <script>

            window.onload = function(event){
            	// 부모창의 값 id로 가져오기
                var parentValue = opener.document.getElementById("postNo").value;
                
                alert(parentValue);
            	
            }
            function closeSelectResume(){
            	
            	alert("");
            	
                window.close();
            }
            
            // 수정버튼
            function updateResult(button){
            	
            }
            // 이력서 선택 버튼
           	function selectResume(button){
        	   
            	alert("");
           		// resumeNo에 id로 값을 꺼내와서 저장
                var resumeNo = button.parentNode.children[0].value;
           		
           		alert(resumeNo);
           		
           		var jobPostNo = button.parentNode.parentNode.parentNode.children[0].innerText;
           		
           		alert(jobPostNo);
           		
           		var path = "/let/detail/jobPosting/select?selectJobPostNo=" + jobPostNo + "&resumeNo="+ resumeNo ;
           		
           		alert(path);
           		
            	// 부모창에 있는 resumeNo에 value에 저장
            	
//             	opener.parent.location= "${ pageContext.servletContext.contextPath }/detail/jobPosting/select?selectJobPostNo=" +selectJobPostNo
            	
//                 window.opener.document.getElementById("resumeNo").value = resumeNo ;
//                 location.href = ${ pageContext.servletContext.contextPath }/detail/jobPosting/select?resumeNo=" +selectResumeNo ;
				
				window.opener.loaction.href = path;
				window.close();
            	
				alert("");
            	// 창 닫아줌
               
            }
        </script>
</head>
<body>
	
	<c:if test="${ requestScope.resumeStatus eq  'Y' }">
  
	<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
		<div class="jp_rightside_job_categories_wrapper">
			<div class="jp_rightside_job_categories_heading">
				<h4>이력서 선택</h4>
			</div>
			<div class="jp_rightside_job_categories_content">
				<div class="handyman_sec1_wrapper">
					<div class="content">
						
						<label><c:out value="${ requestScope.jobPostNo }"/></label>
						<h4 align="center">이력서를 선택해주세요</h4>
						<c:forEach var="resumeList" items="${ requestScope.resumeList }" varStatus="status">
						<div class="box">
							<p>
								<input type="radio" id="${ status.index }" value=${ resumeList.resumeNo } name="resumeNo">
								<button onclick="updateResult(this);">수정하기</button>
								<button onclick="selectResume(this)">이력서 선택</button>
								<label for="${ status.index }"><c:out value="${ resumeList.resumeTitle }"/></label>
								<label for="${ status.index }">/<c:out value="${ resumeList.resumeWriteDate }"/></label>
								
							</p>			
						</div>
						</c:forEach>
					</div>
				</div>
			</div>
		</div>
	</div>
  	
		
<%-- 				<c:out value="${ resumeList.resumeNo }"/> --%>
<%-- 				<c:out value="${ resumeList.resumeTitle }"/> --%>
<%-- 				<c:out value="${ resumeList.resumeWriteDate }"/> --%>
<!-- 				<button type="submit" onclick="req(this);">상세보기</button> -->
<!-- 				<br> -->
				
	
  </c:if>
  
	<c:if test="${ requestScope.resumeStatus eq 'N' }">
	
	<label>등록된 이력서가 없습니다.</label>
	
	<button onclick="closeSelectResume();">닫기</button>
	 
	 
	 
	 </c:if>
  
  <!-- 보유 이력서 정보 가져오고, 보여주고 check박스로 선택하고 옆에 button 으로 이력서 페이지로 이동하고 -->

	<script>
		$(document).ready(function() {
			$('#table_resume').DataTable();
		});
	</script>


</body>



</html>