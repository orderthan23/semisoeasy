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
		<a class="colMenuButton selectedButton" href="/login/views/board/board.jsp">공지사항</a>
		<a class="colMenuButton" href="/login/views/host/balance/calculate.jsp">자주 묻는 질문</a>
		<a class="colMenuButton" href="/login/views/board/mtmboard.jsp">1대1문의</a>
	<br><br>
	</div>
	<hr style="margin : 0">
	 <br>
	</nav>
	<section>
   
   <table> <form name=writeform method=post action="write_ok.jsp"> <tr> <td> <table width="100%" cellpadding="0" cellspacing="0" border="0"> <tr style="background:url('img/table_mid.gif') repeat-x; text-align:center;"> <td width="5"><img src="img/table_left.gif" width="5" height="30" /></td> <td>글쓰기</td> <td width="5"><img src="img/table_right.gif" width="5" height="30" /></td> </tr> </table> <table> <tr> <td>&nbsp;</td> <td align="center">제목</td> <td><input name="title" size="50" maxlength="100"></td> <td>&nbsp;</td> </tr> <tr height="1" bgcolor="#dddddd"><td colspan="4"></td></tr> <tr> <td>&nbsp;</td> <td align="center">이름</td> <td><input name="name" size="50" maxlength="50"></td> <td>&nbsp;</td> </tr> <tr height="1" bgcolor="#dddddd"><td colspan="4"></td></tr> <tr> <td>&nbsp;</td> <td align="center">비밀번호</td> <td><input type="password" name="password" size="50" maxlength="50"></td> <td>&nbsp;</td> </tr> <tr height="1" bgcolor="#dddddd"><td colspan="4"></td></tr> <tr> <td>&nbsp;</td> <td align="center">내용</td> <td><textarea name="memo" cols="50" rows="13"></textarea></td> <td>&nbsp;</td> </tr> <tr height="1" bgcolor="#dddddd"><td colspan="4"></td></tr> <tr height="1" bgcolor="#82B5DF"><td colspan="4"></td></tr> <tr align="center"> <td>&nbsp;</td> <td colspan="2"><input type=button value="등록" OnClick="javascript:writeCheck();"> <input type=button value="취소" OnClick="javascript:history.back(-1)"> <td>&nbsp;</td> </tr> </table> </td> </tr> </form> </table>


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