<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
String name = "린가드";
int placeQTY = 10;
int pCompleteQTY = 10;
int pNum = 2; // 결제 여부 번호
int aNum = 2; // 승인 처리 여부 번호
int rNum = 1; // 예약 상태
int rvNum =3; // 나의 후기
%>
<html>
<head>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<link rel="stylesheet" href="../../css/layout.css">

<meta charset="UTF-8">
<style>
#wrapper {
	width: 90%;
	margin-left: auto;
	margin-right: auto;
}

#wrapper select {
	float: right;
}

th {
	background: #E4EEFA;
	width: 8%;
	font-size: 17px;
	font-weight: bolder;
	clear: both;
}

.pCompleteInfo td {
	text-align: center;
	height: 30px;
	background: #fff;
}

.pCompleteInfo td a {
	text-decoration: none;
	color: black;
	font-size: 15px;
	font-weight: bolder;
}

#wrapper h1 {
	font-size: 30px;
	font-weight: bolder;
}

.pCompleteInfo td label {
	border: solid 2px;
	font-size: 15px;
	font-weight: bolder;
	padding: 5px;
}

.cancle {
	visibility: hidden;
	display: none;
	background: orangered;
	border-radius: 10px;
	color: white;
	outline: none;
	border: none;
}

.pCompleteInfo td:last-child {
	width: 3%;
	background: transparent;
}
</style>
<title>SO Easy</title>
</head>
<body>
	<header><%@ include file="../../views/common/header.jsp" %></header>

	<nav><%@ include file="../../views/common/aside.jsp" %>

		<div class="colMenu">
			<label class="colMenuTitle">예약 목록</label>
			 <a class="colMenuButton selectedButton" href="/login/views/guest/reserveList.jsp">예약 내역 리스트</a>
			 <a class="colMenuButton" href="/login/views/guest/pick.jsp">찜 리스트</a>
			 <a class="colMenuButton" href="/login/views/guest/myReview.jsp">리뷰 목록</a>
			 <br><br>
		</div>
		<hr style="margin: 0">
	</nav>
	<section>
		<br>
		<div id="wrapper">
		<br>
		<h1 style="margin : 0;"><%=name %> 님의  예약  내역입니다.</h1>
		<br><br>
		<table align="center"  style="margin:0; width:100%;"  >
				<tr>
					<th height="40px">공간명</th>
					<th height="40px">공간종류</th>
					<th height="40px">사용 시작 날짜</th>
					<th height="40px">사용 종료 날짜</th>
					<th height="40px">예약 인원</th>
					<th height="40px">결제 금액</th>
					<th height="40px">결제 수단</th>
					<th height="40px">결제 여부</th>
					<th height="40px">승인 처리 여부</th>
					<th height="40px">예약 상태</th>
					<th height="40px">나의 후기</th>
				</tr>
				<%for(int i=1; i<=pCompleteQTY; i++) {%>
				<tr class="pCompleteInfo">
					<td style="font-size:13px;"><%="린가드 "+i+"코워킹 스페이스"%></td>
					<td>코워킹 스페이스</td>
					<td><%="2020.07."+i%></td>
					<td><%="2020.07."+(i+10)%> </td>
					<td><%=i%></td>
					<td><%=i*i%></td>
					<td>확인</td>
					<td><label class="payProgress"></label></td>
					<td><label class="agreeProgress"></label></td>
					<td><label class="reserveStatus"></label></td>
					<td><a href="#" class="reviewExistance"></a></td>
					<td class="cancleZone"><button type="button" class="cancle" onclick="letsPay();">취소</button></td>
				</tr>
				<%
					}
				%>
			</table>
		</div>
	</section>
	<footer><%@ include file="../../views/common/footer.jsp" %></footer>
	<script src="https://cdn.iamport.kr/js/iamport.payment-1.1.5.js" type="text/javascript"></script>
	<script>
		$(document).ready(function(){
		
			var pNum = <%=pNum%>
			switch(pNum){
			case 1: $('.payProgress').text("완료").css({bordercolor:"blue", color:"blue"}); break;
			case 2: $('.payProgress').text("취소").css({bordercolor:"red", color:"red"}); break;
			case 3: $('.payProgress').text("결제 대기").css({bordercolor:"purple", color:"purple"}); break;
			case 4: $('.payProgress').text("대기").css({bordercolor:"gray", color:"gray"}); break;
			}
			var aNum = <%=aNum%>
			switch(aNum){
			case 1: $('.agreeProgress').text("승인").css({bordercolor:"blue", color:"blue"}); break;
			case 2: $('.agreeProgress').text("거절").css({bordercolor:"red", color:"red"}); break;
			case 3: $('.agreeProgress').text("대기").css({bordercolor:"gray", color:"gray"}); break;
			
			}
			var rNum = <%=rNum%>
			switch(rNum){
			case 1: $('.reserveStatus').text("예정").css({bordercolor:"blue", color:"blue"}); break;
			case 2: $('.reserveStatus').text("취소").css({bordercolor:"red", color:"red"}); break;
			case 3: $('.reserveStatus').text("대기").css({bordercolor:"gray", color:"gray"}); break;
			case 4: $('.reserveStatus').text("이용 중").css({bordercolor:"purple", color:"purple"}); break;
			case 5: $('.reserveStatus').text("이용 완료").css({bordercolor:"#3DB6AE", color:"#3DB6AE"}); break;
			
			}
			
			var rvNum = <%=rvNum%>
			switch(rvNum){
			case 1: $('.reviewExistance').text("-"); break;
			case 2: $('.reviewExistance').text("작성하기"); break;
			case 3: $('.reviewExistance').text("보러가기").css({color:"#3DB6AE"}); break;
			
			}
			if(aNum==3 || rNum==1){
				$('.cancle').css({visibility:"visible",display:"inline"});				
			}
		});
		
		function letsPay(){
			IMP.init('imp14313139'); // 아임포트 관리자 페이지의 "시스템 설정" > "내 정보" 에서 확인 가능
			IMP.request_pay({
			   
			    pay_method : 'card',
			    merchant_uid : 'merchant_' + new Date().getTime(),
			    name : '주문명:결제테스트',
			    amount : 14000,
			    buyer_email : 'iamport@siot.do',
			    buyer_name : '구매자이름',
			    buyer_tel : '010-1234-5678',
			    buyer_addr : '서울특별시 강남구 삼성동',
			    buyer_postcode : '123-456'
			}, function(rsp) {
				IMP.init('imp14313139'); // 아임포트 관리자 페이지의 "시스템 설정" > "내 정보" 에서 확인 가능
			    if ( rsp.success ) {
			        var msg = '결제가 완료되었습니다.';
			        msg += '고유ID : ' + rsp.imp_uid;
			        msg += '상점 거래ID : ' + rsp.merchant_uid;
			        msg += '결제 금액 : ' + rsp.paid_amount;
			        msg += '카드 승인번호 : ' + rsp.apply_num;
			    } else {
			        var msg = '결제에 실패하였습니다.';
			        msg += '에러내용 : ' + rsp.error_msg;
			    }

			    alert(msg);
			});
		}
		
	</script>
</body>
</html>