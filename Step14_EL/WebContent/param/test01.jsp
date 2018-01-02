<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset=UTF-8">
<title>param/test01.jsp</title>
</head>
<body>
<!-- el에서 파라미터를 추출할 때에는 param.을 사용한다 -->
<p>파라미터로 전달된 num: <strong>${param.num }</strong></p>
<p>파라미터로 전달된 name: <strong>${param.name }</strong></p>
<p>파라미터로 전달된 addr: <strong>${param.addr }</strong></p>
<p> empty param.addr: <strong>${empty param.addr }</strong></p>
</body>
</html>