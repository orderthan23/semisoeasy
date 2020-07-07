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
</style>
<title>Insert title here</title>
</head>
<body>
	<header><%@ include file="/views/common/adminHeader.jsp" %></header>
	<nav><%@ include file = "/views/common/aside.jsp" %></nav>
	<section>
		<div id="wrapper">
		<br>
		<h1 style="margin : 0;">공간 등록 신청 내역</h1>
		<select>
		<option>검수 결과: 전체</option>
		</select>
		<select>
		<option>공간 종류 : 전체</option>
		</select>
		<select>
			<option>일자 선택</option>
		</select><br><br>
		
		<table align="center"  style="margin:0; width:100%;"  >
				<tr>
					<th rowspan="2" colspan="2" height="40px">공간명</th>
					<th rowspan="2" height="40px">공간종류</th>
					<th rowspan="2" height="40px">호스트 아이디</th>
					<th colspan="3" height="40px">검수 진행 상태</th>
					<th rowspan="2" height="40px">검수 결과</th>
					<th rowspan="2" height="40px">비고</th>
				</tr>
				<tr>
					<th height="20px">검수 신청</th>
					<th height="20px">검수 시작</th>
					<th height="20px">검수 완료</th>
				</tr>

				<%for(int i=1; i<=pCompleteQTY; i++) {%>
				<tr class="pCompleteInfo">
					<td style="font-size:13px;"><%="린가드 "+i+"코워킹 스페이스"%></td>
					<td colspan="2">코워킹 스페이스</td>
					<td><%="lingard"+i %></td>
					<td class="price"><%="2020.07."+i%> </td>
					<td class="refundCharge"><%="2020.07."+(i+10)%></td>
					<td><%="2020.07."+(i+11)%></td>
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