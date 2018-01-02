<%@ page language="java" contentType="application/json; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//요청 인코딩 설정
	request.setCharacterEncoding("utf-8");
	//msg라는 키값으로 전달되는 요청 파라미터 출력
	String msg = request.getParameter("msg");
	//콘솔에 출력해보기
	System.out.println(msg);
%>
{"response": "잘받았어"}