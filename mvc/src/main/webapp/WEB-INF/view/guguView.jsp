<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
</head>
<body>
	<!-- View : 모델값(list) 출력 -->
	<h1><%=request.getAttribute("dan") %>단</h1>
	<%
		ArrayList<String> list = (ArrayList<String>)request.getAttribute("list");
		for(String s : list){
	%>
			<div><%=s %></div>
	<% 
		}
	%>
</body>
</html>