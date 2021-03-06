<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
	double height = Double.parseDouble(request.getParameter("height"))/100;
	int weight = Integer.parseInt(request.getParameter("weight"));
	double bmi = weight/(height*height);

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%--
	bmi지수 계산공식 = [체중(kg) / 신장(m) * 신장(m)]
	즉, 175cm라면 실제 신장에 들어가야 하는 값은 1.75m
	*bmi 지수가 23을 초과한다면 "체중조절을 고려해 보세요." 출력
	18.5미만이라면 "당신의 저체중입니다." 출력
	나머지인 경우 "당신은 정상 체중입니다."를 출력하되
	스크립트릿에 if 문을 넣어서 선택적으로 결과가 나오게 해 보세요.
	
	*폼에서 전달되는 데이터는 무조건 문자열로 전달됩니다.
	따라서 정수나 실수로 변환해야 하는데
	String -> int,double
	Integer.parseInt("문자열") ==> 문자열 정수로
	Double.parseDouble("문자열") ==> 문자열 실수로
 --%>
 	<h1>BMI계산 웹 어플리케이션</h1>
 	<hr>
 	
 	-신장 : <%= height %>m<br/>
 	-체중 : <%= weight %>kg<br/>
 	<br/> 
 	BMI 지수 : <strong><%= bmi %></strong><br/>
 	<%
 		if(bmi>23){
 			out.println("<strong>체중조절</strong>을 고려해 보세요.");
 		}else if(bmi<18.5){
 			out.println("당신은 <strong>저체중</strong> 입니다.");
 		}else{
 			out.println("당신은 정상 체중입니다.");
 		}
 	%>
</body>
</html>