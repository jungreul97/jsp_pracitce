<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String travel = request.getParameter("travel");
	out.println(travel);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		if(travel.equals("Korea")){
			response.sendRedirect("https://www.youtube.com/watch?v=iCjdMQClTCA");
		}else if(travel.equals("USA")){
			response.sendRedirect("https://www.youtube.com/watch?v=-4hwW6NUjw8");
		}else if(travel.equals("China")){
			response.sendRedirect("https://www.youtube.com/watch?v=Jb6YBJNBuAI");
		}else{
			response.sendRedirect("https://www.youtube.com/watch?v=KgLgqJoYpjU");
		}
	%>
</body>
</html>