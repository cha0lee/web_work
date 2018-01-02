<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset=UTF-8">
<title>views/person.jsp</title>
</head>
<body>
<%
	//request 영역에 담긴 오늘의 운세 얻어오기
	String personToday=(String)request.getAttribute("personToday");
%>
<p> 오늘의 인물: <strong><%=personToday %></strong></p>
<p> 오늘의 인물: <strong>${personToday }</strong></p>
</body>
</html>