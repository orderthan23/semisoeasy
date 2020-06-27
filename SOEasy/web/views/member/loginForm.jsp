<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>SO Easy 로그인</title>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

<link rel="stylesheet" href="../../css/layout.css">
<style>


.input-group {
	width: 400px;
	margin: 60px auto;
	padding: 0;
	position: relative;
}

input {
	border: none;
	border-bottom: 1px solid #888;
	font-size: 15px;
	display: inline;
	background: #ECECEC38;
}

.loginForm:focus {
	outline: none;
	border-bottom-width: 4px;
	border-color: #3DB6AE;
	transition: 0.5s;
}

.inputInfo {
	position: absolute;
	color: #3DB6AE;
	left: 0;
	top: 0;
	opacity: 0;
	visibility: hidden;
	transition: 0.5s;
	font-weight: bold;
}

.label-top {
	top: -10px;
	opacity: 1;
	visibility: visible;
}

tr {
	height: 100px;
}

table {
	margin: auto;
	padding: 0;
}

button {
	background: #3DB6AE;
	width: 400px;
	height: 40px;
	border-radius: 10px;
	color: white;
	font-weight: border;
	border-color: #ECECEC38;
}

h1 {
	font-size: 60px;
	font-weight: bolder;
	margin: 0 auto;
	padding: 0;
	text-align: center;
}

td {
	
}

.loginForm {
	width: 400px;
}

.findAndJoin {
	margin: 24px;
	text-decoration: none;
	color: black;
	font-weigth: bolder;
	font-size: 15px;
}





#find {
	text-align: center;
	align-content: center;
}

.stick{
	display : inline-block;
}



</style>
</head>
<body>
	
		<header>
			<%@ include file="../common/header.jsp"%>
		</header>

		<section align="center">
			<br><br>
			
			<h1>SO Easy</h1>
			<h2>로그인</h2>
			<form action="<%=request.getContextPath()%>/login" method="post">
				<table>
					<tr>
						<td class="input-group"><label for="id" class="inputInfo">아이디</label>
							<input type="text" id="id" placeholder="아이디" class="loginForm"
							name="userId" /></td>



					</tr>
					<tr>
						<td class="input-group"><label for="password" class="inputInfo">비밀번호</label>
							<input type="password" id="password" placeholder="비밀번호"
							class="loginForm" name="password" /></td>

					</tr>
					<tr id="find">
						<td><a class="findAndJoin">아이디 찾기</a> <pre class="stick">|</pre> <a
							class="findAndJoin">비밀번호찾기</a> <pre class="stick">|</pre> <a
							class="findAndJoin" href=join.jsp>회원가입</a></td>
					</tr>


					<tr>
						<td class="input-group">
							<button type="submit">로그인</button>
						</td>
					</tr>
				</table>
			</form>
		</section>
		
			<%@ include file="../common/footer.jsp"%>
	
	
	<script>
		$('input').click(function() {
			$(this).attr('placeholder', '');
			$(this).parent().find('label').addClass('label-top');
		});
	</script>
</body>
</html>