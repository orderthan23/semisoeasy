<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" %>

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
	
	width: 40%;
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
.logo{
	color:#60B4A6
}
</style>
<title>SO Easy</title>
</head>
<body>
	 <header><%@ include file="../common/header.jsp"%></header>
	<nav><%@ include file="../common/aside.jsp"%>
	<div class="colMenu">
		<a class="colMenuButton" href="/login/views/board/board.jsp">공지사항</a>
		<a class="colMenuButton selectedButton"" href="/login/views/board/faqboard.jsp">자주 묻는 질문</a>
		<a class="colMenuButton" href="/login/views/board/mtmboard.jsp">1대1문의</a>
	<br><br>
	</div>
	<hr style="margin : 0">
	 <br>
	</nav>
	
	<section>
    <div id="wrapper">
		<h2 class="logo" style="margin:0; font-size:30px; font-weight:bolder">자주 묻는 질문</h2>
		<a href="writeboard.jsp" id="writeButton" class="writeButton">글쓰기</a> 
		<table id="searchWrap" text-align="center" align="center">
			<tr>
			<td><input type=search placeholder="검색어를 입력하세요"></td>
			<td><button type="submit"><img src="/login/images/icon/search2.png" width="25px" height="25px"></button>
			</tr>
		</table>
		<br>
		<div style="width:90%; margin-left:auto; margin-right:auto;">
		</div>
		<table style="width: 100%; border-collapse: collapse;"id="boardTable">
		<tr>
			<td colspan="1"></td>
			<td align="center" style=>
				<select class="category">
					<option class="category" style="text-align:center">선택</option>
					<option class="category">시스템관련</option>
					<option class="category">계정관련</option>
					<option class="category">결제관련</option>
					<option class="category"></option>
				</select>
			</td>
			<td colspan="3"></td>
				<td align="center">
				</td>	
		</tr>
				<tr>
					<th>번호</th>
					<th>분류</th>
					<th>제목</th>
					<th>작성자</th>
					<th>작성일자</th>
					<th></th>
				</tr>
				<tr>
					<td class="info" style="text-align: center;">1</td>
					<td class="info" style="text-align: center;">결제관련</td>
					<td class="info" style="text-align: center;">
						<a href="faqdetailboard.jsp" style="text-decoration: none; color: black;">게스트로 가입을 했는데 호스트가 되고 싶습니다</a>
					</td>
					<td class="info" style="text-align: center;">관리자</td>
					<td class="info" style="text-align: center;">2020-06-26</td>
					<td class="info" style="text-align: center;">	</td>
				</tr>
			</table>
		</div>
	</section>
	 <%@ include file="../common/footer.jsp"%> 
	<!-- <script> -->
	<%-- var userStatus = <%=userStatus%>; --%>
		<!-- $(function(){
			switch(userStatus){
			case 1: 
			case 2: $('#writeButton').hide(); break;

			case 3:	$('#writeButton').show(); break;
			default : break;
			}
			
		}); -->
		
		<!-- </script> -->
​
​
	
				
			
</body>
</html>