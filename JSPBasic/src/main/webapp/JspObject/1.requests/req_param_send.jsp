<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%-- 아래에 form을 만들고 내부에 input 4개를 만들어 주세요.
input태그의 type 속성은 하나는 text, 하나는 password
name 속성은 하나는 apple, 하나는  banana로 해주세요.
reset 버튼과 submit 버튼도 각각 하나씩 만들어주세요. --%>

<%-- form의 action 부분이 바로 목적지를 적는 부분임.
웹개발에서는 받을 페이지 화면의 주소를 적어줍니다. --%>
	<form action = "req_param_getpost.jsp" method = "get">
		<input type = "text" name = "apple" placeholder = "apple"/><br/>
		<input type = "password" name = "banana" placeholder = "banana"/>
		
		취미 : 
		<input type = "checkbox" name = "hobby" value="요리">요리&nbsp;
		<input type = "checkbox" name = "hobby" value="독서">운동&nbsp;
		<input type = "checkbox" name = "hobby" value="운동">노래&nbsp;
		<input type = "checkbox" name = "hobby" value="코딩">코딩&nbsp;
		<input type = "checkbox" name = "hobby" value="여행">독서&nbsp;<br/>
		
		<input type = "radio" name = "sports" value = "축구">축구&nbsp;
		<input type = "radio" name = "sports" value = "농구">농구&nbsp;
		<input type = "radio" name = "sports" value = "야구">야구&nbsp;
		<input type = "radio" name = "sports" value = "배구">배구&nbsp;
		
		<input type = "reset">
		<input type = "submit">
	</form>
	
	
</body>
</html>