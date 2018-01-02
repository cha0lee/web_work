<%@page import="test.dao.MemberDao"%>
<%@page import="test.dto.MemberDto"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset=UTF-8">
<title>member/list.jsp</title>
</head>
<body>
<%
	
	List<MemberDto> memberList = MemberDao.getInstance().getList();
	
%>
<a href="insertform.jsp">회원 추가하기</a>
<h3>회원정보 목록입니다.</h3>
<ul>
	<table>
		<thead>
			<tr>
				<th>번호</th>
				<th>이름</th>
				<th>주소</th>
				<th>수정</th>
				<th>삭제</th>
			</tr>
		</thead>
		<tbody>
			<%for(MemberDto dto: memberList){ %>
			<tr>
				<td><%= dto.getNum() %></td>
				<td><%= dto.getName() %></td>
				<td><%= dto.getAddr() %></td>
				<td><a href="updateform.jsp?num=<%=dto.getNum()%>">수정</a></td>
				<td><a href="delete.jsp?num=<%=dto.getNum()%>">삭제</a></td>
			</tr>
			<%} %>
		</tbody>
	</table>
</ul>
</body>
</html>