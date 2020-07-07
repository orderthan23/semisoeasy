<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String name = "린가드";
	int placeQTY = 10;
	int pCompleteQTY = 10;
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
	<header><%@ include file="/views/common/adminHeader.jsp" %></header>
	<nav><%@ include file = "/views/common/aside.jsp" %></nav>
	<section>
		<br>
		<div id="wrapper">
		<br>
		<h1 style="margin : 0;">악성 후기 신고 내역</h1>
		<select>
		<option>신고 처리 결과: 전체</option>
		</select>
		<select>
		<option>공간 종류 : 전체</option>
		</select>
		<select>
			<option>일자 선택</option>
		</select><br><br>
		
		<table align="center"  style="margin:0; width:100%;"  >
				<tr>
					<th height="40px">공간명</th>
					<th height="40px">공간종류</th>
					<th height="40px">요청자 아이디</th>
					<th height="40px">요청 날짜</th>
					<th height="40px">신고 받은 아이디</th>
					<th height="40px">신고 사유</th>
					<th height="40px">신고 처리 결과</th>
					<th height="40px">비고</th>
				</tr>
				

				<%for(int i=1; i<=pCompleteQTY; i++) {%>
				<tr class="pCompleteInfo">
					<td style="font-size:13px;"><%="린가드 "+i+"코워킹 스페이스"%></td>
					<td>코워킹 스페이스</td>
					<td><%="lingard"+i %></td>
					<td class="price"><%="2020.07."+i%> </td>
					<td class="refundCharge"><%="2020.07."+(i+10)%></td>
					<td>확인</td>
					<td>확인</td>
					<td><a href="#">자세히 보기</a></td>
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