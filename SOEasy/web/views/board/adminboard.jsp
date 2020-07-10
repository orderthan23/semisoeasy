<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<link rel="stylesheet" href="../../css/layout.css">
​
<style>
​
#wrapper{
  width: 80%;
  margin-left: auto;
  margin-right: auto;
​
}
.writeButton{
  text-decoration: none;
  color : black;
  float: right;
  background : #60B4A6;
  border-radius: 10px;
  padding : 10px;
}
#boardTable tr th{

  background:#60B4A6;
  color: white;
  text-align: center;
​
}
#boardTable tr{
	height : 50px;
}
#searchWrap{
	
	width: 30%;
	border: solid 1px #60B4A6;
	border-radius: 30px;
	
}
#searchWrap tr td input{
	display: inline-block;
	border: none;
	background: transparent;
	width: 100%;
	height: 100%;
}
#searchWrap tr td input:focus{
	outline: none;
}
#searchWrap tr td button{
	background : transparent;
	border: none;
	float: right;
}
#searchWrap tr td button:focus{
	outline: none;
}
​#th{
	border : 1px solid #60B4A6;
}
</style>
<title>SO Easy</title>
</head>
<body>
	 <header><%@ include file="../common/header.jsp"%></header>
	<nav><%@ include file="../common/aside.jsp"%></nav> 
	<section>
    <div id="wrapper">
		<h2 class="logo" style="margin:0; font-size:30px; font-weight:bolder">공지사항</h2>
		<a href="writeboard.jsp" class="writeButton">글쓰기</a> 
		<table id="searchWrap" text-align="center" align="center">
			<tr>
			<td colspan="6"><input type=search placeholder="검색어를 입력하세요">	</td>
			<td><button type="submit" ><img src="/login/images/icon/search2.png" width="25px" height="25px"></button>
			</tr>
		</table>
		<br>
		<div style="width:90%; margin-left:auto; margin-right:auto;">
		
		</div>
​
			<table style="width: 100%; border-collapse: collapse;"
				id="boardTable">
				<tr>
				<td align="center">
			<select class="category">
				<option class="category">계정관련</option>
				<option class="category">결제관련</option>
			</select>
				</td>
		<td colspan="4"></td>
		<td align="center"><select class="OX" style="">
			<option class="OX">선택</option>
			<option class="OX">O</option>
			<option class="OX">X</option>
		</select></td>	
				</tr>
				<tr>
					<th>번호</th>
					<th>분류</th>
					<th>제목</th>
					<th>작성자</th>
					<th>작성일자</th>
					<th>답변여부</th>
				</tr>
				<tr>
					<td class="info" style="text-align: center;">1</td>
					<td class="info" style="text-align: center;">계정관련</td>
					<td class="info" style="text-align: center;">
						<a href="writeboard.jsp" style="text-decoration: none; color: black;">이용했던 곳을 다시 이용하려는데 리스트에 보이지 않아요</a>
					</td>
					<td class="info" style="text-align: center;">coding12</td>
					<td class="info" style="text-align: center;">2020-06-26</td>
					<td class="info" style="text-align: center;">X</td>
				</tr>
			</table>
​
		</div>
	</section>
	 <%@ include file="../common/footer.jsp"%> 
	<script>
	</script>
				
			
​
​
	
				
			
</body>
</html>