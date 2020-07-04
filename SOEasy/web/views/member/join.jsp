<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>


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

input:focus {
	outline: none;
	border-bottom-width: 4px;
	border-color: #3DB6AE;
	transition: 0.5s;
}

.input {
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
	/* 	height: 20px;
	opacity : 1;
	visibility : visible; */
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
</style>
</head>
<body>
	<header>
		<%@ include file="../common/header.jsp"%>

	</header>

	<nav></nav>
	<section>




		<form action="" method="post" id="joinForm">
			<table id="joinTable" align="center">
				<tr>
					<td><h1 align="center">회원가입</h1>
					<td>
				</tr>
				<tr>
					<td class="input-group" id="id-zone"><label for="id" class="input">아이디</label>
						<input type="text" id="userId" placeholder="아이디" onkeyup="setTimeout(checkingId(),200);"/>
						<button type="button" onclick="checkSameId();">아이디 중복 확인</button>
						<p></p>
						</td>
				</tr>

				<tr>
					<td class="input-group" id="nickName-zone"><label for="nickName" class="input">닉네임
					</label> <input type="text" id="nickName" placeholder="닉네임" onkeyup="setTimeout(checkingNickName(),200)" />
						<button type="button" onclick="checkSameNickName();">닉네임 중복 확인</button>
						<p></p>
						</td>
						
				</tr>

				<tr>
					<td class="input-group"><label for="name" class="input">이름</label>
						<input type="text" id="name" placeholder="이름" /></td>
				</tr>


				<tr>
					<td class="input-group" id="password-zone">
						<pre id="validate1">                                               0/16자</pre>
						<label for="password" class="input" >비밀번호</label>
						<input type="password" id="password" placeholder="비밀번호" onkeyup="setTimeout(checkPwdLength(),200);" />
						<p></p>
					</td>
				</tr>

				<tr>
					<td class="input-group" id="password2-zone">
					<label for="password02" class="input">비밀번호 확인</label>
					 <input type="password" id="password2" placeholder="비밀번호 확인" onkeyup="setTimeout(checkPwdSame(),200);" />
							<p></p>
					</td>
				</tr>

				<tr>
					<td class="input-group"><label for="phoneNum" class="input">연락처
					</label> <input type="tel" id="phoneNum" placeholder="연락처" />
						<button>본인 인증</button></td>
				</tr>

				<tr>
					<td class="input-group" id="email-zone"><label for="email" class="input">이메일</label>
						<input type="email" id="email" placeholder="이메일" onkeyup="setTimeout(checkingEmail(),200)" />
						<button type="button" onclick="checkCertifiedEmail();">이메일 인증</button>
						<p></p>
						</td>
						
				</tr>

				<tr class="checkRule">
					<td><input type="checkbox" name="rule" id="rule1" value="이용약관"><label
						for="rule1" class="check">이용약관 동의</label></td>
				</tr>
				<tr class="checkRule">

					<td class="checkbox"><input type="checkbox" name="rule"
						id="rule2" value="이용약관동의"><label for="rule2" class="check">개인정보지침
							동의</label></td>
				</tr>
				<tr class="checkRule">
					<td><input type="checkbox" name="rule" id="rule3" value="모두"><label
						for="rule3" class="check">모두 동의</label></td>
				</tr>

				<tr>
					<td><button type="button" name="transfer" id="trans"
							class="submitButton" onclick="checkAll();">회원 가입 완료</button></td>
				</tr>


			</table>
		</form>

	</section>
	<footer>
		<%@ include file="../common/footer.jsp"%>
	</footer>
	<script>
		//디자인  메소드
		$('input').click(function() {
			$(this).attr('placeholder', '');
			$(this).parent().find('label').addClass('label-top');
		});
		
		//아이디 체크 메소드
			//아이디 유효성 검사 변수
			var nowId= ""; //중복 체크 후 저장할 아이디	
			var canDuplicateIdCheck; //중복여부를 실행할 만한 조건이 되는지 체크
			var $userId // 유저 아이디
			var checkId = false; //유저아이디 중복 체크 여부
			var getUserId = RegExp(/^[a-zA-Z]+[a-zA-Z0-9]{4,14}$/); // 유저 아이디 유효성 검사
			function checkingId(){
			    checkId = false;
				canDuplicateIdCheck = false;
				$userId = $("#userId").val();
				
				if(!getUserId.test($userId)){
					$('#id-zone p').text("아이디는 영문자로 시작하고, 5~15자 영문자 또는 숫자를 입력해주세요.").css("color","red");
				}
					
				else{
					if(checkId === false || nowId !== $userId){
					
				 	$('#id-zone p').text("중복 체크가 필요합니다").css("color","red");
				 	canDuplicateIdCheck = true;
					}
				}
			}
			//아이디 중복 체크 메소드
			function checkSameId(){
				if(canDuplicateIdCheck==false){
					alert("사용 불가능 한 아이디입니다 조건을 다시 확인하세요");
				}else{
				checkId = true;
				alert("사용가능한 아이디 입니다!");
				nowId = $userId;
				$('#id-zone p').text("중복 체크 완료").css("color","green");
				}
			}
		
		//닉네임 유효성 검사 변수
		var nowNick= ""; //중복 체크 후 저장할 닉네임	
		var canDuplicateNickCheck; //중복여부를 실행할 만한 조건이 되는지 체크
		var $nickName; // 유저 닉네임
		var checkNickName = false;//닉네임 중복 체크 했는지 여부
		var getUserNickName = RegExp(/^[a-zA-Z가-힣0-9]{3,8}$/); // 유저 닉네임 유효성 검사
		
		
			function checkingNickName(){
				canDuplicateNickCheck = false;
				checkNickName = false;
				$nickName = $("#nickName").val();
				
				if(!getUserNickName.test($nickName)){
					$('#nickName-zone p').text("3~8자 길이의 영어,한국어,숫자로 입력해주세요.").css("color","red");
				}
					
				else{
					if(checkNickName === false || nowNick !== $nickName){
					
				 	$('#nickName-zone p').text("중복 체크가 필요합니다").css("color","red");
				 	canDuplicateNickCheck = true;
					}
				}
			}
			function checkSameNickName(){
				if(canDuplicateNickCheck==false){
					alert("사용 불가능한 닉네임입니다 조건을 다시 확인하세요");
				}else{
				checkNickName = true;
				alert("사용가능한 닉네임 입니다!");
				nowNickName = $nickName;
				$('#nickName-zone p').text("중복 체크 완료").css("color","green");
				}
			
			}
		
		//비밀번호 유효성 검사
		var checkpw;
		function checkPwdLength(){
			//비밀번호 유효성 검사 변수들
			var pw = $('#password').val(); //현재 입력 값
			var maxLength = 16; //비밀번호로 가능한 최대 길이
			var length = pw.length; //현재 입력 값의 길이
			var num = pw.search(/[0-9]/g); //숫자 포함여부
		    var eng = pw.search(/[a-z]/ig); //영어 포함여부
			var spe = pw.search(/[`~!@@#$%^&*|₩₩₩'₩";:₩/?`]/gi); //특수문자 포함 여부
			 checkpw = false; //비밀번호 유효성 통과 여부
		
			 $('#validate1').text("                                               "+(length)+"/"+maxLength+"자");
			 if(length<8){
				 $('#password-zone p').text("비밀번호 길이가 짧습니다, 8~16자 영문 대 소문자, 숫자, 특수문자를 사용하세요.").css("color","red");
				
			 }else if(length>=8 && length<17){
				 if(pw.search(/\s/) != -1){
					 $('#password-zone p').text("비밀번호에 공백은 포함될 수 없습니다.").css("color","red");
				 }else{
					 if(num < 0 || eng < 0 || spe < 0){
						 $('#password-zone p').text(" 8~16자 영문 대 소문자, 숫자, 특수문자를 사용하세요.").css("color","red");
					 }else{
							 $('#password-zone p').text("유효한 비밀번호 길이입니다.").css("color","green");
							 checkpw = true;
					 }
				 }
				
			 }else if(length>=17){
				 $('#password-zone p').text("길이를 초과했습니다, 8~16자 영문 대 소문자, 숫자, 특수문자를 사용하세요.").css("color","red");
			 }
			 console.log(checkpw);
		}
		
		//비밀번호 확인과 비밀번호 가 일치한지 확인하는 메소드
		var checkpw2;
		function checkPwdSame(){
			var pw = $('#password').val(); // 기존 입력한 비밀번호
			var pw2 = $("#password2").val(); //비밀번호 확인에 입력한 비밀번호
			checkpw2 = false //비밀번호 확인 통과 여부
			if(pw === pw2){
				$('#password2-zone p').text("비밀번호가 동일 합니다.").css("color","green");
				checkpw2 = true;
			}else{
				$('#password2-zone p').text("비밀번호가 다릅니다").css("color","red");
				
			}
			
		}
		
		//이메일 유효성 검사 변수
		var nowEmail= ""; //중복 체크 후 저장할 이메일	
		var canCertifiedEamil; //이메일 인증을 실행할 만한 조건이 되는지 체크
		var $email; // 유저 이메일
		var checkEmail = false;//이메일 인증 체크 했는지 여부
		var getEmail = RegExp(/^[a-z0-9_+.-]+@([a-z0-9-]+\.)+[a-z0-9]{2,4}$/); // 유저 이메일 유효성 검사

		
			function checkingEmail(){
			    checkEmail = false;
				canCertifiedEmail = false
				$email = $("#email").val();
				
				if(!getEmail.test($email)){
					$('#email-zone p').text("이메일 형식에 맞게 입력해주세요.").css("color","red");
				}
					
				else{
					if(checkEmail === false || nowEmail !== $email){
					
				 	$('#email-zone p').text("이메일 인증이 필요합니다.").css("color","red");
				 	canCertifiedEmail = true;
					}
				}
			}
			function checkCertifiedEmail(){
				if(canCertifiedEmail==false){
					alert("이메일 형식에 맞게 입력해주세요.");
				}else{
				checkEmail = true;
				alert("이메일 인증이  완료되었습니다!");
				nowEmail = $email;
				$('#email-zone p').text("이메일 인증 완료").css("color","green");
				}
			
			}
			
			//전체 한번 체크 여부
			function checkAll(){
				if(checkId === false){
					alert("아이디를 확인하세요!");
					return;
				}
				
				if(checkNickName === false){
					alert("닉네임을 확인하세요!");
					return;
				}
				
				if(checkpw=== false || checkpw2 === false){
					alert("비밀번호를 확인하세요!");
					return;
				}
				
				if(checkEmail === false){
					alert("이메일을 확인하세요!");
					return;
				}
				console.log($('#rule1').is(":checked"));
				if(($('#rule1').is(":checked")===false || $('#rule2').is(":checked")===false)){
					alert("필수 약관에 동의해주세요!");
					return;
				}
				
				$(this).attr("action","#").submit();
					
			}
		
		
		
		//모두 동의  클릭시 모두 동의 되는 메소드
		$(function() { //전체선택 체크박스 클릭 
			$("#rule3").click(function() {
				//만약 전체 선택 체크박스가 체크된상태일경우
				if ($("#rule3").prop("checked")) {
					//해당화면에 전체 checkbox들을 체크해준다
					$("input[type=checkbox]").prop("checked", true);
					// 전체선택 체크박스가 해제된 경우 
				} else {
					//해당화면에 모든 checkbox들의 체크를해제시킨다.
					$("input[type=checkbox]").prop("checked", false);
				}
			})
		});
	</script>
</body>
</html>