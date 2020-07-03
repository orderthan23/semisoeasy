<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	#moHead {
		padding:0.05px;
		background-color: lightgray;
		font-weight: bolder;
		text-align:left;
	}
	.title {
		font-weight: bolder;
		color:#40A6B4;	
		
	}
	#select {
		align:left;
	}
	#number {
		border:2px solid lightgray;
		border-radius: 5px;
	}
	input, textarea, select {
		border:2px solid lightgray;
		border-radius: 5px;
		
	}
	#rinfo {
		text-align: top;
	}
</style>
</head>
<body>
<div align="center" id="moHead"><p id="moText1">&nbsp;&nbsp;&nbsp;&nbsp;직접 예약</p></div>
<div align="center">
	<form>
		<table>
			<tr>
				<td class="title"><b>예약 일정 선택   </b></td>
				<td colspan="2"><input type="date" /> ~ <input type="date"/></td>
			</tr>
			<tr>
				<td class="title"><b>예약 인원 선택</b></td>
				<td colspan="2"><div align="center" id="number">1</div><td>
			</tr>
			<tr>
				<td colspan="2" class="title"><b>공간 선택</b></td>
				<td id="select" align="left">
					<select name="place" align="left">
						<option>=====선택=====</option>
						<option value="place1" label="센터1">센터1</option>
						<option value="place2" label="센터2">센터2</option>
						<option value="place3" label="센터3">센터3</option>
						<option value="place4" label="센터4">센터4</option>
						<option value="place5" label="센터5">센터5</option>
					</select>
				</td>
			</tr>
			<tr>
				<td rowspan="5" class="title" id="rInfo">예약자 정보</td>
			</tr>
			<tr>
				<td>예약자명</td>
				<td><input type="text" id="name1"></td>
			</tr>
			<tr>
				<td>사용자명</td>
				<td><input type="text" id="name2"></td>
			</tr>
			<tr>
				<td>연락처</td>
				<td><input type="tel" id="tel"></td>
			</tr>
			<tr>
				<td>이메일</td>
				<td><input type="email" id="email"></td>
			</tr>
			<tr>
				<td class="title">요청사항</td>
				<td colspan="2"><textarea cols="35" rows="10" id="textarea">
				</textarea></td>
			</tr>
		</table>
		<br>
   		<div align="center">
	      	<button id="btnL" type="submit">결제</button>
	      	<button class="btnR" id="" type="reset">취소</button>
	      	<button class="btnR" id="" type="submit">확인</button>
  		</div>
  		
  		
	</form>
</div>
</body>
</html>