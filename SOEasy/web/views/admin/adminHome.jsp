<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<link rel="stylesheet" href="../../css/layout.css">
<style>
	#wrapper{
		width: 90%;
		margin-left: auto;
		margin-right: auto;
	}
	article{
		display:inline-block;
		width: 49%;
		border: 0.5px solid black;
		border-radius: 3px;
		border-collapse: collapse;
	}
	#research1{
		width: 100%;
		border-color: #3DB6AE;
		border-width: 4px;
		
		
	}
	#research2{
		width: 100%;
		border-color: #3DB6AE;
		border-width: 2px;
		border-collapse: collapse;
		
		margin-right: 3%;
	}
	#recent{
		display: inline-block;
		 width:80%;
		 margin-left: 10px;
		 margin-top: 10px;
		 height: 300px;
		 margin-right: 10px;
		 border-color: #3DB6AE;
	}
	#recent table tr td{
		width: 20%;
	}
	#synthesis{
		display: inline-block;
		width:15%;
		border-left :solid 4px #3DB6AE;
		height: 350px;
		float: right;
		clear: both;
		
	}
	#synthesis table{
		margin-top: 20%; 
	
		border-right: none;
	
	}
	#synthesis table tr td{
		width: 20%;
	}
	#synthesis table tr td p{
		margin: 0;
		margin-bottom: 15px;
		font-size: 18px;
		font-weight: bolder;
	}
	.synValue{
		text-align: right;
	}
	.recentTitle{
		
		font-size: 20px;
		border:3px solid #3DB6AE;
		
		
	}
	
	
	
	#banner{
		font-size: 40px;
		font-weight: bolder;
	}
	#recent table tr td{
		text-align : center;
	}
	#result td div{
		border: 1px solid  #3DB6AE;
		width: 100px;
		height: 100px;
		border-radius: 100%;
		margin-left: auto;
		margin-right: auto;
		background : #3DB6AE;
	}
	#result td div p{
		font-size: 30px;
	
	}
	
	.adminTitles{
		margin: 0;
		width: 100%;
		height: 60px;
		line-height: 60px;
		background : #3DB6AE;
	}
	.hide {
		
		visibility:hidden;
		display: none;
		opactiy : 0;
		transition: 0.5s;
	
	
	}
	.show{
		visibility : visible;
		display: block;
		opacity : 1;
	}
	.seeMore{
		width: 100px;
		height: 40px;
		float: right;
		clear: both;
		background: #3DB6AE;
		border: none;
		border-radius: 10px;
		
	}
	.hide table tr th,
	.hide table tr td{
		width: 100px;
		text-align: center;
	}
	.hide table tr th{
		background: #3DB6AE;
	}
</style>
<title>SO Easy</title>
</head>
<body>
	<header><%@ include file="../../views/common/header.jsp" %></header>
	<nav><%@ include file="../../views/common/aside.jsp" %>
	<br><br><br>
	<hr style="margin:0px;">
	</nav>

	
	<section>
		<br>
		<div id="wrapper">
			<p style="margin:0px; font-size: 25px; font-weight: bolder;">SO Easy 관리자 메뉴</p>
			<br>
			<article id="research1">
		
				<div id="recent" align="center">
					<table>
						<tr>
							<td colspan="3"><div align="center" id="banner" style="background:#3DB6AE;" ><p style="margin-bottom: 0;">Today</p></div></td>
						</tr>
						<tr>
							<td><p class="recentTitle">새로 등록된 공간</p></td>
							<td><p class="recentTitle">오늘 가입한 회원</p></td>
							<td><p class="recentTitle">오늘의  수익</p></td>
						</tr>
						<tr id="result">
							<td align="center"><div><p>10</p></div></td>
							<td><div><p>5</p></div></td>
							<td><div><p>80000</p></div></td>
						</tr>
					</table>
				</div><!-- 
				 --><div id="synthesis">
					<table>
						<tr>
							<td colspan="4"></td>
						</tr>
						<tr>
							<td><p>회원</p></td>
							<td colspan="4"><p class="synValue">1523124명</p></td>
						</tr>
						<tr>
							<td><p>공간 </p></td>
							<td colspan="4"><p class="synValue">1523124명</p></td>
						</tr>
						<tr>
							<td><p>호스트</p></td>
							<td colspan="4"><p class="synValue">1523124명</p></td>
						</tr>
						<tr>
							<td><p>첨부 파일</p></td>
							<td colspan="4"><p class="synValue">1523124명</p></td>
						</tr>
						
					</table>
				</div>
				
			</article><!-- 
		--><div id="research2">
		 		<div class="adminTitles">
			 		<h1 align="center" style="margin:0; margin-top:10px;">공간 삭제 요청 건</h1>
		 		</div>
		 		<div class="hide">
		 			<p>2개의 새로운 삭제 요청 건이 있습니다.</p>
		 			<table align="center">
		 				<tr>
		 					<th>공간명</th>
		 					<th>공간종류</th>
		 					<th>호스트ID</th>
		 					<th>삭제사유</th>
		 					
		 				</tr>
		 				<% for(int i=0; i<3; i++){%>
		 					<tr>
		 						<td>린가드</td>
		 						<td>린가드</td>
		 						<td>린가드</td>
		 						<td>린가드</td>
		 					</tr>
		 				<%} %>
		 			</table>
		 			<button class="seeMore">자세히 보기</button>
		 			<br><br>
		 		</div>
			</div>
		 	
	  		<div id="research2">
		 		<div class="adminTitles">
			 		<h1 align="center" style="margin:0; margin-top:10px;">회원 복구 요청 건</h1>
		 		</div>
		 		<div class="hide">
		 			<p>2개의 새로운 복구 요청 건이 있습니다.</p>
		 			<table align="center">
		 				<tr>
		 					<th>아이디</th>
		 					<th>이름</th>
		 					<th>회원 탈퇴 일</th>
		 					
		 					
		 				</tr>
		 				<% for(int i=0; i<3; i++){%>
		 					<tr>
		 						<td>린가드</td>
		 						<td>린가드</td>
		 						<td>린가드</td>
		 					
		 					</tr>
		 				<%} %>
		 			</table>
		 			<button class="seeMore">자세히 보기</button>
		 			<br><br>
		 		</div>
			</div>
		 	
		
			
		</div>
	</section>
	
	<footer><%@ include file="../../views/common/footer.jsp" %></footer>
	<script>
		
		$(".adminTitles").click(function(){
			$(".hide").toggleClass('show');
		});
	</script>
</body>
</html>