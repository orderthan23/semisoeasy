<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<link rel="stylesheet" href="../../css/layout.css">
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
       
		<h2 class="logo" style="margin:0; font-size:30px; font-weight:bolder">공지사항</h2>
		
		<br>
		<table id="searchWrap" height="25px">
			<tr>
			</tr>
		</table>
		<a href="board.jsp" class="writeButton">이전으로</a> 
		<br>	
				<table style = "width: 100%; border-collapse: collapse; " id="boardTable">
						<tr>
							<th>번호</th>
							<th>분류</th>
							<th>제목</th>
							<th>작성자</th>
							<th>작성일자</th>
							<th></th>
						</tr>
				
					
						<tr style="border-bottom: solid 1px  #60B4A6;">
							<td class="info" style="text-align: center;">1</td>
							<td class="info" style="text-align: center;">계정관련</td>
							<td class="info" style="text-align: center;"><a href="writeboard.jsp" style="text-decoration:none; color:black;">[점검] 시스템 점검 안내입니다.</a></td>
							<td class="info" style="text-align: center;">coding12</td>
							<td class="info" style="text-align: center;">2020-06-26</td>
						</tr>
						<tr> 
							<td colspan="6">
								<div style="width:94%; margin-left:auto; margin-right:auto; margin-top:20px;">
									<textArea style="width:100%; resize:none; border:none; color:gray;" class="question" readonly class="QandA" ;>제가 못 찾는 건지 잘 모르겠습니다만,상호명은 역삼동 혼자사무실이었던 것으로 기억합니다.</textArea>
								</div>
							</td>
						</tr>
						<tr>	
							<td colspan="6" >
									<div style="float:right;">
									<button type="button" onclick="restart();" class="restartBtn">수정</button>
									<button type="button" onclick="delete();" class="deleteBtn">삭제</button>
									</div>
							</td>
						</tr>
				</table>
	</div>
	</section>
	<br><br>
	<footer><%@ include file="../common/footer.jsp"%></footer>
	<script>
	 var userStatus = <%=userStatus%>;
		 $(function(){
			switch(userStatus){
			case 1: if(userStatus === "admin")
			case 2: $('.restartBtn').hide()
					$('.deleteBtn').hide(); break;
			case 3:	$('.restartBtn').hide();
					$('.deleteBtn').hide();  break;
			default : break;
			}
		});
		 
		 checkNullLogin();
		 
		 
 </script>
​
	
	
	
</body>
</html>