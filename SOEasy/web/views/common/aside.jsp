<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<style>
/* Hamburger button styles. */
.hamburger-button {
	position: relative;
	transition: .3s ease-in-out;
	width: 45px;
	height: 34px;
	display: block;
}

.hamburger-button span {
	position: absolute;
	height: 8px;
	border-radius: 4px;
	width: 100%;
	background-color: #3D4146;
	top: 0;
	transition: transform .2s ease-in-out, opacity .2s ease-in-out;
}
/*  */
.hamburger-button span:nth-child(1) {
	top: 15px;
}

.hamburger-button span:nth-child(2), .hamburger-button span:nth-child(3)
	{
	top: 28px;
}

.hamburger-button span:nth-child(4) {
	top: 41px;
}

.hamburger-button.active span {
	background-color: black;
}

.hamburger-button.active span:nth-child(1), .hamburger-button.active span:nth-child(4)
	{
	opacity: 0;
}

.hamburger-button.active span:nth-child(2) {
	transform: rotate(45deg);
}

.hamburger-button.active span:nth-child(3) {
	transform: rotate(-45deg);
}

.overlay {
	position: fixed;
	background: #3DB6AE;
	width: 20%;
	height: 0%;
	opacity: 0;
	visibility: hidden;
	display: flex;
	justify-content: center;
	align-items: center;
	transition: 0.3s;
}

aside ul {
	list-style: none;
	padding: 0;
	margin: 0;
}

aside ul li {
	margin: 1rem 0;
	opacity: 0;
}

aside ul li a {
	text-decoration: none;
	color: black;
	font-weight: bold;
	font-size: 20px;
	font-family: 'NanumSquare', sans-serif;
	opacity: 0.90;
	transition: opacity 0.2s ease;
}

aside ul li a :hover {
	opacity: 1;
}

@keyframes fadeInLeft{
    0%{opacity : 0; transform : translateY(-25%);}
    100%{opacity : 1; transform: translateY(0);}
  }



.overlay.visible {
	height: 100%;
	opacity: .85;
	visibility: visible;
}

.overlay.overlay.visible aside ul li {
	animation: fadeInLeft 0.3s ease forwards;
}

#hamburger-box {
	background: #3DB6AE;
	display: inline-block;
	width: 90px;
	height: 66px;
}

.subtitle {
	font-size: 30px;
	font-weight: bolder;
}

.grade {
	color: white;
	font-size: 15px;
	text-align: center;
}

.userName {
	color: white;
	font-size: 20px;
	text-align: center;
}

.profile {
	margin: 0.5rem auto;
}

aside ul li a img {
	float: right;
}

/* #menu {
	position: relative;
	top: -15px;
	left : 20px;
} */

/* #menu a {
	font-weight: bolder;
	margin-left : 50px;
	font-size: 18px;
}

#menu a:first-child {
	font-size: 40px;
	margin-left: 60px;
} */
</style>
<title>Document</title>
</head>
<body>
	<div id="hamburger-box">

		<a href="#" class="hamburger-button" align="center"> <span></span>
			<span></span> <span></span> <span></span>
		</a>

	</div>
	<div style="display: inline-block;" id="menu">
		<a>개인정보 관리</a>&nbsp;&nbsp; <a>개인정보 수정</a> <a>프로필 사진 변경</a> <a>회원
			탈퇴</a> <a></a>

	</div>
	<hr width="100%" style="margin: 0 auto">

	<div class="overlay">
		<aside class="menu">
			<ul>
				<li class="profile" align="center"><img
					src="../../images/etc/hazard.png" alt="프로필" width="110px"
					height="110px"></li>
				<li class="profile"><p class="userName">흑당마라민트초코</p></li>
				<li class="profile"><p class="grade">host</p></li>
				<hr>
				<li><p class="subtitle">예약 목록</p></li>
				<li><a href="#">이용 내역 리스트<img
						src="../../images/etc/arrow.png" alt="화살표">
				</a></li>
				<li><a href="#">찜 리스트 <img src="../../images/etc/arrow.png"
						alt="화살표"></a></li>
				<li><a href="#">리뷰 목록<img src="../../images/etc/arrow.png"
						alt="화살표"></a></li>
				<hr>
				<li><p class="subtitle">내 공간 관리</p></li>
				<li><a href="#">예약 일정관리<img
						src="../../images/etc/arrow.png" alt="화살표"></a></li>
				<li><a href="#">공간 정보 수정<img
						src="../../images/etc/arrow.png" alt="화살표"></a></li>
				<li><a href="#">공간 정산<img src="../../images/etc/arrow.png"
						alt="화살표"></a></li>
				<hr>
				<li><a href="#">개인 정보 관리<img
						src="../../images/etc/arrow.png" alt="화살표"></a></li>
				<li><a href="#">공지 사항<img src="../../images/etc/arrow.png"
						alt="화살표"></a></li>

			</ul>
		</aside>
	</div>
	<script>
        $(function() {
	$('.hamburger-button').on('click', function(event){
		event.preventDefault();
		
		$(this).toggleClass('active');
        $('.overlay').toggleClass('visible');
       

	});
});
    
    </script>
</body>
</html>