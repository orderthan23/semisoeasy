<%@page import="com.kh.login.host.manageReserve.model.vo.PaymentRequest"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.* ,com.kh.login.guest.model.vo.*, com.kh.login.host.manageReserve.model.vo.PageInfo"%>
<!DOCTYPE html>

<html>
<head>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<link rel="stylesheet" href="/login/css/layout.css">

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
	<%
		ArrayList<ReserveHistory> reserveList = (ArrayList<ReserveHistory>)request.getAttribute("reserveList");
		String msg = (String)request.getAttribute("msg");
		PageInfo pi = (PageInfo)request.getAttribute("pi");
		String url = (String)request.getAttribute("url");
		String root = (String)request.getAttribute("root"); 
		
		int listCount = pi.getListCount();
		int currentPage = pi.getCurrentPage();
		int maxPage = pi.getMaxPage();
		int startPage = pi.getStartPage();
		int endPage = pi.getEndPage();
		ArrayList<String> acceptTypeArr = new ArrayList<String>();
		ArrayList<String> reserveStatusArr = new ArrayList<String>();
		ArrayList<String> payStatusArr = new ArrayList<>();
		ArrayList<String> seatTypeArr = new ArrayList<>();
		ArrayList<String> startUseArr = new ArrayList<>();
		ArrayList<String> endUseArr = new ArrayList<>();
		ArrayList<String> hasReviewArr = new ArrayList<>();
		ArrayList<String> reserveDate = new ArrayList<>();
		ArrayList<String> spaceTypeArr = new ArrayList<>(); 
		
		for(ReserveHistory rh : reserveList){
			switch(rh.getAcceptStatus()){
			case 1: acceptTypeArr.add("승인필요"); break;
			case 2: acceptTypeArr.add("승인완료"); break;
			case 3: acceptTypeArr.add("바로예약"); break;
			case 4: acceptTypeArr.add("예약거절"); break;
			}
			switch(rh.getReserveStatus()){
			case 1: reserveStatusArr.add("사용전"); break;
			case 2: reserveStatusArr.add("예약취소"); break;
			case 3: reserveStatusArr.add("사용중"); break;
			case 4: reserveStatusArr.add("사용완료"); break;
			case 5: reserveStatusArr.add("사용전"); break;
			}
			
			switch(rh.getPayStatus()){
			case -1 : payStatusArr.add("결제대기"); break;
			case 1: payStatusArr.add("결제완료"); break;
			case 2: payStatusArr.add("호스트취소"); break;
			case 3: payStatusArr.add("본인취소"); break;
			}
			
			switch(rh.getSeatType()){
			case "U" : seatTypeArr.add("자유석"); break;
			case "F" : seatTypeArr.add("지정석"); break;
			}
			
			switch(rh.getSpaceType()){
			case 1 : spaceTypeArr.add("독립오피스"); break; 
			case 2 : spaceTypeArr.add("코워킹스페이스"); break;
			}
			
			startUseArr.add(rh.getStartUse().toString());
			endUseArr.add(rh.getEndUse().toString());
			reserveDate.add(rh.getReserveDate().toString());
			
			switch(rh.getHasReview()){
			case "WAIT": hasReviewArr.add("작성대기");
			case "ABLE": hasReviewArr.add("작성가능");
			case "COMP": hasReviewArr.add("작성완료");
			}
			
		
		}
	%>
	
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
		<h1 style="margin : 0;"><%=loginUser.getmName()+"님의 " +msg %></h1>
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
				<%for(int i=0; i<reserveList.size(); i++) {%>
				<tr class="pCompleteInfo">
					<td style="font-size:13px;" class="spaceNames"><%=reserveList.get(i).getSpaceName() %></td>
					<td><%=spaceTypeArr.get(i) %></td>
					<td><%=startUseArr.get(i)%></td>
					<td><%=endUseArr.get(i)%> </td>
					<td><%=reserveList.get(i).getPersonCount()%></td>
					<td class="spaceCharge"><%=reserveList.get(i).getCharge()%></td>
					<td><%=reserveList.get(i).getPayMethod() %></td>
					<td><label class="payProgress"></label></td>
					<td><label class="agreeProgress"></label></td>
					<td class="reserveSpace"><label class="reserveStatus"></label><input type="hidden" class="reserveNumber" value=<%=reserveList.get(i).getReserveNo() %>></td>
					<td><a href="#" class="reviewExistance"></a></td>
					<td class="cancleZone"><button type="button" class="cancle" >취소</button></td>
				</tr>
				
			
		<script>
		$(document).ready(function(){
		
			var pNum = "<%=payStatusArr.get(i)%>"
			switch(pNum){
			case "결제대기": $('.payProgress:nth(<%=i%>)').text(pNum).css({bordercolor:"blue", color:"blue"}); break;
			case "결제완료": $('.payProgress:nth(<%=i%>)').text(pNum).css({bordercolor:"red", color:"red"}); break;
			case "호스트취소": $('.payProgress:nth(<%=i%>)').text(pNum).css({bordercolor:"purple", color:"purple"}); break;
			case "본인취소": $('.payProgress:nth(<%=i%>)').text(pNum).css({bordercolor:"gray", color:"gray"}); break;
			}
			var aNum = "<%=acceptTypeArr.get(i)%>"
			switch(aNum){
			case "승인필요": $('.agreeProgress:nth(<%=i%>)').text(aNum).css({bordercolor:"blue", color:"blue"}); break;
			case "승인완료": $('.agreeProgress:nth(<%=i%>)').text(aNum).css({bordercolor:"green", color:"green"}); break;
			case "바로예약": $('.agreeProgress:nth(<%=i%>)').text(aNum).css({bordercolor:"gray", color:"gray"}); break;
			case "예약거절": $('.agreeProgress:nth(<%=i%>)').text(aNum).css({bordercolor:"red", color:"red"}); break;
			
			}
			var rNum = "<%=reserveStatusArr.get(i)%>"
			switch(rNum){
			case "사용전": $('.reserveStatus:nth(<%=i%>)').text("사용전").css({bordercolor:"blue", color:"blue"}); break;
			case "예약취소": $('.reserveStatus:nth(<%=i%>)').text(rNum).css({bordercolor:"red", color:"red"}); break;
			case "사용중": $('.reserveStatus:nth(<%=i%>)').text(rNum).css({bordercolor:"gray", color:"gray"}); break;
			case "사용완료": $('.reserveStatus:nth(<%=i%>)').text(rNum).css({bordercolor:"purple", color:"purple"}); break;
			
			}
			
			var rvNum = "<%=hasReviewArr.get(i)%>"
			switch(rvNum){
			case "작성대기": $('.reviewExistance').text("-"); break;
			case "작성가능": $('.reviewExistance').text("작성하기"); break;
			case "작성완료": $('.reviewExistance').text("보러가기").css({color:"#3DB6AE"}); break;
			
			}
			if(aNum=="결제완료" && rNum=="사용전"){
				$('.cancle:nth(<%=i%>)').show();				
			}else if(aNum="승인완료" && pNum=="결제대기" ){
				$('.cancle:nth(<%=i%>)').show().text("결제").addClass('letsPay');
			}else{
				$('.cancle:nth(<%=i%>)').hide();
			}
		});
		</script>
				<%
					}
				%>
			</table>
			<form id="payInfo" action="<%=request.getContextPath()%>/payments/complete" method="post">
				<input type="hidden" id="amount" name="amount">
				<input type="hidden" id="payNo" name="payNo">
				<input type="hidden" id="reservNo" name="reserveNo">
				<input type="hidden" id="methodCode" name="methodCode">
	
			</form>
		</div>
	</section>
	<footer><%@ include file="../../views/common/footer.jsp" %></footer>
	<script src="https://cdn.iamport.kr/js/iamport.payment-1.1.5.js" type="text/javascript"></script>
	<script>
		$(function(){
			IMP.init('imp14313139'); // 아임포트 관리자 페이지의 "시스템 설정" > "내 정보" 에서 확인 가능
			$('.letsPay').click(function(){
				var spaceName = $(this).parent().siblings('.spaceNames').text();
				var charge = $(this).parent().siblings('.spaceCharge').text();
				var reserveNum = $(this).parent().siblings('.reserveSpace').children('.reserveNumber').val();
				 
				console.log(spaceName);
				console.log(reserveNum);
				IMP.request_pay({
				    pay_method : 'card',
				    merchant_uid : 'merchant_' + new Date().getTime(),
				    name : spaceName,
				    amount : /*charge*/ 1000,
				    buyer_email : "<%=loginUser.getmEmail()%>",
				    buyer_name : "<%=loginUser.getmName()%>",
				    buyer_tel : "<%=loginUser.getmPhone()%>",
				}, function(rsp) {
					
				    if ( rsp.success ) {
				        var msg = '결제가 완료되었습니다.';
				        msg += '고유ID : ' + rsp.imp_uid;
				        msg += '상점 거래ID : ' + rsp.merchant_uid;
				        msg += '결제 금액 : ' + rsp.paid_amount;
				        msg += '카드 승인번호 : ' + rsp.apply_num;
				        msg += '결제 수단  :'+rsp.pay_method;
				       /*  $.ajax({
				        	url:"login/insertPayHistory",
				        	data: {payId : rsp.merchant_uid,
				        			payCharge : rsp.paid_amount,
				        			cardApplyNum : rsp.apply_num
				        	}
				        }); */
				        $('#amount').val(rsp.paid_amount);
				        $('#payNo').val(rsp.merchant_uid);
				        $('#methodCode').val(rsp.pay_method);
				        $('#reservNo').val(reserveNum); 
				        console.log(rsp.pay_method)
				        alert("결제가 완료 되었습니다 "+msg);
				        $('#payInfo').submit();
				      } else {
				        alert("결제에 실패하였습니다. 에러 내용: " +  rsp.error_msg);
				      }
				    });
				        
				   
				});
			
			});
			
			
		
	
		
	
		
	</script>
</body>
</html>