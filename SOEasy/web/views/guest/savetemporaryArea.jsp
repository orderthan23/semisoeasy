<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*, com.kh.login.space.model.vo.*" %>
<%
	ArrayList<SpaceInfo> siList = (ArrayList<SpaceInfo>) request.getAttribute("siList"); 
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<link rel="stylesheet" href="/login/css/layout.css">
<style>
	#wrapper{
		width : 90%;
		margin-left: auto;
		margin-right : auto;
	}
	#areaListTable{
		width : 90%;
		margin-left : auto;
		margin-right : auto;
	}
	
	#tableHeader{
		background : #E4EEFA;
	
	}
	#tableHeader th{
		width : 25%;
		height : 60px;
	}
	
	#tableResource td{
		align : center;
		text-align : center;
		font-size : 16px;
		font-weight : bolder;
	}
	.howToStep{
		display: block;
		width: 100%;
		height : 100%;
		-webkit-appearance : none;
		font-size: 16px;
		font-weight: bolder;
		font-family: "nanumSquare";
		border : none;
		text-align-last : center;
	}
	.inspectionStatus{
		border-radius : 10px;
		border: 1px solid black;
		color : black;
		font-size: 16px;
		font-weight : bolder;
		font-family: 'nanumSquare';
		background : none;
		
	}
</style>
<title>SO Easy</title>
</head>
<body>
<!-- 공간 등록 되다 만 곳을 저장하는 저장소 -->
<header><%@ include file="/views/common/header.jsp" %></header>
<nav><%@ include file="/views/common/aside.jsp" %>
	<div class="colMenu">
		<label class="colMenuTitle">개인 정보 관리</label>
		<a class="colMenuButton" href="/login/views/member/updateMember.jsp">개인 정보 수정</a>
		<a class="colMenuButton" href="/login/views/member/deleteMember.jsp">회원 탈퇴</a>
		<a class="colMenuButton selectedButton" href="/login/views/guest/savetemporaryArea.jsp">내 공간 관리</a>
		<br><br>
	</div>
	<hr style="margin:0">

</nav>

<section>
	<div id ="wrapper">
	<h1>내 공간 관리</h1>
	<p>현재 등록 대기 중인 공간이 <label>1</label>개 있습니다.</p>
	<select>
		<option>검수 상태</option>
		<option>검수 요청 전</option>
		<option>검수 대기중</option>
		<option>검수 진행중</option>
		<option>검수 탈락</option>
		<option>검수 완료</option>
	</select>
	<select>
     	<option>작성 상태</option>
     	<option>작성 진행중</option>
     	<option>작성 완료</option>
     
	</select>
	<br><br>
	<table	id="areaListTable">
		<tr id = tableHeader>
			<th>공간명</th>
			<th>공간종류</th>
			<th>공간상태</th>
			<th>공간정보수정</th>
		</tr>
		<%
			for(SpaceInfo si : siList) {
		%>
		<!-- 공간수정버튼 추가 필요 !_____!!!! -->
		<tr id = tableResource>
			<td><p>"<%=si.getSpaceName()%>"</p> </td>
			
			<% 	if(si.getSpaceKind() == 1){ %>
			<td><p>독립 오피스</p> </td>
			<% } else { %>
			<td><p>코워킹 스페이스</p> </td>
			<% } %>
			
			<% if(si.getsStatus().equals("Y")) { %>
			<td><p>운영 중</p></td>
			<td><button class=inspectionStatus>공간 정보 수정</button> <button class=inspectionStatus>공간 정보 삭제 요청</button></td>
			<% } else if(si.getsStatus().equals("N")) { %>
			<td><p>작성 중</p></td>
			<td><button class=inspectionStatus>공간 정보 수정</button> <button class=inspectionStatus>공간 정보 삭제</button></td>
			<% } else if(si.getsStatus().equals("IW")) { %>
			<td><p>검수 대기 중</p></td>
			<td><button class=inspectionStatus disabled="disabled">공간 정보 수정</button> </td>
			<% } else { %>
			<td><p>삭제 대기 중</p></td>
			<td><button class=inspectionStatus disabled="disabled">공간 정보 수정</button> </td>
			<% } %>
		</tr>
		<% } %>
	</table>
	
	
	</div>
</section>

<footer><%@ include file="/views/common/footer.jsp" %></footer>
<script>
	<%-- $(function(){
			var status = <%=siList.get(index)%>
			switch(status){
			case 1 :  $('.inspectionStatus').text("검수 요청 전").css({color: "red" , borderColor: "red"}); break;
			case 2 : $('.inspectionStatus').text("검수 대기 중").css({color: "orange" , borderColor: "orange"}); break;
			case 3 : $('.inspectionStatus').text("검수 진행 중").css({color: "purple" , borderColor: "purple"}); break;
			case 4 : $('.inspectionStatus').text("검수 완료").css({color: "green" , borderColor: "green"}); break;
			case 5 : $('.inspectionStatus').text("검수 탈락").css({color: "gray", borderColor : "gray"}); break; 
			}
			
			var write = parseInt("<%=작성단계변수%>");
			switch(write){
			case 1:	$('.howToStep option:nth(1)').text("이어서 작성하기");
					$('.howToStep option:nth(2)').text("현재 공간 삭제하기"); break;
			case 2:	$('.howToStep option:nth(1)').text("검수 요청 하기");
					$('.howToStep option:nth(2)').text("현재 공간 삭제하기");
					$('.howToStep option:nth(3)').text("현재 공간 수정하기");break;
			
			}
	}); --%>
	

</script>
</body>
</html>