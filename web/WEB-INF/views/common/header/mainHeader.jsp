
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<title>Let IT Go</title>
</head>
<body>
	<div class="gc_main_menu_wrapper">
            <div class="jp_top_header_right_cont">
                <ul>
                    <li><a href="#" align="center" style="background:red; margin-right: 30px; border-radius: 10px; width:100px">로그아웃</a></li>
                </ul>
            </div>
            <div class="container-fluid">
                <div class="row">
                    <div class="col-lg-2 col-md-2 col-sm-12 col-xs-12 hidden-xs hidden-sm full_width">
                        <div class="gc_header_wrapper">
                            <div class="gc_logo">
                                <a href="/let/mainPage/letitgo"><img src="${ pageContext.servletContext.contextPath }/resources/image/로고.PNG" class="img-responsive"></a>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-8 col-md-8 col-sm-12 col-xs-12 full_width">
                        <div class="header-area hidden-menu-bar stick" id="sticker">
                            <div class="mainmenu">
                                 <ul class="float_left">
                                 	<li class="has-mega gc_main_navigation">
                                    	<a href="${ pageContext.servletContext.contextPath }/detail/browse/select" class="gc_main_navigation" class="gc_main_navigation">봉석</a>
                                    </li>
                                 	<li class="has-mega gc_main_navigation">
                                    	<a href="${ pageContext.servletContext.contextPath }/regist/member" class="gc_main_navigation" class="gc_main_navigation">승수</a>
                                    </li>
                                 	<li class="has-mega gc_main_navigation">
                                    	<a href="${ pageContext.servletContext.contextPath }/productList/select" id="paymentMainPage" class="gc_main_navigation" class="gc_main_navigation">현수</a>
                                    </li>
                                 	<li class="has-mega gc_main_navigation">
                                    	<a href="${ pageContext.servletContext.contextPath }/companyTestServlet" class="gc_main_navigation" class="gc_main_navigation">본근</a>
                                    </li>
                                 	<li class="has-mega gc_main_navigation">
                                    	<a href="${ pageContext.servletContext.contextPath }/admin/mainPage" class="gc_main_navigation" class="gc_main_navigation">태훈</a>
                                    </li>
                                    <li class="has-mega gc_main_navigation">
										<%-- <a href="${ pageContext.servletContext.contextPath }/personal/memberInfo/select" class="gc_main_navigation" class="gc_main_navigation">동기</a> --%>
                                    	<a href="${ pageContext.servletContext.contextPath }/member/allJobPosting/select" class="gc_main_navigation" class="gc_main_navigation">동기</a>
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