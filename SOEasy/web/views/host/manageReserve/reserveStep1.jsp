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
	<link rel="stylesheet" href="/login/css/layout.css">
<style>
	/* #test {
		outline: 1px;
		border-style: solid;
	} */
	/* .table1 {
	    border-collapse: collapse;
	    border-spacing: 0;
	} */
	
	/* .table1 th {
	    background: lightblue;
	} */
	
	.table1 th, table td {
	    border: lightgrey 1px solid;
	    /* padding: .3em 0.6em; */
	    /* padding: 2px 2px; */
	}
	#dayT {
		text-align: center;
		margin:5px;
		border: #6087AA 1px solid;
		background-color: #DFF4FF;
	}
	#monthT {
		margin:5px;
		text-align: center;
		border: #6087AA 1px solid;
		background-color: #A5C1DA;
	}
	#expT {
		margin:5px;
		text-align: center;
		border: #6087AA 1px solid;
		background-color: #C4C4C4;
		
	}
	#reserve {
		background: #3DB6AE;
		width: 100px;
		height: 35px;
		border-radius:5px;
		color: white;
		font-weight: border;
		border-color: #ECECEC38;
		vertical-align: top;
		font-size: 1.2em;
		margin-left: 5%;
	}
	#kind {
		margin-right: 5%;
	}
	#select {
		margin-left: 5%;
	}
	.dayBtn {
		background: #3DB6AE;
		width: 40px;
		height: 25px;
		border-radius:5px;
		color: white;
		font-weight: border;
		border-color: #ECECEC38;
		vertical-align: top;
	}
	#bar1 {
		background: #3DB6AE;
		width: 400px;
		height: 25px;
		border-radius:5px;
		color: white;
		font-weight: border;
		border-color: #ECECEC38;
		vertical-align: top;
	}
</style>
</head>
<body>
	<header><%@ include file="../../common/header.jsp"%></header>
	<nav>
		<%@ include file="../../common/aside.jsp"%>
		<label><a href="#">공간 일정 관리</a></label> <a href="#">예약 일정 관리</a> <label><a
			href="rounge1.jsp">라운지 회원 관리</a></label> <label><a href="paymentRequest.jsp">결제 요청</a></label>

	</nav>

	<br>
	<hr>
	<br>
	<section>
	<br>
		<button class="reserve" id="reserve" onclick="window.open('reserveModal1.jsp', 'Window2', 'width=500, height=550')">직접 예약</button>
		
		<br>

		<div align="center">
			<b>날짜 이동 :
				<button class="dayBtn" style="font-size: 12px;">&lt;</button>
			</b><input type="date" />
			<button class="dayBtn" style="font-size: 12px;">&gt;</button>
			<button class="dayBtn" style="font-size: 12px;">오늘</button>

		</div>
		<div align="right" id="kind">
			<textarea class="kind" id="expT" cols="6" rows="1" style="resize: none"
				readonly>이용 종료</textarea>
			<textarea class="kind" id="monthT" cols="6" rows="1" style="resize: none"
				readonly>월 회원</textarea>
			<textarea class="kind" id="dayT" cols="6" rows="1" style="resize: none"
				readonly>일 회원</textarea>


		</div>
		
		<form>
			<label id="select">공간선택</label> <select name="place" size="1" >
				<option value="place1" onclick=test1()>센터1</option>
				<option value="place2">센터2</option>
				<option value="place3">센터3</option>
				<option value="place4">센터4</option>
				<option value="place5">센터5</option>
			</select>

		</form>
		<br>
		<table align="center" id="table1" border="1">
		</table>
	</section>
	<script>
	var col = 31;
	var row = 7
	var spaceInfo = 1;
	var dayInfo = 7;
	$(function(){
		   $('#table1').append(function(){
	        var sentence = "";
	        sentence +='<tr>';
	        for(var i=1; i<=32; i++){
	        	if(i == 1){
	        		sentence +='<td>호실</td>';
	        	} else {
                sentence+='<td>'+(i-1)+'</td>';
	        	}
                console.log(i);
            }
	        sentence +="</tr>";
	        for(var i =1; i<=row; i++){
	        	sentence +="<tr>";
	            sentence +='<td>' + i + '호실</td>';
	            for(var j=1; j<=col; j++){
	                if(i>col){
	                    break;
	                }
	                sentence+='<td';
	                switch(spaceInfo){
	                case 1: 
	                	if(dayInfo == 0){
			                sentence+='>';
		                } else {
		                	sentence+=' style="background:red;">'
		                }
	                	;break;
	                case 2: 
	                	if(dayInfo == 0){
			                sentence+='>';
		                } else {
		                	sentence+=' style="background:red;">'
		                }
	                	;break;
	                case 3: 
	                	if(dayInfo == 0){
			                sentence+='>';
		                } else {
		                	sentence+=' style="background:red;">'
		                }
	                	;break;
	                }
	               
		            sentence+='</td>';
	                /* sentence+='<button id="bar1">최우아</button>' */
	                /* sentence+='></td>'; */
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