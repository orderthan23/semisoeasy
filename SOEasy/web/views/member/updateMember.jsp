<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<link rel="stylesheet" href="../../css/layout.css">
<style>
	#pwQuestBox{
		display :block;
		width : 600px;
		
		margin-left : auto;
		margin-right : auto;
		margin-left : auto;
		padding : 0;
		
	}
	#pwQuestBox h1 {
		font-size : 60px;
		font-weigth : bolder;
	}
	#pwQuestBox h2{
		font-size : 50px;
		font-weight : bolder;
	}
	
	input[name=userPwd]{
		height: 20px;
		width : 250px;
		margin-bottom : 80px;
		
	}
	#pwQuestBox form button{
		width: 290px;
		height: 75px;
		background : #3DB6AE;
		font-size : 25px;
		font-weight: bolder;
		outline : none;
		border : none;
		border-radius : 10px;
	}
</style>
<title>Insert title here</title>
</head>
<body>
	<header><%@ include file="../common/header.jsp"%></header>
	<nav><%@ include file="../common/aside.jsp"%></nav>
	<section>
		<br>
		<div id="pwQuestBox" align="center">
			<h1>SO EASY</h1>
			<h2>개인정보 수정</h2>
			<hr>
			<br><br>
			<form>
				<label style="font-size : 20px;">비밀번호</label>&nbsp;&nbsp;&nbsp;
				<input type ="password" name="userPwd" placeholder="비밀번호를 입력하세요.">
				<br>
				<button>개인정보 수정하기</button>
			</form>
		</div>
	
	</section>
	<footer> <%@ include file="../common/footer.jsp"%></footer>
</body>
</html>