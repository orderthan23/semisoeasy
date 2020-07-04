
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="../../css/layout.css">
<!-- Bootstrap core CSS -->
<link href="/login/css/bootstrap.min.css" rel="stylesheet">

<!-- Custom styles for this template  -->
<link href="/login/css/blog-post.css" rel="stylesheet">
<style>
</style>

<title>SO Easy</title>
</head>
<body>
	<header><%@ include file="../common/header.jsp"%></header>
	<nav><%@ include file="../common/aside.jsp"%></nav>

	<section>
	<h2 style="text-align: left; margin: 0 auto">공지사항페이지에요</h2>
		<div class="container">
			<div class="row">
				<form action="writeAction.jsp" method="post">
					>
					<table class="table table-striped"
						style="text-align: center border: 1px solid #dddddd">
						<thead>
							<tr>
								<th colspan="2"
									style="background-color: #eeeeee; text-align: center;">게시판
									글쓰기 양식</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td><input type="text" class="form-control"
									placeholder="글 제목" name="bbsTitle" maxlength="50"></td>
							<tr>
								<td><select name="category">
										<option value="user">계정문의</option>
										<option value="cash">결제문의</option>
								</select></td>
							</tr>

							<tr>
								<td><textarea class="form-control" placeholder="글 내용"
										name="bbsContent" maxlength="2048" style="height: 350px;"></textarea>
							</tr>
						</tbody>
					</table>
					<input type="submit" class="btn btn-primary pull-right" value="글쓰기">
				</form>
			</div>
		</div>
	</section>
	<footer><%@ include file="../common/footer.jsp"%></footer>

</body>
</html>