<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset=UTF-8">
<title>test11.jsp</title>
<link rel="stylesheet" href="css/bootstrap.css" />
</head>
<body>
<%
	String strNum = request.getParameter("pageNum");
	int pageNum = 0;
	if(strNum ==null){
		pageNum = 1;
	}else {
		pageNum = Integer.parseInt(strNum);
	}
%>
<div class="container">
	<h3>pagination 연습</h3>
	<ul class="pagination">
		<%for(int i = 1; i < 11; i++){ %>
		<li <%if(pageNum==i){%>class="active"<%}%>><a href="test11.jsp?pageNum=<%=i %>"> <%=i%></a></li>
		<%} %>
	</ul>

</div>
</body>
</html>