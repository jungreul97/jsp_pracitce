<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
	//자동로그인 기능 할때 필요함
	//저장된 쿠키 가져오기 사용자 쿠키 있는지 확인
	Cookie[] cookies = request.getCookies();

	String str = null;
	
	boolean flag = false;
	
	for(int i=0;i<cookies.length;i++){
		str = cookies[i].getName(); //쿠키 이름을 얻어오는 메서드
		System.out.println(str);
		
		if(str.equals("peanut_cookie")){
			out.println("탕콩 쿠키가 존재합니다.<br/>");
			String value = cookies[i].getValue();
			out.println("저장된 자료는 "+ value + "입니다.");
			flag = true;
			break;
		}
		
		
	}


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