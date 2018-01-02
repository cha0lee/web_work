<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset=UTF-8">
<title>play.jsp</title>
</head>
<body>
<%
	//session 에 담긴 내용을 읽어온다
	String id=(String)session.getAttribute("id");

%>
<%if(id==null){ %>
	<a href="users/loginform.jsp">로그인</a>
<%} else {%>
	<p><strong><%=id %></strong> 회원님 로그인 중...</p>
<%} %>
<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Enim non facere quidem doloremque tempore praesentium similique amet odit dignissimos tenetur impedit deleniti veritatis beatae asperiores consectetur architecto aliquid veniam. Tempora.</p>
</body>
</html>