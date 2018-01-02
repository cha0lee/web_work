<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="test.dao.MemberDao"%>
<%@page import="test.dto.MemberDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset=UTF-8">
<title>member/delete.jsp</title>
</head>
<body>
<%
	int num = Integer.parseInt(request.getParameter("num"));
	
	MemberDao.getInstance().delete(num);
	
	
%>
<script>
	alert("삭제했습니다.");
	location.href="list.jsp"
</script>
</body>
</html>