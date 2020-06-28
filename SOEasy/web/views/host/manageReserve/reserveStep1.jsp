<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="/login/css/layout.css">
<title>SO Easy</title>
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
	<label>공간 일정 관리</label>
	<label>예약 일정 관리</label>
	<label>라운지 회원 관리</label>
	<label>결제 요청</label>
	
	</nav>

	<br>
	<hr>
	<br>
	<section>
	<button class="btn1">
		<label>직접 예약</label>
	</button>

	<br>

	<img src="">

	<div style="">
		<label>이용 종료</label>
	</div>
	<label>월 회원</label>
	<label>일 회원</label>


	<div>
		<b>날짜 이동 : </b> <input class="m-wrap" type="text" id="basedate"
			name="basedate" value="2020-06-28"
			id="ui_date_picker_change_year_month" readonly="readonly"
			style="font-size: 12px; padding: 3px !important; margin: 0; width: 80px;" />
		<button onclick="javascript:goYesterday('2020-06-28', 'indexAll');"
			class="btn mini gray" style="font-size: 12px;">&lt;</button>
		<button onclick="javascript:goTomorrow('2020-06-28', 'indexAll');"
			class="btn mini gray" style="font-size: 12px;">&gt;</button>
		<button onclick="javascript:goToday('indexAll');"
			class="btn mini gray" style="font-size: 12px;">오늘</button>
	</div>

	<form>
		<label>공간선택</label> <select name="place" size="1" multiple>
			<option value="place1" onclick=test1()>센터1</option>
			<option value="place2">센터2</option>
			<option value="place3">센터3</option>
			<option value="place4">센터4</option>
			<option value="place5">센터5</option>
		</select>

	</form>
	
	<!-- <div>
		<button onclick =test1()>
			예약일정관리
			<table>
				<tr></tr>
			</table>
		</button>
	</div> -->

	<div id="table1">""</div>
	</section>
	<footer><%@ include file="../../common/footer.jsp"%></footer>
	<script>
	/* function test1(){
	var col = 10;
	var row = 32;
	document.write("<TABLE border='1'>")
	for(var i=1;i<col;i++){
	  document.write("<TR>")
	     for(var j=1;j<row;j++){
	           document.write("<TD></TD>");
	   }
	document.write("</TR>");
	}
	document.write("</table>");
	} */

	function test1(){
		var row = 3;
		var col = 5;
		
		document.getElementById('table1').innerHTML = "hello<BR>";
		document.getElementById('table1').innerHTML += '<table id="test">';
		for(var i=1; i<col; i++){
		  document.getElementById('table1').innerHTML += '<tr>';
		     for(var j=1; j<row; j++){
		           document.getElementById('table1').innerHTML += '<td width="20px" height="30px">o</td>';
		  }
		document.getElementById('table1').innerHTML += '</tr>';
		}
		document.getElementById('table1').innerHTML += '</table>';
		}
	
</script>


</body>
</html>