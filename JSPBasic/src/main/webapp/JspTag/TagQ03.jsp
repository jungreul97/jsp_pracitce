<%@page import="java.util.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>로또번호 생성 결과</h1>
<%  
	out.println("이번주 로또는 이 번호다!!<br/>");
	int[] arr = new int[6];
	/* for(int i=0;i<6;i++){
		int randnum = (int)(Math.random()*46)+1;
		
		arr[i] = randnum;
		out.println(arr[i]+" ");
		Thread.sleep(700);
		out.flush();
	}  */
	
	List<Integer> lotto = new ArrayList<>();
	while(true){
		int rn = rn = (int)(Math.random()*46)+1;
		if(!lotto.contains(rn)){
			lotto.add(rn);
		}
		if(lotto.size() == 6){
			break;
		}
	}
	Collections.sort(lotto);
	for(int i=0;i<6;i++){
		out.println(lotto.get(i)+" ");
		Thread.sleep(700);
		out.flush();
	}
%>
</body>
</html>