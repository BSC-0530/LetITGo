<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<script>
	
		const link = "${ pageContext.servletContext.contextPath }/member/allJobPosting/select";

		
		if(document.getElementById("prevPage")) {
			const $prevPage = document.getElementById("prevPage");
			$prevPage.onclick = function() {
				$("#pagingForm").append("<input type='hidden' name='currentPage' value='${ requestScope.selectCriteria.pageNo - 1 }'>");
				$("#pagingForm").method = "post";
				$("#pagingForm").action =  link;
				$("#pagingForm").submit();
			}
		}
		
		if(document.getElementById("nextPage")) {
			const $nextPage = document.getElementById("nextPage");
			$nextPage.onclick = function() {
				$("#pagingForm").append("<input type='hidden' name='currentPage' value='${ requestScope.selectCriteria.pageNo + 1 }'>");
				$("#pagingForm").method = "post";
				$("#pagingForm").action = link;
				$("#pagingForm").submit();			
			}
		}

		
		function pageButtonAction(text) {
			
			$("#pagingForm").append("<input type='hidden' name='currentPage' value='" + text + "'>");
			$("#pagingForm").method = "post";
			$("#pagingForm").action = link;
			$("#pagingForm").submit();
		}
</script>
<script>
	function viewProfile() {
		
		const resumeNo = document.getElementById("resumeNo").value;
		
		location.href = "/let/applicantResume/select?resumeNo=" + resumeNo;
	}
</script>
</head>
<body>
	<c:set var="selectCriteria" value="${ requestScope.applicant.selectCriteria }"/>
	
    <div class="jp_listing_sidebar_main_wrapper">
        <div class="container">
            <div class="row">
            	<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                    <div class="jp_listing_heading_wrapper">
                        <h2>
                            We found <span><c:out value="${ selectCriteria.totalCount }"></c:out></span> resumes for you.
                        </h2>
                    </div>
                </div>
                <div class="col-lg-3 col-md-3 col-sm-12 col-xs-12 hidden-sm hidden-xs">
                    <div class="row">
                        <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
							<div class="jp_rightside_job_categories_wrapper">
								<div class="jp_rightside_job_categories_heading">
									<h4>기술</h4>
								</div>
								<div class="jp_blog_right_search_wrapper">
									<input id="autocomplete" type="text" placeholder="Search" name="skills">
								</div>
							</div>
						</div>
                    </div>
                </div>
                <div class="col-lg-9 col-md-9 col-sm-12 col-xs-12 jp_cl_right_bar">
                    <div class="jp_listing_tabs_wrapper">
                        <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
                            <div class="gc_causes_select_box_wrapper">
                                <div class="gc_causes_select_box">
                                    <select name="browesStatus">
                                        <option>전체조회</option>
                                    </select><i class="fa fa-angle-down"></i>
                                </div>
                            </div>
                        </div>
                        
                        <div style="width: 150px; float: left;" class="col-lg-5 col-md-5 col-sm-5 col-xs-12">
                            <div class="jp_form_btn_wrapper">
                                <button type="submit" id="btn btn-info"><i class="fa fa-search"></i>Search</button>
                            </div>
                        </div>
                    </div>
                    <c:forEach var="applicant" items="${ requestScope.applicantResult.applicantDTO }">
                    <div class="row">
                         <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
							<div class="jp_recent_resume_box_wrapper">
								<div class="jp_recent_resume_img_wrapper">
									<img src="images/content/resume_img1.jpg" alt="resume_img" />
								</div>
								<div class="jp_recent_resume_cont_wrapper">
									<h3><c:out value="${ applicant.resumeTitle }"/></h3>
                                    <p><a><c:out value="${ applicant.memName }"/></a></p>
									<p>
                                        <i class="fa fa-folder-open-o"></i>
                                        <c:forEach var="skills" items="${ requestScope.applicantResult.resumeSkillsAndNameDTO }">
                                        <c:if test="${ skills.resumeNo eq applicant.resumeNo }">
                                        <label><c:out value="${ skills.skillsName }"></c:out></label>
                                        </c:if>
                                        </c:forEach>
                                    </p>
								</div>
								<div class="jp_recent_resume_btn_wrapper">
									<ul>
                                        <li><p align="center"><c:out value="${ applicant.jobPostBrowesStatus }"/></p></li>
										<li><input id="resumeNo" type="text" value="${ applicant.resumeNo }">
										<li><a onclick="viewProfile();">View Profile</a></li>
									</ul>
								</div>
							</div>
						</div>
                    </div>
                    </c:forEach>
<!--                     <div align="center"> -->
<!-- 	                    <form id="pagingForm"method="post"> -->
<%-- 	                        <input type="hidden" name="skills" value="${ requestScope.skillsName }" readonly>  --%>
<!-- 	                        이전 페이지 버튼 -->
<%-- 	                        <c:if test="${ selectCriteria.pageNo <= 1 }"> --%>
<!-- 	                            <button type="button" disabled>PRIV</button> -->
<%-- 	                        </c:if> --%>
<%-- 	                        <c:if test="${ selectCriteria.pageNo > 1 }"> --%>
<!-- 	                            <button type="button" id="prevPage">PRIV</button> -->
<%-- 	                        </c:if> --%>
	                        
<!-- 	                        숫자 버튼 -->
<%-- 	                        <c:forEach var="p" begin="${ selectCriteria.startPage }" end="${ selectCriteria.endPage }" step="1"> --%>
<%-- 	                            <c:if test="${ selectCriteria.pageNo eq p }"> --%>
<%-- 	                                <button type="button" disabled><c:out value="${ p }"/></button> --%>
<%-- 	                            </c:if> --%>
<%-- 	                            <c:if test="${ selectCriteria.pageNo ne p }"> --%>
<%-- 	                                <button type="button" onclick="pageButtonAction(this.innerText);"><c:out value="${ p }"/></button> --%>
<%-- 	                            </c:if> --%>
<%-- 	                        </c:forEach> --%>
	                        
<!-- 	                        다음 페이지 버튼 -->
<%-- 	                        <c:if test="${ selectCriteria.pageNo >= selectCriteria.maxPage }"> --%>
<!-- 	                            <button type="button" disabled>NEXT</button> -->
<%-- 	                        </c:if> --%>
<%-- 	                        <c:if test="${ selectCriteria.pageNo < selectCriteria.maxPage }"> --%>
<!-- 	                            <button type="button" id="nextPage">NEXT</button> -->
<%-- 	                        </c:if> --%>
<!--                     	</form> -->
<!--                     </div> -->
                </div>
            </div>
        </div>
    </div>
    <script>
		function selectJobPosting(div) {

			const jobPostNo = div.children[0].value;
			const coMemNo = div.children[1].value;

			location.href = "${ pageContext.servletContext.contextPath }/detail/jobPosting/select?jobPostNo="
					+ jobPostNo + "&coMemNo=" + coMemNo;
		}
	</script>

</body>
</html>