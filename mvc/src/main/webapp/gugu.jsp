<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="model.*" %>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
</head>
<body>
<%
	// Controller 
	// 1) 요청분석 
	int dan=2;
	if(request.getParameter("dan")!=null){
		 dan = Integer.valueOf(request.getParameter("dan"));
	}
	
	// 2) 모델 연결(모델에서 모델값을 반환)
	GuguModel gm = new GuguModel();
	ArrayList<String> list = gm.getDanList(dan);
	
	// 3) 뷰 연결(뷰에게 모델값을 전달)
	request.setAttribute("list",list);
	request.setAttribute("dan",dan);
	RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/view/guguView.jsp"); // 연결 뷰 준비
	rd.forward(request, response);
%>

</body>
</html>