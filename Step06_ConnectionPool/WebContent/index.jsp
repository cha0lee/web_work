<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>index.jsp</title>
</head>
<body>
<%
	//context 경로 얻어오기
	String cPath = request.getContextPath();
%>
<h3>인덱스 페이지 입니다.</h3>
<ul>
	<li><a href="board/list.jsp">방명록 목록보기</a></li>
	<li><a href="<%=cPath %>/board/list.jsp">방명록 목록보기</a></li>
	<li><a href="${pageContext.request.contextPath}/board/list.jsp">방명록 목록보기</a></li>
</ul>
</body>
</html>