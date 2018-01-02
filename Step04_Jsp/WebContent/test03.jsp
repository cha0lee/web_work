<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	List<String> names = new ArrayList<>();

	names.add("김구라");
	names.add("해골");
	names.add("주뎅이");
	names.add("원숭이");
	names.add("덩어리");
%>

<h3>친구목록</h3>
<ul>
	<% for(String name:names){ %>
		<li><%= name %></li>
	<%} %>
</ul>

</body>
</html>