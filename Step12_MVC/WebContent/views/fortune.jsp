<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset=UTF-8">
<title>views/fortune.jsp</title>
</head>
<body>
<%
	//request 영역에 담긴 오늘의 운세 얻어오기
	String fortuneToday=(String)request.getAttribute("fortuneToday");
%>
<p> 오늘의 운세: <strong><%=fortuneToday %></strong></p>
</body>
</html>