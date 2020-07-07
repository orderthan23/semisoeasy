<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<style>


#headerWrap input {
	height: 10%;
	display: inline;
}

.subMenu {
	
	display: inline-block;
	width: 120px;
	height: 60px;
	margin: 0 auto;
	
	align: center;
	font-size: 20px;
	font-weight: bold;
	float: right;
	
}
.subMenu a{
	
	text-decoration : none;
	color: black;
	text-align: center;
	display: inline;
	font-family: 'NanumSquare', sans-serif;
	
}

#logo {
	width: 58px;
	height: 58px;
	display: inline;
	float: left;
}


#searchBar {
	display: block;
	width: 480px;
	height: 100px;
	margin: 0 auto;
	margin-left: 10px;
	border: none;
	padding: 16px;
	text-align: center;
	font-size: 20px;
	font-family: 'NanumSquare', sans-serif;
}
#searchBar:focus {
	border-style: none;
	outline: none;
}



#searchOn {
	vertical-align: middle;
	background: none;
	outline: none;
	border: none;
	
}

#headerWrap form {
	display: inline-block;
	width: 550px;
	border-style: solid;
	border-width: 2px;
	border-radius: 10px;
	clear:both;
}

.sub:hover {
	font-size: 1.3em;
}

</style>
<body>
	<div id="headerWrap">
		<span class="subMenu"><br>
		<a href="/login/views/member/join.jsp" class="sub">회원가입</a></span> <span
			class="subMenu"><br>
		<a href="/login/views/member/loginForm.jsp" class="sub">로그인</a></span> <span
			class="subMenu"><br>
		<a href="/login/views/space/insertSpaceStep1.jsp" class="sub" align="center">공간 등록</a></span> <span class="subMenu"><br>
		<a href="/login/views/board/board.jsp" class="sub" align="center">공지 사항</a></span> &nbsp;&nbsp;
		<form action="" method="get">
			<input type="search" name="search" id="searchBar">
			 <button type="submit" id=searchOn src=""><img src="/login/images/icon/search.png" width="40px" height="40px"></button>	

		</form>
		<img src="/login/images/logo/logo1.png" alt="로고 사진" id="logo"
			onclick="location.href='/login/views/main/guestMain.jsp'">


	</div>


</body>