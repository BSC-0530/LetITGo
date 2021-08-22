<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script type="text/javascript" src="/let/resources/js/datatables.js"></script>
<link rel="stylesheet" type="text/css" href="/let/resources/css/datatables.css"/>

<body>
	<c:set var="resume" value="${ requestScope.resultResume }"/>

	<div class="jp_cp_profile_main_wrapper">
		<div class="container">
			<div class="row">
				<div class="col-lg-4 col-md-4 col-sm-12 col-xs-12">
					<div class="jp_cp_left_side_wrapper">
						<div class="jp_cp_left_pro_wallpaper">
							<img src="images/content/cp1.png" alt="profile_img" style="width:300px; height: 300px;">
								<h2>${ detailList[0].memName }</h2>				
						</div>
						<div class="jp_cp_rd_wrapper">
							<ul>
								<li>
									<a onclick="interview(this);">
										<input id="interviewMemNo" type="hidden" value="${ detailList[0].scoutResume[status.index].inMemNo }">
										<i class="fa fa-download"></i>
										&nbsp;면접 제안
									</a>
								</li>
								
								<li>
									<a href="#">
										<input id="addWishList" type="hidden" value="${ detailList[0].scoutResume[status.index].resumeNo }"><i class="fa fa-phone"></i>
										&nbsp;후보자 찜하기
									</a>
								</li>
							</ul>
							
						</div>
					</div>
				</div>
				<div class="col-lg-8 col-md-8 col-sm-12 col-xs-12">
					<div class="jp_cp_right_side_wrapper">
						<div class="jp_cp_right_side_inner_wrapper">
							<h2>간단 소개</h2>
							<table>
								<tbody>
									<tr>
										<td>이름</td>
										<td>:</td>
										<td><c:out value="${ resume.detailResume.memName }"/></td>
									</tr>
									<tr>
										<td>직무</td>
										<td>:</td>
										<td><c:out value="${ resume.detailResume.jobName }"/></td>
									</tr>
									<tr>
										<td>경력</td>
										<td>:</td>
										<c:if test="${ resume.careerHistoryList eq null}">
										<td><c:out value="경력"/></td>
										</c:if>
										<c:if test="${ resume.careerHistoryList ne null}">
										<td><c:out value="신입"/></td>
										</c:if>
									</tr>
									<tr>
										<td>보유 스킬</td>
										<td>:</td>
										<td>
										<c:forEach var="skills" items="${ resume.resumeSkillsAndNameList }">
										<c:out value="${ skills.skillsName }"/>
										</c:forEach>
										</td>
									</tr>
								</tbody>
							</table>
						</div>
					</div>
					<div class="row">
						<div class="col-lg-12 col-md-12 col-xs-12 col-sm-12">
							<div class="jp_cp_accor_heading_wrapper">
								<h2>지원자 상세 이력서</h2>
								<p>아래의 메뉴에서 상세한 이력서를 조회하세요.</p>
							</div>
						</div>
						<div class="col-lg-12 col-md-12 col-xs-12 col-sm-12">
							<div class="accordion_wrapper abt_page_2_wrapper">
								<div class="panel-group" id="accordion_threeLeft">


									<!-- /.panel-default -->
									<div class="panel panel-default">
										<div class="panel-heading bell">
											<h4 class="panel-title">
												<a class="collapsed" data-toggle="collapse" data-parent="#accordion_threeLeft" href="#collapseTwentyLeftThree" aria-expanded="false">
													경력 및 프로젝트이력, 포트폴리오
												</a>
											</h4>
										</div>
										<div id="collapseTwentyLeftThree" class="panel-collapse collapse" aria-expanded="false" role="tablist">
											<div class="panel-body">
												<label style="font-size: 20px;"><c:out value="경력"/></label><br>
												<c:if test="${ resume.careerHistoryList ne null }">
													 <table id="myTable" class="hover cell-border stripe">
<%-- 													<c:forEach var="career" items="${ resume.careerHistoryList }"> --%>
														 	<thead>
														 		<tr>
														 			<th>회사명</th>
														 			<th>부서명</th>
														 			<th>직책</th>
														 			<th>업무분야</th>
														 			<th>퇴사일</th>
														 		</tr>
														 	</thead>
														 	<tbody>
														 		<tr>
														 			<td>회사명</td>
														 			<td>회사명</td>
														 			<td>회사명</td>
														 			<td>:</td>
														 			<td>내용</td>
														 		<tr>
														 	</tbody>
