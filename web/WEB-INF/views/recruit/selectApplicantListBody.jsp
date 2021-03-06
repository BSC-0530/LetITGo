<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Let IT Go</title>
</head>
<body>
	<c:set var="selectCriteria" value="${ requestScope.applicant.selectCriteria }"/>
    <div class="jp_listing_sidebar_main_wrapper">
        <div class="container">
            <div class="row">
            	<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                    <div class="jp_listing_heading_wrapper">
                        <h2> We found <span><c:out value="${ selectCriteria.totalCount }"></c:out></span> resumes for you.</h2>
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
									<input type="text" placeholder="Search" name="skills">
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
								
								<c:if test="${ applicant.memFilePath ne null}">
									<img style="width:90px; height:100px;" src="${ pageContext.servletContext.contextPath }${ applicant.memFilePath }" alt="profile_img" style="width:300px; height: 300px;">
								</c:if>
								<c:if test="${ applicant.memFilePath eq null }">
									<img style="width:90px; height:100px;" src="${ pageContext.servletContext.contextPath }/resources/image/basic.png" alt="profile_img" style="width:350px; height: 400px;">
								</c:if>
								
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
										<li><input id="resumeNo" type="hidden" value="${ applicant.resumeNo }">
										<li><input id="jobPostNo" type="hidden" value="${ requestScope.jobPostNo }">
										<li><a onclick="viewProfile();">View Profile</a></li>
									</ul>
								</div>
							</div>
						</div>
                    </div>
                    </c:forEach>
                </div>
            </div>
        </div>
    </div>
    <script>
		function viewProfile() {
			
			/* 선택한 프로필의 이력서 번호와 현재 조회중인 공고번호를 servlet으로 넘겨주기 위해 변수 선언 */
			const resumeNo = document.getElementById("resumeNo").value;
			const jobPostNo = document.getElementById("jobPostNo").value;
			
			/* 쿼리스트링으로 값 전달 */
			location.href = "/let/applicantResume/select?resumeNo=" + resumeNo + "&jobPostNo=" + jobPostNo;
		}
	</script>
</body>
</html>