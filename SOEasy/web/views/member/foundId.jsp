<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
	String resultId = (String) request.getAttribute("resultId");
%>
<html>
<head>
<meta charset="UTF-8">
<script	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<link rel="stylesheet" href="/login/css/layout.css">
<title>Insert title here</title>
</head>
<body>
	<header><%@ include file="../common/header.jsp"%></header>
	<section>
		<p>찾으시는 아이디는 <%=resultId %>입니다</p>
		
	</section>
	<footer><%@ include file="../common/footer.jsp"%></footer>
	
	
</body>
</html>