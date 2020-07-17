<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*, com.kh.login.host.manageReserve.model.vo.PageInfo,
    com.kh.login.member.model.vo.RecoverMember"
    %>
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
           .modalArea {
  display: none;
  position: fixed;
  z-index: 10; 
  top: 0;
  left: 0;
  width: 100%;
  height: 100%;
}

.modalBg {
  width: 100%;
  height: 100%;
  background-color: rgba(30,30,30,0.9);
}

.modalWrapper {
  position: absolute;
  top: 50%;
  left: 50%;
  transform:translate(-50%,-50%);
  width: 70%;
  
  max-width: 500px;
  padding: 10px 30px;
  background-color: #fff;
}
.pCompleteInfo p{
	font-size: 17px;
	font-weight: bolder;
	font-family: 'nanumSquare';
}



#openModal {
  position: absolute;
  top: 50%;
  left: 50%;
  transform:translate(-50%,-50%);
}
</style>
<title>Insert title here</title>
</head>
<body>
	<header><%@ include file="/views/common/header.jsp" %></header>
	<% if (userStatus < 3 || loginUser==null || !loginUser.getmStatus().equals("Y")) {
			request.setAttribute("msg", "잘못된 경로입니다.");
			request.getRequestDispatcher("/views/common/errorPage.jsp").forward(request, response);
		}else{

			ArrayList<RecoverMember> list = (ArrayList<RecoverMember>) request.getAttribute("recoverList");
			PageInfo pi = (PageInfo) request.getAttribute("pi");
			 String url = (String)request.getAttribute("url");
			String root = (String)request.getAttribute("root"); 
			
			int listCount = pi.getListCount();
			int currentPage = pi.getCurrentPage();
			int maxPage = pi.getMaxPage();
			int startPage = pi.getStartPage();
			int endPage = pi.getEndPage();
			
			ArrayList<Integer> rNumArr = new ArrayList<>();
			ArrayList<String> idArr = new ArrayList<>();
			ArrayList<String> contents = new ArrayList<>();
			ArrayList<String> emailArr = new ArrayList<>();
			ArrayList<String> requestDate = new ArrayList<String>();
			ArrayList<String> rstatusArr = new ArrayList<String>();
			
			for(RecoverMember rm: list){
				rNumArr.add(rm.getrNum());
				idArr.add(rm.getUserId());
				contents.add(rm.getDropReason());
				emailArr.add(rm.getEmail());
				requestDate.add(rm.getRequestDate().toString());
				switch(rm.getrStatus()){
				case 1:rstatusArr.add("대기");break;
				case 2:rstatusArr.add("복구완료");break;
				case 3:rstatusArr.add("거절됨");break;
				}
			}	
			%>
	<nav><%@ include file = "/views/common/aside.jsp" %></nav>
	<section>
		<br>
		<div id="wrapper">
		
			<div id="modalArea" class="modalArea">
				<div id="modalBg" class="modalBg"></div>
				<div class="modalWrapper">
					<div class="modalContents">
						<div style="background: #E4EEFA; text-align: center; width: 100%;">
							<h1 style="margin: 0;">경고</h1>
						</div>
						<br>
						<p align="center" style="font-size: 30px;" id="blockMan"></p>
						<div
							style="width: 50%; margin-left: auto; margin-right: auto; align: center;"
							id="buttonZone">
							<button style="margin-right: 10%;" onclick="blockMember();">네</button>
							<button onclick="closeModal();">아니오</button>
						</div>
					</div>

				</div>
			</div>
			
		<br>
		<h1 style="margin : 0;">회원 복구 신청 내역</h1>
		
		<select>
		<option>복구 처리 여부 : 전체</option>
		<option>복구 처리 여부 : 대기</option>
		<option>복구 처리 여부 : 완료</option>
		<option>복구 처리 여부 : 거절</option>
		</select>
		<br><br>
		
		<table align="center"  style="margin:0; width:100%;"  >
				<tr>
					<th height="40px">처리번호</th>
					<th height="40px">아이디</th>
					<th height="40px">회원 탈퇴 사유</th>
					<th height="40px">복구 안내 이메일</th>
					<th height="40px">복구 요청 일</th>
					<th height="40px">복구 처리 여부</th>
					
				</tr>
				

				<%for(int i=0; i<list.size(); i++) {%>
				<tr class="pCompleteInfo">
					<td style="font-size:13px;"><p><%=rNumArr.get(i)%></p></td>
					<td><p><%=idArr.get(i) %></p></td>
					<td><p><%=contents.get(i)%></p></td>
					<td><p><%=emailArr.get(i)%></p></td>
					<td><p><%=requestDate.get(i)%></p></td>
					<td><p class="rStatus"><%=rstatusArr.get(i)%></p></td>
					
				</tr>
				<script>
					$(function() {
						var sen = $('.rStatus:nth(<%=i%>)').text();
						switch (sen) {
						case "대기":
							$('.rStatus:nth(<%=i%>)').css("color", "purple");
							break;
						case "복구완료":
							$('.rStatus:nth(<%=i%>)').css("color", "blue");
							break;
						case "거절됨":
							$('.rStatus:nth(<%=i%>)').css("color", "red");
							break;
						}
					});
				</script>
				<%
					}
				%>
			</table>
				<br>
			
			<div class = "pagingArea" align="center">
			<button onclick="location.href='<%=root+url%>currentPage=currentPage=1'"> << </button>
			<% if(currentPage <= 1) { %>
			<button disabled><</button>
			<% } else { %>
			<button onclick="location.href='<%=root+url%>currentPage=currentPage=<%=currentPage -1 %>'"><</button>
			<% } %>
			
			<% for(int p = startPage; p<= endPage; p++){ 
				if(p == currentPage){
			%>	
					<button disabled><%= p %></button>
			<% 	} else { %>
					<button onclick="location.href='<%=root+url%>currentPage=<%=p%>'"><%=p %></button>
			<% 	  }
			   }	
				%>
			
			<% if(currentPage >= maxPage) { %>
			<button disabled>></button>
			<% } else { %>
			<button onclick="location.href='<%=root+url%>currentPage=<%=currentPage +1 %>'">></button>
			<% } %>
			
			
			<button onclick="location.href='<%=root+url%>currentPage=<%=maxPage%>'">>></button>
		</div>
		</div>
		<% } %>
	</section>
	<br><br>
	<footer><%@ include file = "/views/common/footer.jsp" %></footer>
	
</body>
</html>