<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
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
       .hide{
       	visibility: hidden;
       	display: none;
       	opacity: 0;
       }
       
       .show{
       	visibility: visible;
       	display: block;
       	opacity: 1;
       }
</style>
<title>Insert title here</title>
</head>
<body>
	<header><%@ include file="/views/common/adminHeader.jsp" %></header>
	<nav>
		<%@ include file="/views/common/aside.jsp"%>
		<div class="colMenu">
		<label class="colMenuTitle">정산 관리</label>
		<a class="colMenuButton" href="/login/views/admin/manageCalculate.jsp">정산 내역 관리</a>
		<a class="colMenuButton selectedButton" href="/login/views/admin/manageCalculateObjection.jsp">재정산 요청 관리</a>
	<br><br>
	</div>
	<hr style="margin : 0">
	</nav>ßç
	<section>
		<div id="wrapper">
		<br>
		<h1 style="margin : 0;">정산 내역</h1>
		<select>
		<option>== 정산 상태 ==</option>
		<option>정산 상태: 미확인</optiyon>
		<option>정산 상태: 확인</option>
		<option>정산 상태: 마감</option>
		</select>
		<select>
			<option>== 일자 선택 ==</option>
		</select><br><br>
		
		<table id="tableArea" align="center"  style="margin:0; width:100%;">
				<tr>
					<th height="40px">의뢰 번호</th>
					<th height="40px">정산 일자</th>
					<th height="20px">정산 단위기간</th>
					<th height="40px">공간명</th>
					<th height="40px">호스트 아이디</th>
					<th height="40px">정산 상태</th>
				</tr>
				<tr>
					<!-- <th height="20px">정산 단위기간 마감</th> -->
				</tr>

				<%for(int i=1; i<=pCompleteQTY; i++) {%>
				<tr class="pCompleteInfo" class="tr1" id='<%="tr" + i %>'>
					
					<td style="font-size:13px;"><%=(i+257)%></td>
					<td><%="2020.07."+(i+11)%></td>
					<td class="price"><%="2020.07."+(i+10)%> ~ <%="2020.08."+(i+0)%></td>
					<td>코워킹 스페이스</td>
					<td><%="wooah"+i %></td>
					<td id="ok">확인</td>
				</tr>
				<tr class="tr2" id='<%="trHide" + i %>'>
					<td colspan="6" style="font-size:13px;">내용</td>
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
   $('.tr2').hide();
	$(function(){
		$("#tableArea tr").mouseenter(function(){
			$(this).parent().css({"background":"white", "cursor":"pointer"});
		}).mouseout(function(){
			$(this).parent().css({"background":"lightgray"});
		}).click(function(){
		    $('.tr2').show();
			$('.tr2').slidetoggle("slow");
			
			
		});
	});
	$(".tr2").removeClass('.tr2').slideUp();
    /* $('tr').on('click', function () {
 
        if ($(this).hasClass('on')) {
            slideUp();
        } else {
            slideUp();
            $(this).next('tr').slidetoggle();
        }
        function slideUp() {
            $('dt').removeClass('on').next().slideUp();
        };
   }) */
   /* $(document).ready(function () {
         $("#tr1").click(function () {
               $(this).next(".tr2").slideToggle("slow");
            }
         )
      }); */
   </script>
</body>
</html>