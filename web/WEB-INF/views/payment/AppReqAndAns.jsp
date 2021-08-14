<%-- <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
<%
	// STEP2 에 이어 인증결과가 성공일 경우 STEP2 에서 받은 인증결과로 아래 승인요청 진행
//#####################
// 인증이 성공일 경우만
//#####################
if("0000".equals(paramMap.get("resultCode"))){

out.println("## 인증데이터 일괄수신 ##");
out.println("<p>"+paramMap.toString()+"</p>");

String mid = paramMap.get("mid");   // 가맹점 ID 수신 받은 데이터로 설정
String timestamp= SignatureUtil.getTimestamp();   // util에 의해서 자동생성
String charset = "UTF-8";                // 리턴형식[UTF-8,EUC-KR](가맹점 수정후 고정)
String format = "JSON";                 // 리턴형식[XML,JSON,NVP](가맹점 수정후 고정)
String authToken= paramMap.get("authToken");    // 취소 요청 tid에 따라서 유동적(가맹점 수정후 고정)
String authUrl= paramMap.get("authUrl");            // 승인요청 API url(수신 받은 값으로 설정, 임의 세팅 금지)
String netCancel= paramMap.get("netCancelUrl");  // 망취소 API url(수신 받은 값으로 설정, 임의 세팅 금지)

//#####################
// 2.signature 생성
//#####################
Map<String, String> signParam = new HashMap<String, String>();

signParam.put("authToken",authToken);// 필수
signParam.put("timestamp",timestamp);// 필수

// signature 데이터 생성 (모듈에서 자동으로 signParam을 알파벳 순으로 정렬후 NVP 방식으로 나열해 hash)
String signature = SignatureUtil.makeSignature(signParam);

//#####################
// 3.API 요청 전문 생성
//#####################
Map<String, String> authMap = new Hashtable<String, String>();

authMap.put("mid"    ,mid);               // 필수
authMap.put("authToken",authToken);  // 필수
authMap.put("signature",signature);     // 필수
authMap.put("timestamp",timestamp);  // 필수
authMap.put("charset"  ,charset);         // default=UTF-8
authMap.put("format"  ,format);          // default=XML
            
System.out.println("##승인요청 API 요청##");

HttpUtil httpUtil = new HttpUtil();

//#####################
// 4.API 통신 시작
//#####################
String authResultString = "";
authResultString = httpUtil.processHTTP(authMap, authUrl);

//############################################################
//5.API 통신결과 처리(***가맹점 개발수정***)
//############################################################
out.println("## 승인 API 결과 ##");
String test = authResultString.replace(",", "&").replace(":", "=").replace("\"", "").replace(" ","").replace("\n", "").replace("}", "").replace("{", "");
out.println("<pre>"+authResultString.replaceAll("<", "&lt;").replaceAll(">", "&gt;")+"</pre>");

}else{

//#############
// 인증 실패시
//#############
out.println("<br/>");
out.println("####인증실패####");
out.println("<p>"+paramMap.toString()+"</p>");

}

}catch(Exception e){
System.out.println(e);
}
%>
	
</body>
</html> --%>