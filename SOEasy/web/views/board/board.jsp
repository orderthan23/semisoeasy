<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<link rel="stylesheet" href="../../css/layout.css">
<!-- Bootstrap core CSS  -->
<link href="/login/css/bootstrap.min.css" rel="stylesheet">
<!-- Custom styles for this template -->
<link href="/login/css/blog-post.css" rel="stylesheet">
<style>
.category {
	position: relative;
	left: 80px;
	top: 10px;
}

.btn {
	position: relative;
	background-color: #60B4A6;
	left: 1132px;
	color: black;
	margin-bottom : -1px;
}

.logo {
	position: relative;
	left: 55px;
}
.answer {
    border: 1px solid #bcbcbc;
    padding: 500px;
      }
.info {
	text-decoration:none;

}
</style>
<title>SO Easy</title>
</head>
<body>
	<header><%@ include file="../common/header.jsp"%></header>
	<nav><%@ include file="../common/aside.jsp"%></nav>
	<section>
		<h2 class="logo" style="text-align: left;">1대1문의(관리자)</h2>
		<a href="writeboard.jsp" class="btn pull-right">글쓰기</a> 
		<select	class="category">
			<option class="category">계정관련</option>
			<option class="category">결제관련</option>
		</select>
		<div class="container">
			<div class="row">
				<table class="table table-striped"
					style="text-align: center border: 1px solid #dddddd">
					<thead>
						<tr>
							<th style="background-color: #60B4A6; color:white; text-align: center;">번호</th>
							<th style="background-color: #60B4A6; color:white; text-align: center;">분류</th>
							<th style="background-color: #60B4A6; color:white; text-align: center;">제목</th>
							<th style="background-color: #60B4A6; color:white; text-align: center;">작성자</th>
							<th style="background-color: #60B4A6; color:white; text-align: center;">작성일자</th>
							<th style="background-color: #60B4A6; color:white; text-align: center;">답변여부</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td class="info" style="text-align: center;">1</td>
							<td class="info" style="text-align: center;">계정관련</td>
							<td class="info" style="text-align: center;"><a href="writeboard.jsp">이용했던 곳을 다시 이용하려는데 리스트에 보이지 않아요</a></a></td>
							<td class="info" style="text-align: center;">coding12</td>
							<td class="info" style="text-align: center;">2020-06-26</td>
							<td class="info" style="text-align: center;">X</td>
						</tr>
					</tbody>
				</table>
			</div>	
		</div>
	</section>
	<%@ include file="../common/footer.jsp"%>
	<script>
	
	</script>
				
			
</body>
</html>