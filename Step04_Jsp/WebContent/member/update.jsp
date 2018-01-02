<%@page import="test.dto.MemberDto"%>
<%@page import="test.dao.MemberDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset=UTF-8">
<title>member/update.jsp</title>
</head>
<body>
<%
	//잊지말고 인코딩하기
	request.setCharacterEncoding("utf-8");
	
	//폼 전송되는 내용을 추출해서
	int num = Integer.parseInt(request.getParameter("num"));
	String name = request.getParameter("name");
	String addr = request.getParameter("addr");
	//MemberDto에 담아서
	MemberDto dto = new MemberDto(num, name, addr);
	//MemberDao객체를 이용해서 저장한다.
	MemberDao.getInstance().update(dto);

%>
<p>저장했습니다.</p>
<a href="list.jsp">목록보기</a>
</body>
</html>