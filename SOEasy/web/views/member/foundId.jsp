<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
	String resultId = (String) request.getAttribute("resultId");
	if(resultId == null){
		request.setAttribute("msg", "잘못된 접근입니다.");
		request.getRequestDispatcher("/views/common/errorPage.jsp").forward(request, response);
	}
%>
<html>
<head>
<meta charset="UTF-8">
<script	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<link rel="stylesheet" href="/login/css/layout.css">
<style>
	#infoBox{
		width: 40%;
		margin-left : auto;
		margin-right: auto;
		border: solid 1px lightgray;
		height : 400px;
		
		
	}
	.moveButton{
		height : 50px;
		background : #3DB6AE;
		color : white;
		font-weight: bolder;
		font-size:  20px;
		border: none;
	}
	.moveButton:active{
		outline: none;
	}
</style>
<title>Insert title here</title>
</head>
<script>
	window.history.forward();
	function noBack(){window.history.forward();}
</script>
<body onload="noBack();" onpageshow="if(event.persisted) noBack();" onunload="">
	<header><%@ include file="../common/header.jsp"%></header>
	<section>
		<br><br><br><br><br>
		<div id="infoBox">
		
		<div style="width:100%; height:60px; background:#3DB6AE; margin:0;">
			
			<h1 align="center" style="line-height:60px; margin:0">아이디 찾기</h1>
		</div>
		<br><br><br>
		<h1 style="text-align: center">찾으시는 아이디는<label style="font-size:35px; color:#3DB6AE; font-weight:bolder;"><%=resultId %></label> 입니다</h1>
		<br><br><br>
		<div align="center">
		<button type="button" class="moveButton" onclick="moveLogin();">로그인으로 이동</button>
		<button type="button" class="moveButton" onclick="moveMain();">메인메뉴로 이동</button>
		</div>
		</div>
	</section>
	<footer><%@ include file="../common/footer.jsp"%></footer>
	<script>
		function moveLogin(){
			location.href = "<%=request.getContextPath()%>/views/member/loginForm.jsp";
		}
		function moveMain(){
			location.href = "<%=request.getContextPath()%>";
		}
	</script>
	
</body>
</html>