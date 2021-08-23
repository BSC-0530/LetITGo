<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Let IT Go</title>
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
            



           	function selectResume() {
            	
            	
            	// radio버튼의 길이 저장
            	var radio_length = document.getElementsByName("resumeNo").length;
            	
            	for(var i = 0; i < radio_length; i++) {
            		// 
            		if(document.getElementsByName("resumeNo")[i].checked == true) {
            			// 체크된 라디오 버튼의 value를 공고 상세페이지 쪽으로 넘겨줌
            			var resumeNo = document.getElementsByName("resumeNo")[i].value;
            			
            			alert("선택한 이력서는 : " );
            			
                        window.opener.document.getElementById("resumeNo").value = resumeNo ;
                        window.close();
            		}
            	}
            }
            function closeTab() {
            	
            	window.close();
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
						<c:forEach var="resumeList" items="${ requestScope.resumeList }" varStatus="status">
						<div class="box">
							<p>
								<input type="radio" id="${ status.index }" value="${ resumeList.resumeNo }" name="resumeNo">
								<button class="btn btn-info" onclick="updateResult(this);">수정하기</button>
								<label for="${ status.index }"><c:out value="${ resumeList.resumeTitle }"/></label>
								<label for="${ status.index }">/<c:out value="${ resumeList.resumeWriteDate }"/></label>
							</p>			
						</div>
						</c:forEach>
						<button class="btn btn-info" onclick="selectResume()">이력서 선택</button>
						<button class="btn btn-info" onclick="closeTab()">닫기</button>
					</div>
				</div>
			</div>
		</div>
	</div>
  	

 	</c:if>
  
	<c:if test="${ requestScope.resumeStatus eq 'N' }">
	
	<label>등록된 이력서가 없습니다.</label>
	
	<button onclick="closeSelectResume();">닫기</button>
	</c:if>
  



</body>
</html>