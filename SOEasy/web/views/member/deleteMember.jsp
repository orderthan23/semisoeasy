<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<link rel="stylesheet" href="../../css/layout.css">
<style>
	#deleteFrom{
		position : relative;
	}
	#deleteTitle{
		font-size:30px;
		font-weight: bolder;
		display : inline;
	}
	#explainBox{
		background : #C4C4C4;
		width : 1100px;
		height : 300px;
		position : relative;
	
	
	}
	
	#explainBox p{
			margin-left : 30px; 
			margin-bottom : 10px;
			font-weight : normal; 	
			
			
	}
	textarea{
		width : 300px;
		height : 100px;
	}
	
	#deleteInfoBox div{
		width: 500px;
		height :400px;
	}
	
	#deleteButton{
		width: 310px;
		height : 80px;
		background : #FF5B5B;
		outline : none;
		border-style : none;
		border-radius: 10px;
		font-size : 30px;
		font-weight : bold;
		
	}
	#deleteInfoBox input{
		width : 200px;
		height : 30px;
	}
	
	deleteInfoBox div :nth-child(2){
		line-height:  100px;
	}
</style>
<title>Insert title here</title>
</head>
<body>
	<header><%@ include file="../common/header.jsp"%></header>
	<nav>
	<%@ include file="../common/aside.jsp"%>

	
	</nav>
	<section>
	<br>
		<form action="" method="post" id="deleteForm">
		<table align="center">
			<tr>
				<td colspan = "4"><p id="deleteTitle">회원 탈퇴</p></td>
			</tr>
			
			<tr>
				<td><br><div id="explainBox">
						<br><br>
						<p>회원 탈퇴 진행 시 비회원의 접속 권한을 제외한 모든 기능의 사용 및 열람이 제한됩니다.</p>
						<p>탈퇴한 아이디로는 다시 가입할 수 없으며, 아이디 및 데이터는 30일 이내 자사 방문을 통해 복구할 수 있습니다.</p>
						<p>회원탈퇴 시 신중히 진행해 주시길 부탁드립니다.</p>
						<p>회원탈퇴 시 데이터는 2년간 이관되어 보관되며 호스트는 반드시 공간 삭제 요청 후 SO Easy와의 계약을 해지 후에 탈퇴 가능합니다.</p>
			   		    <p>부정가입을 방지하기 위해 탈퇴 후 동일한 아이디와 이메일로 3개월동안 재가입이 되지 않습니다.</p>
						<p>궁금한 사항이 있으시면 고객센터로 문의 주시기 바랍니다.</p>
					</div></td>
			</tr>
			
			</table>
			<br><br>
			<div align="center" id="deleteInfoBox">
				<span style="display: inline-block;" >
					<h1>탈퇴사유</h1>
					<p align="left">사유 남겨주시어 보완하여 더 좋은 서비스가 되도록 하겠습니다.</p>
					<br>
					<textarea>탈퇴 사유를 입력하시오.</textarea>
				</span> &nbsp;&nbsp;

				<span style="display:inline-block;">
					
					<h1>비밀번호</h1>
					
					<input type="password" name="userPwd" placeholder="비밀번호를 입력하세요">
					<br><br>
					<button id="deleteButton">탈퇴하기</button>
					<br><br><br>
				</span>

			</div>




		</form>
		
		
	</section>
	
	<footer><%@ include file="../common/footer.jsp"%></footer>
</body>
</html>