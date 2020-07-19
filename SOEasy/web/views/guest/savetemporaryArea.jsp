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
			<th>작성 상태</th>
			<th>검수 진행도 </th>
		</tr>
		<%
			/* //  가제 : 1,검수 요청 전, 2.검수 대기중, 3. 검수 진행중, 4. 검수 완료, 5. 검수 탈락
			int 검수상황 = 3;
			// 가제 : 1.1단계 공간정보 입력완료 , 2.2단계 가격정보 입력완료  3.검수 신청 완료
			int 작성단계변수 = 1;
		 	String 작성단계;
			if(작성단계변수 ==1){
				작성단계 = "작성 진행 중";
			}else{
				작성단계 = "작성 완료";
			}
			String 공간이름 = "린가드 코워킹 스페이스";
			String 공간날짜 = "20.09.18";
			
			int length  = 6; // 정보의 갯수 
			for(int i = 0; i<length; i++){ */
			
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
			<td><select class="howToStep">
					<option selected disabled><%=작성단계 %></option>
					<option></option>
					<option></option>
					<option></option>
				</select> </td>
			<td><button class=inspectionStatus>검수 요청 전</button> </td>
		</tr>
		<% } %>
	</table>
	
	
	</div>
</section>

<footer><%@ include file="/views/common/footer.jsp" %></footer>
<script>
	$(function(){
			var status = parseInt("<%=검수상황%>");
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
	});
	

</script>
</body>
</html>