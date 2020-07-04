<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	body {
		background-color:#ECECEC;
		
	}
	.l1 {
		padding:0.05px;
		background-color: lightgray;
		font-weight: bolder;
		text-align:left;
	}
	#box {
		background-color: white;
	}
	button {
		 border: lightgrey 2px solid;
		 background: white;
		 
	}
	.day {
		background-color: lightblue;
	}
	.month {
		
	}
	.exp {
		background-color: pink;
		
	}
	.pay {
		border: dashed;
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
		<button class="btn1">
			<label>직접 예약</label>
		</button>

		<br> <img src="">

		<div class="l1">라운지 이용고객 관리
		<textarea class="kind"  id="pay" cols="6" rows="1" style="resize:none" readonly>미결제</textarea>
		<textarea class="kind" id="exp" cols="6" rows="1" style="resize:none" readonly>기간만료</textarea>
		<textarea class="kind" id="month" cols="6" rows="1" style="resize:none" readonly>월 회원</textarea>
		<textarea class="kind" id="day" cols="6" rows="1" style="resize:none" readonly>일 회원</textarea>
		</div>

		
		<div id="box">
		
		
		
		<button border=>
		<label>1개월권</label><br>
		<label>이호정</label><br>
		<label>라운지 이용</label><br>
		<label>6/22~7/21</label>
		</button>
		
		<button border=>
		<label>1개월권</label><br>
		<label>고종현</label><br>
		<label>라운지 이용</label><br>
		<label>6/10~7/9</label>
		</button>
		
		<button border=>
		<label>1개월권</label><br>
		<label>김범근</label><br>
		<label>라운지 이용</label><br>
		<label>6/28~7/27</label>
		</button>
		
		<button border=>
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
		        var sentence = "";
		        sentence +='<button>';
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