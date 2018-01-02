<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset=UTF-8">
<title>views/showtime.jsp</title>
</head>
<body>
<%
	String time=(String)request.getAttribute("time");
%>
<p>현재시간: <strong><%=time %></strong></p>
<!-- 아래 코드 ${time}은 위의 자바코드 time변수가 없어도 동작함 -->
<p>현재시간: <strong>${time }</strong></p>
</body>
</html>