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
	left: 135px;
	top: 10px;
	visibility:hidden;
}

.btn {
	position: relative;
	background-color: #60B4A6;
	left: 1132px;
	color: black;
	margin-bottom : -1px;
	margin-left : -20px;
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
.search{
	position:relative;
	margin-left: 62px;
	margin-bottom : 30px;
	width: 500px;
	height: 50px;
	outline:none;
	border: 2px solid #60B4A6;
	align:right;
}
.logo{
	color:#60B4A6
	
}
input:focus {outline:none;}

div > img {
	float : right;
}
div > input {
 	position : relative;
	top : 10px;
	width: 400px;

}
	.select-space{
		position:relative;
		text-align: center;
		width: 300px;
		height: 40px;
		top: -5px;
		display: inline-block;
		border: 1px solid black;
		border-radius: 10px;
		cursor: pointer;
		margin: 20px;
		margin-top : 30px;
	}
	.select-space:hover{
		background-color : #60B4A6;
	}
</style>
<title>SO Easy</title>
</head>
<body>
	<header><%@ include file="../common/header.jsp"%></header>
	<nav><%@ include file="../common/aside.jsp"%></nav>
	<section>
		<h2 class="logo" style="text-align: left;">자주 묻는 게시판(관리자)</h2>
		<div class="search" width:"40%" >
			<input type="text" placeholder="검색어를 입력해주세요" style=border:none;>
			<img id="searchImg"src = "/login/images/icon/search2.png">
		</div>
		<a href="adminInsertFAQ.jsp" class="btn pull-right">FQA 등록</a> 
		<span class="select-space" id="notice">1대1문의</span>
		<span class="select-space" id="faq">자주묻는게시판</span>
		<span class="select-space" id="notice">공지사항</span>
		<select	class="category" >
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
							<th style="background-color: #60B4A6; color:white; text-align: center;"></th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td class="info" style="text-align: center;">1</td>
							<td class="info" style="text-align: center;">계정관련</td>
							<td class="info" style="text-align: center;"><a href="writeboard.jsp">아이디 찾기는 어떻게 해야하나요?</a></a></td>
							<td class="info" style="text-align: center;">관리자</td>
							<td class="info" style="text-align: center;">2020-06-26</td>
							<td class="info" style="text-align: center;"></td>
						</tr>
					</tbody>
				</table>
			</div>	
		</div>
	</section>
	<%@ include file="../common/footer.jsp"%>
	<script>
				$("#notice").click(function(){
					location.href="board.jsp";
				});
	</script>
				
	
</body>
</html>