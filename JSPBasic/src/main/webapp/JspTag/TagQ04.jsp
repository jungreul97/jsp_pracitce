<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%-- JSP주석은 이렇게 작성합니다.
JSP 주석은 소스보기에 나타나지 않습니다. --%>
<!-- html 주석은 소스보기에 나타납니다. -->

<%!
	double celcius = 4;
	double CtoF(double celcius){
		return celcius*1.8 + 32;
	}
%>
<h1>현재 대구 온도</h1>
<%
	out.println("섭씨 온도 : "+celcius+"<br/>");
	out.println("화씨 온도 : "+CtoF(celcius)+"<br/>");	
%>
	
</body>
</html>