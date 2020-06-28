<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

<link rel="stylesheet" type="text/css"
	href="https://cdn.jsdelivr.net/gh/moonspam/NanumSquare@1.0/nanumsquare.css">
<link rel="stylesheet" href="../../css/layout.css">

<title>SO Easy</title>
<style>
#joinTable {
	margin: 0 auto;
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
					<td class="input-group"><label for="id" class="input">아이디</label>
						<input type="text" id="id" placeholder="아이디" />
						<button>아이디 중복 확인</button></td>
				</tr>

				<tr>
					<td class="input-group"><label for="nickName" class="input">닉네임
					</label> <input type="text" id="nickName" placeholder="닉네임" />
						<button>닉네임 중복 확인</button></td>
				</tr>

				<tr>
					<td class="input-group"><label for="name" class="input">이름</label>
						<input type="text" id="name" placeholder="이름" /></td>
				</tr>


				<tr>
					<td class="input-group"><label for="password" class="input">비밀번호</label>
						<input type="password" id="password" placeholder="비밀번호" /></td>
				</tr>

				<tr>
					<td class="input-group"><label for="password02" class="input">비밀번호
							확인</label> <input type="password" id="password2" placeholder="비밀번호 확인" />
					</td>
				</tr>

				<tr>
					<td class="input-group"><label for="phoneNum" class="input">연락처
					</label> <input type="tel" id="phoneNum" placeholder="연락처" />
						<button>본인 인증</button></td>
				</tr>

				<tr>
					<td class="input-group"><label for="email" class="input">이메일</label>
						<input type="email" id="email" placeholder="이메일" />
						<button>이메일 인증</button></td>
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
					<td><button type="submit" name="transfer" id="trans"
							class="submitButton">회원 가입 완료</button></td>
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