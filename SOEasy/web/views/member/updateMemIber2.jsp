<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="../../js/validate.js"></script>
<link rel="stylesheet" href="../../css/layout.css">
<title>SO Easy</title>
<style>
#joinTable {
	margin: 0 auto;
	clear : both;
	
}

.input-group {
	width: 450px;
	margin: 60px auto;
	padding: 0;
	position: relative;
}

#joinTable tr td input {
	border: none;
	border-bottom: 1px solid #888;
	font-size: 15px;
	display: inline;
	background: #ECECEC38;
}



.input {
	position: absolute;
	color: #3DB6AE;
	left: 0;
	top: 0;
	
	font-weight: bold;
}

input:focus {
	outline: none;
	border-bottom-width: 4px;
	border-color: #3DB6AE;
	transition: 0.5s;
}

tr {
	height: 100px;
}

.input-group button {
	background: #3DB6AE;
	width: 120px;
	height: 40px;
	border-radius: 10px;
	color: white;
	font-weight: border;
	border-color: #ECECEC38;
}

.checkRule {
	
	height: 40px;
	border-radius: 10px;
	display: block;
}

h1 {
	font-size: 60px;
	font-weight: bolder;
}

#joinTable tr td {
	left: 50px;
}

.submitButton {
	width: 400px;
	background: #3DB6AE;
	border-radius: 10px;
	height: 40px;
	border-style: none;
	color: white;
	font-size: 15px;
}
#validate1{
	font-weight: bold;
	font-size : 15px;
	font-family : sans-serif;
}
.input-group p {
	font-size : 13px;
	font-weight : normal;
}

#profileZone{
 border-radius: 50%;
 width:100px;
 height:100px;
 margin-left:auto;
 margin-right: auto;
 overflow: hidden;
 border: solid;

}
#profileZone img{
 	width: 100%;
    height: 100%;
    object-fit: cover;
}
	
#changeProfile{

	background: #3DB6AE;
	border : none;
	color : white;
	height : 30px;
	border-radius: 5px;
}
#changeProfile:focus{
	outline: none;
}
</style>
</head>
<body>
	<header>
		<%@ include file="../common/header.jsp"%>

	</header>

	<nav><%@ include file="../common/aside.jsp"%></nav>
	<section>




		<form action="" method="post" id="joinForm">
			<table id="joinTable" align="center">
			
				<tr>
					
					<td><h1 align="center">SO EASY<br><br>개인정보 수정<hr></h1><td>
				</tr>
				<tr>
					<td align="center" height="200px">
						<div id="profileZone">
							<img src="/login/images/etc/lingard.png">
						</div>
						<br>
						<button id="changeProfile">프로필 사진 변경</button>
			
					</td>
				</tr>
				<tr>
					<td class="input-group"><label for="id" class="input">아이디</label>
						<input type="text" id="id"  readonly/></td>
				</tr>

				<tr>
					<td class="input-group" id="nickName-zone"><label for="nickName" class="input">닉네임
					</label> <input type="text" id="nickName" name="nickName" onkeyup="setTimeout(checkingNickName(),200)" readonly />
						<button type="button" onclick="changeNickName();">닉네임 수정</button>
						<p></p></td>
				</tr>

				<tr>
					<td class="input-group"><label for="name" class="input">이름</label>
						<input type="text" id="name"  name="name" readonly/>
						<button type="button" onclick="changeName();">이름 수정</button></td>
				</tr>


				<tr>
					<td class="input-group" id="password-zone"><label for="password" class="input">비밀번호</label>
					<pre id="validate1">                                               0/16자</pre>
						<input type="password" id="password" name="password" onkeyup="setTimeout(checkPwdLength(),200);" readonly/>
						<button type="button" onclick="changePassword();">비밀번호 수정</button>
						<p></p>
						</td>
				</tr>
				
				<tr>
					<td class="input-group" id="password2-zone"><label for="password2"  class="input" >비밀번호확인</label>
						<input type="password" id="password2" name="password2" onkeyup="setTimeout(checkPwdSame(),200);" readonly/>
						<p></p></td>
						
				</tr>
				<tr>
					<td class="input-group" ><label for="phoneNum" class="input">연락처
					</label> <input type="tel" id="phoneNum" name="phoneNum" readonly/>
						<button type="button" onclick="changePhoneNum();">연락처 수정</button></td>
				</tr>

				<tr>
					<td class="input-group" id="email-zone"><label for="email" class="input">이메일</label>
						<input type="email" id="email"  name="email"  onkeyup="setTimeout(checkingEmail(),200)" readonly/>
						<button type="button" onclick="changeEmail();">이메일 수정</button>
						<p></p>
						</td>
				</tr>

				

				<tr>
					<td><button type="submit" name="transfer" id="trans"
							class="submitButton">개인정보 수정  완료</button></td>
				</tr>


			</table>
		</form>

	</section>
	<footer>
		<%@ include file="../common/footer.jsp"%>
	</footer>
	<script>
		$('input').click(function() {
			$(this).attr('placeholder', '');
			$(this).parent().find('label').addClass('label-top');
		});
		
		function changeNickName(){
			$('input[name=nickName]').removeAttr("readonly");
			$('#nickName-zone button').text("닉네임 중복 확인").attr("onclick","checkSameNickName();");
			
		}
		
		function changeName(){
			$('input[name=name]').removeAttr("readonly");
		}
		function changePassword(){
			$('input[name=password]').removeAttr("readonly");
			$('input[name=password2]').removeAttr("readonly");
		}
		function changePhoneNum(){
			$('input[name=phoneNum]').removeAttr("readonly");
		}
		function changeEmail(){
			$('input[name=email]').removeAttr("readonly");
			$('#email-zone button').text("이메일 인증").attr("onclick","checkCertifiedEmail();");
		}
	</script>
</body>
</html>