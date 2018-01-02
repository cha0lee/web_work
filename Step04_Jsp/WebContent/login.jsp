<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//폼전송되는 파라미터 추출하기
	String id=request.getParameter("id");
	String pwd=request.getParameter("pwd");
	//DB에서 해당 정보가 유효한 정보인지 확인한다.
	boolean isValid= false;
	
	if(id.equals("gura") && pwd.equals("1234")){//맞는 정보라면
		isValid=true;
	}	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset=UTF-8">
<title>login.jsp</title>
</head>
<body>
<%if(isValid){ %>
	<p><strong><%=id %></strong>님 로그인 되었습니다.</p>
<%}else{ %>
	<p>아이디 혹은 비밀 번호가 틀려요.</p>
<%} %>
<a href="index.html"></a>
</body>
</html>