<%-- 													</c:forEach> --%>
												</table>
												</c:if>
												<c:if test="${ resume.careerHistoryList ne null }">
													<c:out value="신입개발자입니다."/>
												</c:if>
												
												
												
												<label style="font-size: 20px;"><c:out value="포트폴리오 링크"/></label><br>
												<c:if test="${ resume.portFolioList ne null }">
													<c:forEach var="portForlio" items="${ resume.portFolioList }">
														<a href="${ portForlio.potLinkAddress }">
															<c:out value="${ portForlio.potLinkAddress }"/><br>
														</a>
													</c:forEach>
												</c:if>
												<c:if test="${ resume.portFolioList eq null }">
													<c:out value="지원자가 등록한 포트폴리오가 없습니다."/>
												</c:if>
											</div>
										</div>
									</div>
									<div class="panel panel-default">
										<div class="panel-heading bell">
											<h4 class="panel-title">
												<a class="collapsed" data-toggle="collapse" data-parent="#accordion_threeLeft" href="#collapseTwentyLeftThree2" aria-expanded="false">
													자기소개	
												</a>
											</h4>
										</div>
										<div id="collapseTwentyLeftThree2" class="panel-collapse collapse" aria-expanded="false" role="tablist">
											<div class="panel-body">
												<c:if test="${ resume.selfIntroductionList ne null }">
													<c:forEach var="selfIntroduce" items="${ resume.selfIntroductionList }">
															<label style="font-size: 20px;"><c:out value="${ selfIntroduce.selfIntroItemName }"/></label><br>
															<c:out value="${ selfIntroduce.selfIntroItemContent }"></c:out><br><br>
													</c:forEach>
												</c:if>
												<c:if test="${ resume.selfIntroductionList eq null }">
													<c:out value="지원자가 등록한 자기소개가 없습니다."/>
												</c:if>
											</div>
										</div>
									</div>
									<div class="panel panel-default">
										<div class="panel-heading bell">
											<h4 class="panel-title">
												<a class="collapsed" data-toggle="collapse" data-parent="#accordion_threeLeft" href="#collapseTwentyLeftThree3" aria-expanded="false">														
													자격증, 교육, 수상 이력 	
												</a>
											</h4>
										</div>
										<div id="collapseTwentyLeftThree3" class="panel-collapse collapse" aria-expanded="false" role="tablist">
											<div class="panel-body">
											<c:if test="${ resume ne null }">
											<table>
												<thead style="border: 1px solid black;">
													<tr>
														<th>회사명</th>
														<th>부서명</th>
														<th>직책</th>
														<th>업무분야</th>
														<th>입사일</th>
														<th>퇴사일</th>
													<tr>
												
												</thead>
												<tbody style="border: 1px solid black;">
													<tr>
														<td>d</td>
														<td>d</td>
														<td>d</td>
														<td>d</td>
														<td>d</td>
														<td>d</td>
													</tr>
													
												</tbody>
											</table>
											</c:if>
											
												
											</div>
										</div>
									</div>
									<!-- /.panel-default -->
								</div>
								<!--end of /.panel-group-->
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<table id="table_id" class="display">
        <thead>
            <tr>
                <th>Column 1</th>
                <th>Column 2</th>
    
            </tr>
        </thead>
        <tbody>
            <tr>
                <td>1 Data 1</td>
                <td><p>호구야</p> </td>
            </tr>
            <tr>
                <td>2 Data 1</td>
                <td>Row 2 Data 2</td>
            </tr>
            <tr>
                <td>3 Data 1</td>
                <td><label class="switch"><input type="checkbox"><span class="slider round"></span></label>
                    <p>OFF</p>
                    <p style="display:none;">ON</p></td>
            </tr>
            <tr>
                <td>4 Data 1</td>
                <td></td>
            </tr>
            <tr>
                <td>5 Data 1</td>
                <td>Row 1 Data 2</td>
            </tr>
            <tr>
                <td>6 Data 1</td>
                <td>Row 2 Data 2</td>
            </tr>
            <tr>
                <td>7 Data 1</td>
                <td>Row 1 Data 2</td>
            </tr>
            <tr>
                <td>8 Data 1</td>
                <td>Row 2 Data 2</td>
            </tr>
            <tr>
                <td>9 Data 1</td>
                <td>Row 1 Data 2</td>
            </tr>
            <tr>
                <td>10 Data 1</td>
                <td>Row 2  2</td>
            </tr>
        </tbody>
    </table>

	<script>
		$(document).ready(function() {
			$('#table_id').DataTable();
		});
	</script>
	
	<script type="text/javascript" src="/let/resources/js/jquery_min.js"></script>
    <script type="text/javascript" src="/let/resources/js/bootstrap.js"></script>
    <script type="text/javascript" src="/let/resources/js/jquery.menu-aim.js"></script>
    <script type="text/javascript" src="/let/resources/js/jquery.countTo.js"></script>
    <script type="text/javascript" src="/let/resources/js/jquery.inview.min.js"></script>
    <script type="text/javascript" src="/let/resources/js/owl.carousel.js"></script>
    <script type="text/javascript" src="/let/resources/js/modernizr.js"></script>
    <script type="text/javascript" src="/let/resources/js/jquery.magnific-popup.js"></script>
    <script type="text/javascript" src="/let/resources/js/custom_II.js"></script>

</body>
</html>