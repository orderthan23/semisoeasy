<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>


<style>
#footerWrap {
	position: relative;
	background: #C4C4C4;
	width: 100%;
	display: inline-block;
	font-family: 'NanumSquare', sans-serif;
	clear:both;
}

#textArea{
	width: 40%;
	align : center;
	
}

#copyRight {
	text-align: center;
	font-size: 15px;
}

#footerLogo {
	position: absolute;
	left: 1300px;
	top: 50px;
}

.rules {
	position: absolute;
	display: inline;
	top: 120px;
	
}

.rules a {
	text-decoration: none;
	color: black;
}

.rules:nth-child(1) {
	left: 1270px;
}

.rules:nth-child(2) {
	left: 1370px;
}

.rules:nth-child(3) {
	left: 1500px;
}
</style>
</head>
<body>
	<div id="footerWrap">
		<div id="textArea">
		<br>상호명: SO Easy | 대표: 김진호 | 사업자등록번호 : 851-87-00622 | 서울 강남
		제2014-01호<br> 사업자등록정보 영업소재지: 서울특별시 강남구 테헤란로14길 6 남도빌딩 2F<br>
		이메일: programmer7771@gmail.com 대표전화: 7447-0547(평일 오후 3시30분 ~ 오후 10시) <br>
		온라인 1:1 문의 바로가기(평일 오후 3시30분 ~ 오후 10시) * 공간에 대한 문의사항은 해당 공간 호스트에게 직접
		문의해주세요.<br>
		<br> SO Easy 는 통신판매중개자이며 통신판매의 당사자가 아닙니다. 따라서 SO Easy는 공간 거래정보 및
		거래에 대해 책임지지 않습니다.
		</div>


		<p id="copyRight">Copyright © 2020- SO Easy All Right Reserved</p>
		<ul>
			<li class="rules"><a href="/login/views/common/rule1.jsp">이용약관</a></li>
			<li class="rules"><a href="/login/views/common/rule2.jsp">개인정보지침</a></li>
			<li class="rules"><a href="#">운영정책</a></li>
		</ul>
		<label id="footerLogo"><img src="/login/images/logo/logo2.png"
			alt="로고"> </label>

	</div>





</body>
</html>