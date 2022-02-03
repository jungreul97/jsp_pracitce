<%@ page import="java.util.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
   // 자바에서 import구문을 이용해 사용하던 클래스들은 JSP파일에서도 역시 import 구문을 써야 합니다.
   // 지시자(Directive)의 경우 <%@ % > 사이에 기술하여
   // 문서자체에서 사용할 설정이나 옵션을 지정합니다.
   
   Date date = new Date();
   
   List<String> names = new ArrayList<>();
   names.add("김정률");
   names.add("채종훈");
   names.add("조성우");
   names.add("김유민");
   
   out.println(names.toString()+"<br/>");
   out.println(names.get(0)+"<br/>");
   out.println(date.getDate()+"<br/>");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
</body>
</html>