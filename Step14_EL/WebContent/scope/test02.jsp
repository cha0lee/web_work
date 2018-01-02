<%@page import="test.member.dto.MemberDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset=UTF-8">
<title>scope/test02.jsp</title>
</head>
<body>
<%
	MemberDto dto = new MemberDto(1, "김구라", "노량진");
	//request 영역에 MemberDto type 저장하기
	request.setAttribute("dto", dto);
%>
</body>
<h3>el 테스트</h3>
<p> 번호: ${requestScope.dto.num }</p>
<p> 이름: ${dto.name }</p>
<p> 주소: ${dto.addr }</p>

<h3>위의 코드와 비교</h3>
<%
	MemberDto dto2 = (MemberDto)request.getAttribute("dto");
%>
<p>번호: <%=dto.getNum() %></p>
<p>이름: <%=dto.getName() %></p>
<p>주소: <%=dto.getAddr() %></p>
</html>