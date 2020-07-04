<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<!-- 합쳐지고 최소화된 최신 CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<!-- 부가적인 테마 -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
<!-- 합쳐지고 최소화된 최신 자바스크립트 -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
<style>
	.category{
		position : relative;
		left : 170px;
		top: 10px;
	}
	.btn{
		position :relative;
		right : 55px;
		background-color: #60B4A6;
		color:black;
	}
	.logo{
		position: relative;
		left : 55px;
	}
	.question{
		postion: relative;
		width: 1170px;
		height: 250px;
		/*background-color : #dddddd*/
		margin-top : -20px;
		outline-top:none;
		padding-left: 20px;
		resize:none;
		border : 1px solid #60B4A6
	}
	.answer{
		postion:relative;
		width: 1200px;
		margin-top : -5px;
		border : 1px solid #60B4A6
	}
	hr{
		margin-top : -20px;
	}
	
	
</style>
<meta charset="UTF-8">
<meta name="viewport" content="width-device-width" initial-scale="1"> 
<link rel="stylesheet" href="css/bootstrap.css">
<title>Insert title here</title>
</head>
<body>
	<header><%@ include file="../common/header.jsp"%></header>
	<nav><%@ include file="../common/aside.jsp"%></nav>
	<section>
	<h2 class ="logo" style= "text-align:left;">1대1문의(관리자)</h2>
	<a href="write.jsp" class="btn pull-right">글쓰기</a>
	<select class="category">
		<option class="category">계정관련</option>
		<option class="category">결제관련</option>
	</select>
	<div class="container">
		<div class="row">
			<table class="table table-striped" style="text-align:center	border: 1px solid #dk">
				<thead>
					<tr>
						<th style="background-color: #60B4A6; text-align:center;">번호</th>
						<th style="background-color: #60B4A6; text-align:center;">분류</th>
						<th style="background-color: #60B4A6; text-align:center;">제목</th>
						<th style="background-color: #60B4A6; text-align:center;">작성자</th>
						<th style="background-color: #60B4A6; text-align:center;">작성일자</th>
						<th style="background-color: #60B4A6; text-align:center;">답변여부</th>
					</tr>
					</thead>
					<tbody>
						<tr>
							<td style="text-align:center;">1</td>
							<td style="text-align:center;">계정관련</td>
							<td style="text-align:center;">이용했던 곳을 다시 이용하려는데 리스트에 보이지 않아요</td>
							<td style="text-align:center;">coding12</td>
							<td style="text-align:center;">2020-06-26</td>
							<td style="text-align:center;">X</td>
						</tr>
					</tbody>	
			</table>
							<hr style="border: solid 1px #60B4A6 ">
							<textArea class="question" readonly >제가 못 찾는 건지 잘 모르겠습니다만,상호명은 역삼동 혼자사무실이었던 것으로 기억합니다.
							</textArea>
							<textArea class="answer">
							</textArea>
		</div>
	</div>
		
	</section>
	<footer><%@ include file="../common/footer.jsp"%></footer>
	
</body>
</html>