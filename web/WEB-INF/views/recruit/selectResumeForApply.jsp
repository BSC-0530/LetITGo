<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

        <script>

            window.onload = function(event){
            	// 부모창의 값 id로 가져오기
                var parentValue = opener.document.getElementById("postNo").value;
            	
                
                alert(parentValue);
            	
            	
                document.getElementById("clickme").onclick = function(){
                	// usertid에 id로 값을 꺼내와서 저장
                    var resumeNo = document.getElementById("userId").value;
                	// 부모창에 있는 userid에 value에 저장
                    window.opener.document.getElementById("resumeNo").value = '선택한이력서 번호 : ' + resumeNo ;
                	// 창 닫아줌
                    window.close();
                }
            }
		
            
            

        </script>
</head>
  <body>
        <div id="wrapper">
            <h2>[ 새창으로 입력 ]</h2>
            <div id="target">
                <label for="userId"></label><input type="text" id="userId"><br>
                <input type="button" id="clickme"  value="닫기">
            </div>
        </div>
    </body>



</html>