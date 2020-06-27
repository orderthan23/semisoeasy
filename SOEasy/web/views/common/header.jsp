<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<style>
	#headerWrap input{
	  	height : 10%;
	  	width : 100%;
	}
	
	#logo{
		width :60px;
		height : 60px;
	
	}
	#searchBar{
		display:inline-block;
		width :560px;
		height : 65px;
		border-style : none;
		
		
	
	
	}
	#searchBar:focus{
		outline : none;
		top : 0;
	}
	
	#search{
		
		width: 600px;
		height: 60px;
		border-radius: 10px;
		border-style:solid;
		border-width:2px;
		border-color: black;
		display : inline-block;
		align : center;
		align-content: center;
		text-align: center; 
		position : absolute;
		top : 10px;
	
	}
	.subMenu{
		float: right;
		
		display: inline-block;
		width : 120px;
		height : 60px;
		marigin : 20px auto;
		align : center;
		font-size : 20px;
		font-weight : bold;
		align-content: center;
		text-align: center; 
		
		
		
		
		
		
	}
	
	
	.sub{
		text-decoration: none;
		color : black;
		text-align: center;
		font-family: 'NanumSquare', sans-serif;
		
		
	}
	.sub:hover{
		font-size:1.3em;
	}
	#dot{
		width: 40px;
		height: 40px;
		float: right;
		line-height: 10px;
			
		
	}
</style>

<body>
		<div id="headerWrap">
		<img src="../../images/logo/logo1.png" alt="로고 사진" id="logo">&nbsp;&nbsp;
		<div id="search">
		<input type = "text" name = "search" id="searchBar">
		<label>	<img src="../../images/icon/search.png" alt="돋보기" id="dot" ></label>
		</div>
			<span class="subMenu"><br><a href="../member/join.jsp" class="sub">회원가입</a></span>
			<span class="subMenu"><br><a href="../member/loginForm.jsp" class="sub">로그인</a></span>
			<span class="subMenu"><br><a href="#" class="sub" align="center">공간 등록</a></span>
			<span class="subMenu"><br><a href="#" class="sub" align="center">공지 사항</a></span>
		</div>
		
		
		
</body>
