<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<style>
section {
	clear: both;
}

#findBox {
	width: 600px;
	margin: 0 auto;
	clear: both;
	border-style: solid;
	border-width: 1px;
	border-color: #C4C4C4;
	height : 500px;
}

#findForm {
	padding: 0;
	margin : 0 auto;
	
}

#findBrand {
	font-size: 60px;
	font-weight: bolder;
}

#findForm div .button {
	height: 100px;
	width: 295px;
	margin: 0;
	display: inline-block;
	padding: 0;
	border: none;
	text-align: center;
	vertical-align: middle;
	
}

#findForm div .button p {
	font-size: 20px;
	font-weight: bolder;
}

.idfindNeeds {
	display: block;
	width: 350px;
	height: 30px;
	border-radius: 5px;
	border-color: lightgray;
	outline: none;
	border-style: solid 2px;
}
.button:first-child{
	background : #3DB6AE;
	
}
.button:nth-child(2) {
	
	background : lightgray;
}


#findButton{
	background: #3DB6AE;;
	width: 500px;
	height : 75px;
	outline: none;
	border-style : none;
	border-radius : 10px;
	
	
}
#findButton:active{
	outline : none;
	
}
#findButton p{
	margin : 0 auto;
	padding : 0;
	line-height : 80px;
	font-size : 30px;
	font-weight: bolder;
}


#idBox table tr td label{
	font-size : 20px;
	font-weight : border;
}
</style>
<title>Insert title here</title>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<link rel="stylesheet" href="../../css/layout.css">
</head>
<body>
	<header><%@ include file="../common/header.jsp"%></header>

	<section>

		<br>
		<p align=center id="findBrand">SO EASY</p>
		<div id="findBox">
	
			<form action="" method="post" id="findForm">
				<div align="center">
					<div class="button">
						<br>
						<p>아이디 찾기</p>
					</div>
					<div class="button">
						<br>
						<p>비밀번호 찾기</p>
					</div>
					<div id="idBox">
						<h1>아이디는 가입하신 이름과 이메일로 찾을 수 있습니다.</h1>
						<table>
							<tr>
								<td><label style="margin-right : 20px;" id="text1">이름 </label></td>
								<td><input type="text" name="userId" class="idfindNeeds"
									placeholder="이름을 입력하세요"></td>
								<td><br>
								<br>
								<br>
								<br></td>

							</tr>


							<tr>
								<td ><label style="margin-right : 20px;" id="text2">이메일 </label></td>
								<td><input type="email" name="email" class="idfindNeeds"
									placeholder="이메일을 입력하세요"></td>
								<td><br>
								<br>
								<br>
								<br></td>
							</tr>
						</table>
					</div>
					
					
					<br>
					<!-- 찾기 버튼 -->
					<button type="submit" id="findButton"><p>찾기<p></button>
							
							
					</div>

				

			</form>


		</div>
	</section>

	<footer><%@ include file="../common/footer.jsp"%>
	</footer>

	<script>
		$('.button:first-child').click(function() {
			$(this).css("background", "#3DB6AE");
			$('.button:nth-child(2)').css("background", "lightGray");
			$('#idBox h1').text("아이디는 가입하신 이름과 이메일로 찾을 수 있습니다.");
			$('#text1').text('이름');
			$('input[name=userId]').attr("placeholder","이름을 입력하세요");
		});
		
		$('.button:nth-child(2)').click(function() {
			$(this).css("background", "#3DB6AE");
			$('.button:first-child').css("background","lightGray");
			$('#idBox h1').text("비밀번호는 가입하신 아이디와 이메일로 찾을 수 있습니다.");
			$('#text1').text("아이디");
			$('input[name=userId]').attr("placeholder","아이디를 입력하세요");

		});
		
		
		

		
	</script>
</body>
</html>