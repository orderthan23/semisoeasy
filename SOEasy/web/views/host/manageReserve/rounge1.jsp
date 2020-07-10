<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="/login/css/layout.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<title>SO Easy</title>
<style>
	body {
		background-color:#ECECEC;
		
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
	.l2 {
		margin-left: 5%;
		margin-right: 5%;
		padding:0.05px;
		background-color: lightgray;
		font-weight: bolder;
	}
	.l1 {
		margin-left: 5%;
		margin-right: 5%;
		padding:0.05px;
		font-weight: bolder;
		font-size: 1.5em;
	}
	
	#box {
		margin-left: 5%;
		margin-right: 5%;
		background-color: white;
	}
	#btn3 {
		width: 120px;
		height: 90px;
		margin:1%;
		border: lightgrey 2px solid;
		background: white;
		 
	}
	#day {
		margin:1%;
		width: 120px;
		height: 90px;
		border: lightgrey 2px solid;
		background-color: lightblue;
	}
	#month {
		margin:1%;
		width: 120px;
		height: 90px;
		border: lightgrey 2px solid;
		background-color: white;
	}
	#exp {
		margin:1%;
		width: 120px;
		height: 90px;
		border: lightgrey 2px solid;
		background-color: pink;
		
	}
	#unpaid {
		margin:1%;
		width: 120px;
		height: 90px;
		border: lightgrey 2px dashed;
		background-color: white;
	}
	#dayT {
		margin:5px;
		border: lightgrey 2px solid;
		background-color: lightblue;
	}
	#monthT {
		margin:5px;
		border: lightgrey 2px solid;
		background-color: white;
	}
	#expT {
		margin:5px;
		border: lightgrey 2px solid;
		background-color: pink;
		
	}
	#unpaidT {
		margin:5px;
		border: lightgrey 2px dashed;
		background-color: white;
	}
	.kind {
		align: right;
	}
	
</style>
</head>
<body>
	<header><%@ include file="../../common/header.jsp"%></header>
	<nav>
		<%@ include file="../../common/aside.jsp"%>
		<label><a href="">공간 일정 관리</a></label>
		<a href="reserveStep1.jsp">예약 일정 관리</a>
		<label><a href="#">라운지 회원 관리</a></label>
		<label><a href="">결제 요청</a></label>

	</nav>

	<br>
	<hr>
	<br>
	<section>
		<button class="reserve" id="reserve" onclick="window.open('reserveModal1.jsp', 'PopupWin', 'width=500, height=550')">직접 예약</button>
		
		<div class="l1" align="center">
			라운지 이용고객 관리
		</div>
		<br>
		<div class="l2" align="right">
			<textarea class="kind"  id="unpaidT" cols="6" rows="1" style="resize:none" readonly>미결제</textarea>
			<textarea class="kind" id="expT" cols="6" rows="1" style="resize:none" readonly>기간만료</textarea>
			<textarea class="kind" id="monthT" cols="6" rows="1" style="resize:none" readonly>월 회원</textarea>
			<textarea class="kind" id="dayT" cols="6" rows="1" style="resize:none" readonly>일 회원</textarea>
		
		</div>

		
		<div id="box">
		
		
		
		<button id="month">
		<label>1개월권</label><br>
		<label>이호정</label><br>
		<label>라운지 이용</label><br>
		<label>6/22~7/21</label>
		</button>
		
		<button id="exp">
		<label>1개월권</label><br>
		<label>고종현</label><br>
		<label>라운지 이용</label><br>
		<label>6/10~7/9</label>
		</button>
		
		<button id="unpaid">
		<label>1개월권</label><br>
		<label>김범근</label><br>
		<label>라운지 이용</label><br>
		<label>6/28~7/27</label>
		</button>
		
		<button id="day">
		<label>1일권</label><br>
		<label>장욱</label><br>
		<label>라운지 이용</label><br>
		<label>6/29</label>
		</button>
		
		
		<button id="month">
		<label>1개월권</label><br>
		<label>이호정</label><br>
		<label>라운지 이용</label><br>
		<label>6/22~7/21</label>
		</button>
		
		<button id="exp">
		<label>1개월권</label><br>
		<label>고종현</label><br>
		<label>라운지 이용</label><br>
		<label>6/10~7/9</label>
		</button>
		
		<button id="unpaid">
		<label>1개월권</label><br>
		<label>김범근</label><br>
		<label>라운지 이용</label><br>
		<label>6/28~7/27</label>
		</button>
		
		<button id="day">
		<label>1일권</label><br>
		<label>장욱</label><br>
		<label>라운지 이용</label><br>
		<label>6/29</label>
		</button>
		
		
		<button id="month">
		<label>1개월권</label><br>
		<label>이호정</label><br>
		<label>라운지 이용</label><br>
		<label>6/22~7/21</label>
		</button>
		
		<button id="exp">
		<label>1개월권</label><br>
		<label>고종현</label><br>
		<label>라운지 이용</label><br>
		<label>6/10~7/9</label>
		</button>
		
		<button id="unpaid">
		<label>1개월권</label><br>
		<label>김범근</label><br>
		<label>라운지 이용</label><br>
		<label>6/28~7/27</label>
		</button>
		
		<button id="day">
		<label>1일권</label><br>
		<label>장욱</label><br>
		<label>라운지 이용</label><br>
		<label>6/29</label>
		</button>
		
		
		<button id="month">
		<label>1개월권</label><br>
		<label>이호정</label><br>
		<label>라운지 이용</label><br>
		<label>6/22~7/21</label>
		</button>
		
		<button id="exp">
		<label>1개월권</label><br>
		<label>고종현</label><br>
		<label>라운지 이용</label><br>
		<label>6/10~7/9</label>
		</button>
		
		<button id="unpaid">
		<label>1개월권</label><br>
		<label>김범근</label><br>
		<label>라운지 이용</label><br>
		<label>6/28~7/27</label>
		</button>
		
		<button id="day">
		<label>1일권</label><br>
		<label>장욱</label><br>
		<label>라운지 이용</label><br>
		<label>6/29</label>
		</button>
		
		<div class="btn2" id="btn2"></div>
		
		
		</div>
		
		
		
		<script>
		var month = 12;
		var day = 7;
		var pay = 2;
		var expiration = 3;
		
		var month = 12;
		var day = 7;
		var pay = 2;
		var expiration = 3;
		
		var name = "이호정";
		var kind = "일권"
		var nKind = 1;
		var term = "7/4 - 8/3";
		
		
		$(function(){
			$('#btn2').append(function(){
				var kinds = null;
				var bgId = null;
				switch(kinds){
				case month: bgId = month; break;
				case pay: bgId = pay; break;
				case exp: bgId = exp; break;
				case day: bgId = day; break;
				}
		        var sentence = "";
		        sentence +='<button id=' + bgId + '>';
		        sentence +='<div>' + nKind + kind + '</div>';
		        sentence+='<div>'+ name +'</div>';
		        sentence+='<div>라운지 이용</div>';
		        sentence+='<div>'+ term +'</div>';
	            sentence +="</button>";
		        
		        return sentence;
		    });
		});
	
		
		
		</script>
	</section>

</body>
</html>