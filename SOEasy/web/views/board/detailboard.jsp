<%@page import="com.kh.login.board.model.vo.Board"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="com.kh.login.board.model.vo.Board" %>
<% Board board = (Board) request.getAttribute("board"); %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<link rel="stylesheet" href="/login/css/layout.css">
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
	 <div class="colMenu" style="margin-top: 20px;">
		<a class="colMenuButton selectedButton"	href="/login/selectList.no">공지사항</a>
		<a class="colMenuButton" href="/login/views/board/faqboard.jsp">자주 묻는 질문</a> 
		<a class="colMenuButton" href="/login/views/board/mtmboard.jsp">1대1문의</a>
	</div>
	<hr style="margin: 0">
	<br>
	
	<section>
	<br>
	<label><font size="6" color="gray" style=text-align:>공지사항</font></label>
	
	<br>
	
	<input type="hidden" name="id" value="<%=loginUser.getmId()%>">
	<table width:700 border="3" bordercolor="lightgray" align="center">
			<tr>
				<td style="text-align:center; background:#60B4A6">제목</td>
				<td><input name="title" type="text" size="70" maxlength="100" value="<%=board.getnTitle()%>" readonly></td>
			</tr>
			<tr>
				<td style=text-align:center style="text-align:center; background:#60B4A6">
					<select class="category" name="category" id="category" style="text-align:center; background:#60B4A6 ">
						<option class="category" style="text-align:center"><%=board.getnCategory() %></option>
						<option class="category" value="1">시스템관련</option>
						<option class="category" value="2">계정관련</option>
						<option class="category" value="3">결제관련</option>
						<option class="category"></option>
					</select>
				</td>
			</tr>
			<tr>
			<td style="text-align:center; background:#60B4A6">내 용</td>
			<td><textarea name="content" cols="72" rows="20" style="resize:none;" readonly><%= board.getnContent() %></textarea></td>		
			</tr>
			<tr align="center" valign="middle" style="text-align:center; background:#60B4A6">
				<td colspan="5">
				<button style="text-align:center; background:#60B4A6; color:white" onclick="location.href='<%= request.getContextPath()%>/selectList.no'">메뉴로 돌아가기</button>
				<% if(loginUser != null && loginUser.getmId().equals("admin")) { %>
				<button   style="text-align:center; background:#60B4A6; color:white" onclick="location.href='<%= request.getContextPath()%>/selectBoard.no?num=<%= board.getNoticeNo()%>'" >수정하기 </button>
				<% } %>
			</td>
		</tr>
	</table>	
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
	<!-- <script>
		function checkValue() {
			var form = document.forms[0];
			var board_subject = form.board_subject.value;
			var board_content = form.board_content.value;

			if (!board_subject) {
				alert("제목을 입력해주세요.")
				return false;
			} else if (!board_content) {
				alert("내용을 입력해주세요.")
				return false;
			}
		}
	</script> -->



</body>
</html>	