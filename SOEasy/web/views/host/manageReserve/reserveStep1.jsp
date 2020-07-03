<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="/login/css/layout.css">
<title>SO Easy</title>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<style>
#test {
	outline: 1px;
	border-style: solid;
}

td {
	width: 100px;
	height: 100px;
}
</style>
</head>
<body>
	<header><%@ include file="../../common/header.jsp"%></header>
	<nav>
		<%@ include file="../../common/aside.jsp"%>
		<label><a href="#">공간 일정 관리</a></label> <a href="">예약 일정 관리</a> <label><a
			href="rounge1.jsp">라운지 회원 관리</a></label> <label><a href="">결제 요청</a></label>

	</nav>

	<br>
	<hr>
	<br>
	<section>
		<button class="reserve" id="reserve" onclick="window.open('reserveModal1.jsp')">직접 예약</button>
		<form>
			<label>공간선택</label> <select name="place" size="1" >
				<option value="place1" onclick=test1()>센터1</option>
				<option value="place2">센터2</option>
				<option value="place3">센터3</option>
				<option value="place4">센터4</option>
				<option value="place5">센터5</option>
			</select>

		</form>

		<br>




		<div>
			<b>날짜 이동 :
				<button class="dayBtn" style="font-size: 12px;">&lt;</button>
			</b><input type="date" />
			<button class="dayBtn" style="font-size: 12px;">&gt;</button>
			<button class="dayBtn" style="font-size: 12px;">오늘</button>

		</div>
		<div>
			<textarea class="kind" cols="6" rows="1" style="resize: none"
				readonly>이용 종료</textarea>
			<textarea class="kind" cols="6" rows="1" style="resize: none"
				readonly>월 회원</textarea>
			<textarea class="kind" cols="6" rows="1" style="resize: none"
				readonly>일 회원</textarea>


		</div>
		<button id="btn">제발</button>
		<table align="center" id="table1" border="1" width="80%">
		</table>
	</section>
	<script>
	var col = 31;
	var row = 6;
	$(function(){
		console.log("dsDFasdf");
		   $('#table1').append(function(){
	        var sentence = "";
	        sentence +='<tr>';
	        for(var i=1; i<=32; i++){
	        	if(i == 1){
	        		sentence +='<td width="20px" height="10px">호실 예약</td>';
	        	} else {
                sentence+='<td width="10px" height="10px">'+(i-1)+'</td>';
	        	}
                console.log(i);
            }
	        sentence +="</tr>";
	        for(var i =1; i<=row; i++){
	        	sentence +="<tr>";
	            sentence +='<td width="20px" height="10px">' + i + '호실 예약</td>';
	            for(var j=1; j<=col; j++){
	                if(i>col){
	                    break;
	                }
	                sentence+='<td width="10px" height="10px">'+j+'</td>';
	            }
	            sentence +="</tr>";
	        }
	        return sentence;
	    });
	});

	</script>
	
	
	
	
	
	
	
	<footer><%@ include file="../../common/footer.jsp"%></footer>
	


</body>
</html>