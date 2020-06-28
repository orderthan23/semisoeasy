<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="../../css/layout.css">
<!-- Bootstrap core CSS -->
<link href="/login/css/bootstrap.min.css" rel="stylesheet">

<!-- Custom styles for this template -->
<link href="/login/css/blog-post.css" rel="stylesheet">
<style>
.category {
	position: relative;
	left: 250px;
	top: 10px;
}

.btn {
	position: relative;
	right: 55px;
	background-color: #60B4A6;
	color: black;
}

.logo {
	position: relative;
	left: 55px;
}
</style>
<title>SO Easy</title>
</head>
<body>
	<header><%@ include file="../common/header.jsp"%></header>
	<nav><%@ include file="../common/aside.jsp"%></nav>
	<section>
		<h2 class="logo" style="text-align: left;">1대1문의(관리자)</h2>
		<a href="write.jsp" class="btn pull-right">글쓰기</a> <select
			class="category">
			<option class="category">계정관련</option>
			<option class="category">결제관련</option>
		</select>
		<div class="container">
			<div class="row">
				<table class="table table-striped"
					style="text-align: center border: 1px solid #dddddd">
					<thead>
						<tr>
							<th style="background-color: #60B4A6; text-align: center;">번호</th>
							<th style="background-color: #60B4A6; text-align: center;">분류</th>
							<th style="background-color: #60B4A6; text-align: center;">제목</th>
							<th style="background-color: #60B4A6; text-align: center;">작성자</th>
							<th style="background-color: #60B4A6; text-align: center;">작성일자</th>
							<th style="background-color: #60B4A6; text-align: center;">답변여부</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td style="text-align: center;">1</td>
							<td style="text-align: center;">계정관련</td>
							<td style="text-align: center;">궁금해용</td>
							<td style="text-align: center;">coding12</td>
							<td style="text-align: center;">2020-06-26</td>
							<td style="text-align: center;">X</td>
						</tr>
					</tbody>
				</table>
			</div>
		</div>
	</section>
	<%@ include file="../common/footer.jsp"%>
</body>
</html>