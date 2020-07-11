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
       
        .stage{
   		display: block;
   		appearance:none;
   		background : transparent;
   		border: none;
  		outline: none;
  		-webkit-appearance:none;
		margin-right:auto;
		
		font-size: 15px; 
		text-align: center;
		width: 100%;
		text-align-last: center;
    }
    .modalArea {
  display: none;
  position: fixed;
  z-index: 10; /*サイトによってここの数値は調整 */
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

.closeModal {
  position: absolute;
  top: 0.5rem;
  right: 1rem;
  cursor: pointer;
}

#openModal {
  position: absolute;
  top: 50%;
  left: 50%;
  transform:translate(-50%,-50%);
}

#buttonZone button{
	background : #3DB6AE;
	border-radius: 10px;
	border: none;
}
#buttonZone button:focus{
	outline: none;
	border: none;
}
</style>
<title>Insert title here</title>
</head>
<body>
	<header><%@ include file="/views/common/header.jsp" %></header>
	<nav><%@ include file = "/views/common/aside.jsp" %></nav>
	<section>
		<div id="modalArea" class="modalArea">
  <div id="modalBg" class="modalBg"></div>
  <div class="modalWrapper">
    <div class="modalContents">
      <div style="background: #E4EEFA; text-align: center; width:100%">
         <h1 style="margin:0;">경고</h1>
      </div>
      <p align="center">해당 회원에게 제재를 가하시겠습니까? </p>
      <div style="width:50%; margin-left: auto; margin-right: auto; align:center;" id="buttonZone">
      <button style="margin-right: 10px; width: 100px;" onclick="blockMember();">네</button><button style="width:100px;" onclick ="closeModal();">아니오</button>
      </div>
    </div>
    <div id="closeModal" class="closeModal" style="font-size: 25px; ">
      x
    </div>
  </div>
</div>
		<br>
		<div id="wrapper">
		<br>
		<h1 style="margin : 0;">회원 목록</h1>
		<select>
		<option>계정 활성화 여부: 전체</option>
		<option>계정 활성화 여부: 활성</option>
		<option>계정 활성화 여부: 비활성</option>
		</select>
		<select>
		<option>권한 : 전체</option>
		<option>권한 : 게스트</option>
		<option>권한 : 호스트</option>
		</select>
		<select>
			<option>경고횟수 : 전체</option>
			<option>경고횟수 : 1회</option>
			<option>경고횟수 : 2회</option>
		</select><br><br>
		
		<table align="center"  style="margin:0; width:100%;"  >
				<tr>
					<th height="40px">아이디</th>
					<th height="40px">이름</th>
					<th height="40px">권한</th>
					<th height="40px">계정 활성화 여부</th>
					<th height="40px">경고 횟수</th>
					<th height="40px">예약 내역 보기</th>
					<th height="40px">관리자 메모</th>
				</tr>
				

				<%for(int i=1; i<=pCompleteQTY; i++) {%>
				<tr class="pCompleteInfo">
					<td>
						<select class="stage">
							<option value=1><%="lingard"+i%></option>
							<option value=2>경고 부여</option>
							<option value=3>7일 활동 정지</option>
							<option value=4>30일 활동 정지</option>
							<option value=5>영구 정지</option>
						</select>
					</td>
					<td>코워킹 스페이스</td>
					<td>게스트</td>
					<td>O </td>
					<td>0</td>
					<td><a href="해당회원의 예약내역">이동</a></td>
					<td>축구선수를 위장한 댄서</td>
				</tr>
				<%
					}
				%>
			</table>
		</div>
	</section>
	<br><br>
	<footer><%@ include file = "/views/common/footer.jsp" %></footer>
	<script>
	function closeModal(){
		 $('#modalArea').fadeOut();
	}
	
	function blockMember(){
		alert("해당 회원이 정지 되었습니다");
		 $('#modalArea').fadeOut();
	}
		
	$(function(){
		
		
		$('.stage').change(function(){
			var num = $(this).val();
			$('option:nth(0)').prop("selected")
			if(num >1){
				 $('#modalArea').fadeIn();
				 
				 $('#closeModal , #modalBg').click(function(){
					    $('#modalArea').fadeOut();
					  });
			
			}
		});
		
	});
	</script>
	
	
</body>
</html>