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
	public int number = 0;

%>
<%
	out.println("페이지 누적 요청 수: "+(++number)+"<br/>");
	out.println("매 <strong>10<strong/>번째 방문자에게는 기프티콘을 드립니다"+"<br/>");
	if(number%10 == 0 ) out.println("당첨되셨습니다.");


	out.println("<h1>랜덤 구구단</h1>");
	int randnum = (int)(Math.random()*9)+1;
	out.println("이번에 나온 구구단은 "+randnum+"단 입니다."+"<br/>");
	for(int i=1;i<=9;i++){
		out.println(randnum+" X "+i+" = "+(randnum*i)+"<br/>");
	}
	

%>
	
</body>
</html>