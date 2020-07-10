<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	int placeQTY = 10;
	int pCompleteQTY = 10;
	int statement = 0;
%>
<!DOCTYPE html>
<html>
<head>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<link rel="stylesheet" href="/login/css/layout.css">
<meta charset="UTF-8">
<style>
	#wrapper{
		width : 90%;
		margin-left: auto;
		margin-right : auto;
	}
	#wrapper select{
		float : right;
	}
	      
   	th{
   		background: #E4EEFA;
   		width: 13%;
   		font-size: 17px;
   		font-weight: bolder; 
   		clear:both;
   		
   	}
     .pCompleteInfo td{
     	text-align: center;
     	height : 30px;
     	background : #fff;
     }
 
     .pCompleteInfo td a{
     	text-decoration: underline;
     	color : black;
     }
     #wrapper h1{
     	font-size : 30px;
     	font-weight: bolder;
     }
</style>
<title>Insert title here</title>
</head>
<body>
	<header><%@ include file="../../common/header.jsp"%></header>
	<nav>
		<%@ include file="../../common/aside.jsp"%>
		<div class="colMenu">
		<label class="colMenuTitle">공간 일정 관리</label>
		<a class="colMenuButton" href="/login/views/host/manageReserve/reserveStep1.jsp">예약 일정 관리</a>
		<a class="colMenuButton" href="/login/views/host/manageReserve/rounge1.jsp">라운지 회원 관리</a>
		<a class="colMenuButton selectedButton" href="/login/views/host/manageReserve/paymentRequest.jsp">결제 요청</a>
	<br><br>
	</div>
	<hr style="margin : 0">
	</nav>
	<section>
		<br>
		<div id="wrapper">
		<br>
		<h1 style="margin : 0;">결제 요청</h1>
		<h3>플랫폼을 통해 예약 대기중인 건이 <%=3 %> 건 있습니다</h3>
		
		<!-- <select>
		<option>==센터 선택==</option>
		<option>센터 1</option>
		<option>센터 2</option>
		<option>센터 3</option>
		<option>센터 4</option>
		<option>센터 5</option>
		<option>센터 6</option>
		</select> -->
		<br><br>
		
		<table align="center"  style="margin:0; width:100%;"  >
				<tr>
					<th height="40px">아이디</th>
					<th height="40px">이름</th>
					<th height="40px">사용 일자</th>
					<th height="40px">센터명</th>
					<th height="40px">공간명</th>
					<th height="40px">옵션(완료 미표시)</th>
					<th height="40px">진행도</th>
					
				</tr>
				
​
				<%for(int i=1; i<=pCompleteQTY; i++) {%>
				<tr class="pCompleteInfo">
					
					<td><%="wooah"+i %></td>
					<td><%="최우아"+i %></td>
					<td style="font-size:13px;" class="date"><%="2020.07."+(i+10)%>~<%="2020.08."+(i+9)%></td>
					<td style="font-size:13px;"><%="센터 "+i+"코워킹 스페이스"%></td>
					<td style="font-size:13px;"><%="공간 "+i+"호"%></td>
					<td style="font-size:13px;" id="option">
					<button style="border:1px solid red;background:white;color:red">승인</button>
					<button style="border:1px solid blue;background:white;color:blue">거절</button>
					</td>
					
					<% if(statement == 0) {%>
					<td style="font-size:12px;"><%="예약 요청" %></td>
					<% } %>
				</tr>
				<%
					}
				%>
			</table>
		</div>
	</section>
	
	<br><br>
	<footer><%@ include file = "/views/common/footer.jsp" %></footer>
</body>
</html>