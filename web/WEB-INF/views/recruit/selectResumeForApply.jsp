<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Let IT Go</title>
<link rel="stylesheet" type="text/css" href="${ pageContext.servletContext.contextPath }/resources/css/animate.css" />
<link rel="stylesheet" type="text/css" href="${ pageContext.servletContext.contextPath }/resources/css/bootstrap.css" />
<link rel="stylesheet" type="text/css" href="${ pageContext.servletContext.contextPath }/resources/css/font-awesome.css" />
<link rel="stylesheet" type="text/css" href="${ pageContext.servletContext.contextPath }/resources/css/fonts.css" />
<link rel="stylesheet" type="text/css" href="${ pageContext.servletContext.contextPath }/resources/css/reset.css" />
<link rel="stylesheet" type="text/css" href="${ pageContext.servletContext.contextPath }/resources/css/owl.carousel.css" />
<link rel="stylesheet" type="text/css" href="${ pageContext.servletContext.contextPath }/resources/css/owl.theme.default.css" />
<link rel="stylesheet" type="text/css" href="${ pageContext.servletContext.contextPath }/resources/css/flaticon.css" />
<link rel="stylesheet" type="text/css" href="${ pageContext.servletContext.contextPath }/resources/css/style.css" />
<link rel="stylesheet" type="text/css" href="${ pageContext.servletContext.contextPath }/resources/css/style_II.css" />
<link rel="stylesheet" type="text/css" href="${ pageContext.servletContext.contextPath }/resources/css/responsive.css" />
</head>
<body>
	<!-- 등록된 이력서가 있을때 start -->
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
	<!-- 등록된 이력서가 있을때 end -->
 	
 	<!-- 등록된 이력서가 없을때 start -->
	<c:if test="${ requestScope.resumeStatus eq 'N' }">
		<label>등록된 이력서가 없습니다.</label>
		<button onclick="closeSelectResume();">닫기</button>
	</c:if>
 	<!-- 등록된 이력서가 없을때 end -->	
	<script>

		/* 창 열릴때 함수 발동 */
		window.onload = function(event){
			
			/* 부모창의 id를 통해서 값 가져오기 */
		    const parentValue = opener.document.getElementById("postNo").value;
			
		}
		
		/* 닫기 버튼 클릭 시 발동 */
		function closeSelectResume(){
			
		    window.close();
		}
		
		/* 수정 버튼 클릭 시 발동 */
		function updateResult(button){
			
		}
	
		/* 이력서 선택 버튼 클릭 시 발동 */
		function selectResume() {
			
			/* 반복문을 위해 radio버튼의 길이 저장 */
			const radio_length = document.getElementsByName("resumeNo").length;
			
			for(const i = 0; i < radio_length; i++) {
				
				/* 라디오 박스의 체크된 값을 가져오기 위해서 */
				if(document.getElementsByName("resumeNo")[i].checked == true) {
					
					/* 체크된 라디오 버튼의 value를 공고 상세페이지 쪽으로 넘겨주기 위해 이력서 번호 선언 후 초기화 */
					const resumeNo = document.getElementsByName("resumeNo")[i].value;
		            window.opener.document.getElementById("resumeNo").value = resumeNo ;
		            window.close();
				}
			}
		}
		
		/* 다기 버튼 클릭 시 발동 */
		function closeTab() {
			
			window.close();
		}
	</script>
</body>

</html>