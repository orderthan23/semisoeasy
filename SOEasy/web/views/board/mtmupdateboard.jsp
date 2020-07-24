<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="com.kh.login.board.model.vo.Qna" %>
<% Qna qna = (Qna) request.getAttribute("qna"); %>


<!DOCTYPE html>
<html>
<head>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<link rel="stylesheet" href="/login/css/layout.css">
​
<style>
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
  clear : both;
  
}
#boardTable{
	border : solid 2px #60B4A6;
}
#boardTable tr th{
  background: #60B4A6;
  color: white;
  text-align: center;
​
}
#boardTable tr{
	height : 50px;
	border-bottom : solid 1px #60B4A6;
}
​
#boardTable tr textarea{
	border: none;
	height: 200px;
	resize: none;
	font-size: 15px;
	background: transparent;
	
}
​
.answerButtons{
	float: right;
	background : #60B4A6;
	font-size: 25px;
	font-weight : bolder;
	border-radius: 5px;
	height : 50px;
	margin-left : 10px;
	border : none;
}
.answerButtons:hover{
​
	color : white;
}
.answerButtons:focus{
	outline : none;
	color : white;
}
.aTitle{
	font-size: 25px;
	font-weight: bolder;
}
​
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
​
}
#searchWrap tr td button:focus{
	outline: none;
}
</style>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<header><%@ include file="../common/header.jsp"%></header>
	<nav><%@ include file="../common/aside.jsp"%></nav>
	<section>
	<div id="wrapper">
       
		<h2 class="logo" style="margin:0; font-size:30px; font-weight:bolder">1대1문의</h2>
		
		<br>
		<table id="searchWrap" height="25px">
			<tr>
			</tr>
		</table>
		<a href="writeboard.jsp" class="writeButton">글쓰기</a> 
		<br>
			<form method="post"  id="updateMtM"  name="updateMtm">
				<input type="hidden" name="id" value="<%=loginUser.getmId()%>">
				<table style = "width: 100%; border-collapse: collapse; " id="boardTable">
						<tr>
							<th>번호</th>
							<th>분류</th>
							<th>제목</th>
							<th>작성자</th>
							<th>작성일자</th>
							<th>답변여부</th>
						</tr>
						<tr style="border-bottom: solid 1px  #60B4A6;">
							<td class="info" style="text-align: center;"><%=qna.getQno() %></td>
							<td class="info" style="text-align: center;"><%=qna.getQkind() %></td>
							<td class="info" style="text-align: center;"><%=qna.getQtitle() %></td>
							<td class="info" style="text-align: center;"><%=qna.getqMnick() %></td>
							<td class="info" style="text-align: center;"><%=qna.getQdate() %></td>
							<td class="info" style="text-align: center;"></td>
						</tr>
						<tr> 
							<td colspan="6">
								<div style="width:94%; margin-left:auto; margin-right:auto; margin-top:20px;">
									<label class="aTitle">질문</label>
									<hr>
									<textArea style="width:100%; resize:none; border:none; color:gray;" class="question" readonly class="QandA"><%=qna.getQcontent()%></textArea>
								</div>
							</td>
						</tr>
				
						<tr>	
							<td colspan="6" >
								<div style="width:94%; margin-left:auto; margin-right:auto; margin-top:20px;">
									<p class="aTitle">답변 &nbsp; <label style=" float:right; font-size : 15px; font-weight:bolder; "><%= qna.getRdate() %></label></p>
									<hr>
									<textArea name="rcontent"style="width:100%; resize:none; border:none;" class="answer" class="QandA" ><%= qna.getRcontent() %></textArea>
									<div style="float:right;">
									<%if(loginUser != null && loginUser.getMemberNo() ==1 ) { %>
									<button type="button" onclick="done();" class="startBtn">답변완료</button>
									<% } %>
									</div>
								</div>
							</td>
						</tr>
				</table>
	</form>
	</div>
	</section>
	<br><br>
	<footer><%@ include file="../common/footer.jsp"%></footer>
	
	<script>

		function done(){
			$("#updateMtM").attr("action", "<%=request.getContextPath()%>/updateBoard.mm");
		};
		
	</script>
	
</body>
</html>