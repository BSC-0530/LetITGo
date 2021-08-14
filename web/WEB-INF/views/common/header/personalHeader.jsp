<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<title>Insert title here</title>
</head>
<body>
	<div class="gc_main_menu_wrapper">
            <div class="jp_top_header_right_cont">
                <ul>
                    <li><a href="../common/login/logout.jsp" align="center" style="background:red; margin-right: 30px; border-radius: 10px; width:100px">로그아웃</a></li>
                </ul>
            </div>
            <div class="container-fluid">
                <div class="row">
                    <div class="col-lg-2 col-md-2 col-sm-12 col-xs-12 hidden-xs hidden-sm full_width">
                        <div class="gc_header_wrapper">
                            <div class="gc_logo">
                                <a href="${ pageContext.servletContext.contextPath }/mainPage"><img src="${ pageContext.servletContext.contextPath }/resources/image/로고.PNG" class="img-responsive"></a>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-8 col-md-8 col-sm-12 col-xs-12 full_width">
                        <div class="header-area hidden-menu-bar stick" id="sticker">
                            <div class="mainmenu">
                                 <ul class="float_left">
                                 	<li class="has-mega gc_main_navigation">
                                    	<a href="${ pageContext.servletContext.contextPath }/testServlet" class="gc_main_navigation" class="gc_main_navigation">마이페이지</a>
                                    </li>
                                 	<li class="has-mega gc_main_navigation">
                                    	<a href="${ pageContext.servletContext.contextPath }" class="gc_main_navigation" class="gc_main_navigation">채용공고</a>
                                    </li>
                                 	<li class="has-mega gc_main_navigation">
                                    	<a href="${ pageContext.servletContext.contextPath }" class="gc_main_navigation" class="gc_main_navigation">스카우트</a>
                                    </li>
                                 	<li class="has-mega gc_main_navigation">
                                    	<a href="${ pageContext.servletContext.contextPath }/resume/list" class="gc_main_navigation" class="gc_main_navigation">이력서</a>
                                    </li>
                                 	<li class="has-mega gc_main_navigation">
                                    	<a href="${ pageContext.servletContext.contextPath }" class="gc_main_navigation" class="gc_main_navigation">1:1문의</a>
                                    </li>
                                </ul>
                            </div>
						</div>
					</div>
				</div>
			</div>
		</div>
       
       
   
	
</body>
</html>