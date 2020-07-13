<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
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
			
			<h1 align="center" style="line-height:60px; margin:0">삭제된 아이디</h1>
		</div>
		<br><br><br>
		<h2 style="text-align: center"><%=loginUser.getmId()%>는 삭제된 계정입니다<br> 복구를 원하신다면 복구요청 버튼을 누르십시오</h2>
		<br><br><br>
		<div align="center">
		<button type="button" class="moveButton" onclick="moveLogin();">로그인으로 이동</button>
		<button type="button" class="moveButton" onclick="moveMain();">복구 요청</button>
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