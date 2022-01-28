<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%!
	int randomNumber(){
		return (int)(Math.random()*10+1);
	}
	 String randomColor(){
		 int n = (int)(Math.random()*3);
		 String[] arr = {"빨강","노랑","파랑"};
		 return arr[n];
	 }	
	 
	//declaration에서 선언한 변수는 서버를 끄기 전까지는 값이 누적 됩니다.
		public int total = 0;
%>

	<h3>오늘의 행운의 숫자와 행운의 색깔</h3>
	<p>행운의 숫자는 1~10 범위 입니다.</p>
	<p>행운의 숫자 : <%=randomNumber() %></p>
	<p>색깔은 1/3의 확률로 바뀝니다.(빨강,노랑,파랑)</p>
	<p>행운의 색깔 : <%=randomColor() %>
	
<%
	out.println("<br/>");
	// scriptlet 내부에 선언한 변수는 접속시마다 초기화됩니다.
	out.println(++total);
	int currentNum = 0;
	out.println("<br/>");
	out.println(++currentNum);

%>

</body>
</html>