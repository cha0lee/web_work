<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset=UTF-8">
<title>test08.jsp</title>
</head>
<body>
<%
	//javascript 변수에 원하는 값 할당하기
	boolean isRun = true;
	String myName = "김구라";
%>
<script>
	var isRun = <%=isRun%>;
	var myName = "<%=myName%>";
</script>
</body>
</html>