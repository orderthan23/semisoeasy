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
	.inspectionStatus, button{
		border-radius : 10px;
		border: 1px solid black;
		height: 30px;
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
	<br><br>
	<h1 style="margin:0;">내 공간 관리</h1>
	<p>현재 등록 대기 중인 공간이 <label id="undone"></label> 개 있습니다.</p>
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
			<th width="20%">공간명</th>
			<th width="15%">공간종류</th>
			<th width="15%">공간상태</th>
			<th width="30%" colspan="3">공간정보관리</th>
		</tr>
		<%
			for(int i = 0; i < siList.size(); i++) {
		%>
		
		<tr id = tableResource>
			<td class="spaceNameZone"><p><%=siList.get(i).getSpaceName()%></p> <input type="hidden" class="hiddenSpaceNo" value=<%= siList.get(i).getSpaceNo() %>></td>
			
			<% 	if(siList.get(i).getSpaceKind() == 1){ %>
			<td><p>독립 오피스</p> </td>
			<% } else { %>
			<td><p>코워킹 스페이스</p> </td>
			<% } %>
			
			<% if(siList.get(i).getsStatus().equals("Y")) { %>
			<td><button class=inspectionStatus style="color:green; borderColor:green;">운영 중</button></td>
			<td width="10%"><button class="updateSpaceInfo">공간 정보 수정</button></td>
			<td width="10%"><button class="deleteRequest">공간 정보 삭제 요청</button></td>
			<td width="10%"></td>
			<% } else if(siList.get(i).getsStatus().equals("N")) { %>
			<td><button class=inspectionStatus style="color:gray; borderColor:gray;">작성 중</button></td>
			<td width="10%"><button class="updateSpaceInfo">공간 정보 수정</button></td>
			<td width="10%"><button class="deleteSpace">미완성 공간 정보 삭제</button></td>
			<td width="10%"><button class="inspectionRequest">공간 검수 신청</button></td>
			<% } else if(siList.get(i).getsStatus().equals("IW")) { %>
			<td><button class=inspectionStatus style="color:purple; borderColor:purple;">공간 검수 대기 중</button></td>
			<td width="10%"><button disabled="disabled">공간 정보 수정</button> </td>
			<td width="10%"><button disabled="disabled">공간 정보 삭제 요청</button></td>
			<td width="10%"></td>
			<% } else if(siList.get(i).getsStatus().equals("DW")) { %>
			<td><button class=inspectionStatus style="color:red; borderColor:red;">공간 삭제 대기 중</button></td>
			<td width="10%"><button disabled="disabled">공간 정보 수정</button> </td>
			<td width="10%"><button class="cancleDeleteRequset">공간 정보 삭제 취소</button></td>
			<td width="10%"></td>
			<% } else if(siList.get(i).getsStatus().equals("ID")) { %>
			<td><button class=inspectionStatus style="color:red; borderColor:red;">공간 등록 거절</button></td>
			<td width="10%"><button class="updateSpaceInfo">공간 정보 수정</button></td>
			<td width="10%"><button class="deleteSpace">미완성 공간 정보 삭제</button></td>
			<td width="10%"><button class="inspectionRequest">공간 검수 신청</button></td>
			<% } %>
		</tr>
		<% } %>
	</table>
	
	
	</div>
</section>

<footer><%@ include file="/views/common/footer.jsp" %></footer>
<script>
	$(".updateSpaceInfo").click(function(){
		var spaceNo = $(this).parent().siblings(".spaceNameZone").find(".hiddenSpaceNo").val();
		/* console.log(spaceNo); */
		location.href = "<%=request.getContextPath()%>/intoUpdateSpace?sNo="+spaceNo;
	});
	
	$(".deleteRequest").click(function(){
		if(confirm("공간정보 삭제를 요청하시겠습니까?")){
			var spaceNo = $(this).parent().siblings(".spaceNameZone").find(".hiddenSpaceNo").val();
			location.href = "<%=request.getContextPath()%>/deleteRequest?sNo="+spaceNo;
		}
	});
	
	$(".inspectionRequest").click(function(){
		var spaceNo = $(this).parent().siblings(".spaceNameZone").find(".hiddenSpaceNo").val();
		location.href = "<%=request.getContextPath()%>/inspectionRequest?sNo="+spaceNo;
	});
	
	$(function(){
		<% 
		int cnt = 0;
		for(SpaceInfo s : siList) { 
			if(s.getsStatus().equals("N") || s.getsStatus().equals("ID") || s.getsStatus().equals("IW")) {
				cnt ++;%>
			<% } %>
		<% } %>
		$("#undone").html(<%=cnt%>);
	});
	
</script>
</body>
</html>