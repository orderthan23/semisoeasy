<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<link rel="stylesheet" type="text/css" href="http://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.css"/>
<link rel="stylesheet" href="http://cdn.jsdelivr.net/npm/xeicon@2.3.3/xeicon.min.css">
<script type="text/javascript" src="http://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.min.js"></script>
<style>
        .visual{
            position: relative;
            width: 100%;
        
        }
        .visual button{
            position : absolute;
            z-index: 10;
            top: 50%;
            transform: translateY(-50%);
            width : 71px;
            height : 71px;
            border: none;
            border-radius: 100%;
            background: rgba(0,0,0,.5);

            
        }
        .visual button:before{
            font-family: 'xeicon';
            color: #fff;
            font-size : 45px;
        }
        .visual button.slick-prev {
            left: 50px;
            font-size : 0;
            color : transparent;

        }
        .visual button.slick-prev::before{
            content:"\e93d";
            font-family: 'xeicon';
        }

        .visual button.slick-next{
            right: 50px;
            font-size : 0;
            color : transparent;
        }

        .visual button.slick-next::before{
            content:"\e940";
            font-family: 'xeicon';
        }

        .visual div p {
            position : absolute;
     	  	 top: 35%;
           	left: 30%;
            font-size: 60px;
            font-weight: bolder;
            color : black;
       

        }
       
         .visual div p label {
           
            font-weight: bolder;
			font-size : 30px;
        }
        
        .slick-list{
        	width: 100%;
        }

    </style>
</head>
<body>
	<header><%@ include file="../common/header.jsp"%></header>
	<nav><%@ include file="../common/aside.jsp"%></nav>
	
	<!-- 공간명 / 가격 -->
	<h1 style="color:#40a4b6; margin-left:330px; font-weight: bolder;">성수동 인생공간 코워킹스페이스</h1>
	<table style="margin-left:330px">
		<tr>
			<td style="color:#c4c4c4; font-size:25px;">300,000원 / 1개월 </td>
		<tr>
	</table>
	<br><br>
	
	<!-- 사진 가운데정렬 -->
	<div class="visual">
			<div 
				style="background-image: url(../../images/area/area22-4.png); display: block; width: 500px; height:700px; background-repeat : no-repeat; background-size : cover;">
			</div>
			<div 
				style="background-image: url(../../images/area/area23-2.png); display: block; width: 500px; height:700px; background-repeat : no-repeat; background-size : cover;">
			</div>
			<div 
				style="background-image: url(../../images/area/area23-4.png); display: block; width: 500px; height:700px; background-repeat : no-repeat; background-size : cover;">
			</div>
		</div>
	<br><br>
	
	<!-- 공간 소개 창 -->
	<div align="center">
		<div style="border-radius:10px; width:700px; height:500px; background:white; border:3px solid lightgray; text-align:left; padding:20px;">
			따뜻한 사람들을 위한 코워킹스페이스 성수동 인생공간입니다.<br><br>

			성수동 인생공간은 자신의 인생일(천직)을 찾고, 이를 완성해나가는 사람들이 채워나가는 코<br>
			워킹스페이스입니다.<br>
			다른 코워킹스페이스와는 달리 인생공간은 성수동의 느낌을 살린 빈티지스러운 인테리어가<br>
			특징적인 공간입니다.<br><br>

			스타트업, 프리랜서, 프로젝트 팀 등 뜨거운 열정을 가지고 자신의 인생일을 찾아나서는 분들 <br>
			모두 환영합니다.<br>
			모든 것이 준비되어 있습니다. 열정과 재능만 가지고 오세요. 최적의 업무공간을 경험하실 수 <br>
			있습니다.<br><br>

			OFFICE 정보<br>
			- 4~5인 기준의 독립된 PRIVATE OFFICE (3층 위치)<br><br>

			1~2인의 경우 SHARE OFFICE로 이용가능<br>
			- 공동현관 도어락, 개별 오피스 열쇠 제공<br>
			- 24시간 첨단경호시스템<br>
			- 복사기, 프린트, Wifi, 개별 냉난방 서비스 제공<br>
			- 월 1회 무료 변호사, 변리사, 세무사 등 서비스 제공<br>
		</div>
	</div>
	<Br><br>
	
	<!-- 가격 정책 -->
	<p style="color:#40a4b6; margin-left:330px; font-size:20px;"><b>
		가격정책
	</b></p>
	<div align="center">
		<div style="border-radius:10px; width:700px; height:100px; background:white; border:3px solid lightgray; text-align:left; padding:20px;">
			3개월 이상 결제 시 일당 3천원 할인
			<br><br>
			6개월 이상 결제 시 일당 5천원 할인	
		</div>
	</div>
	<Br><br>
	
	<!-- 운영시간 -->
	<p style="color:#40a4b6; margin-left:330px; font-size:20px;"><b>
			운영시간
	</b></p>
		
		<table style="border-spacing:15px; margin-left:330px;">
			<tr>
				<td style="padding:10px;"><b>월</b>00:00 ~ 24:00</td>
				<td style="padding:10px;"><span style="color:blue;"><b>토</b></span>00:00 ~ 24:00</td>
			</tr>
			<tr>
				<td style="padding:10px;"><b>화</b>00:00 ~ 24:00</td>
				<td style="padding:10px;"><span style="color:red;"><b>일</b></span>00:00 ~ 24:00</td>
			</tr>
			<tr>
				<td style="padding:10px;"><b>수</b>00:00 ~ 24:00</td>
				<td style="padding:10px;"></td>
			</tr>
			<tr>
				<td style="padding:10px;"><b>목</b>00:00 ~ 24:00</td>
				<td style="padding:10px;"></td>
			</tr>
			<tr>
				<td style="padding:10px;"><b>금</b>00:00 ~ 24:00</td>
				<td style="padding:10px;"></td>
			</tr>
		</table>
		<br>
		
		<!-- 공간 주소 / 공간 유형 / 예약가능인원 / 예약일정설정 -->
		<table style="margin-left:330px;">
			<tr>
				<td width="180px;" height="50px;" style="color:#40a4b6; margin-left:330px; font-size:20px;"><b>공간주소</b></td>
				<td>서울특별시 강남구 역삼로 215 남국빌딩 2층</td>
			</tr>
			<tr>
				<td width="180px;" height="50px;" style="color:#40a4b6; margin-left:330px; font-size:20px;"><b>공간 유형</b></td>
				<td>코워킹스페이스</td>
			</tr>
			<tr>
				<td width="180px;" height="50px;" style="color:#40a4b6; margin-left:330px; font-size:20px;"><b>예약 가능 인원</b></td>
				<td>1~5명</td>
			</tr>
			<tr>
				<td width="180px;" height="50px;" style="color:#40a4b6; margin-left:330px; font-size:20px;"><b>예약 일정 설정</b></td>
				<td></td>
			</tr>
		</table>
		
		<!-- 캘린더 api 대신 일단 사진 -->
		<div align="center">
			<img src="../../images/etc/calendar.png" width="600px">
		</div>
		<br>
		
		<!-- 날짜 ~부터 ~까지 -->
		<table align="center" width="500px">
			<tr>
				<td colspan="2" align="center"><input style="border: 1.5px solid #40a4b6;" type="date">부터</td>
				<td colsapn="2" align="center"><input style="border: 1.5px solid #40a4b6;" type="date">까지</td>
			</tr>
		</table>
		<br><br><br>
		
		<!-- 예약 인원 선택 -->
		<table align="center" width="800">
			<tr>
				<td style="color:#40a4b6; margin-left:330px; font-size:20px; width:200px;"><b>예약 인원 선택</b></td>
				<td style="width:200px;" colspan="2"><input style="border: 1.5px solid #40a4b6;" type="number" value="1"></td>
				<td style="width:400px;">명</td>
			</tr>
		</table>
		<br><br>
		
		<!-- 예약자 정보 -->
		<table align="center" width="800px">
			<tr>
				<td style="color:#40a4b6; margin-left:330px; font-size:20px; width:200px; height:50px;"><b>예약자 정보</b></td>
				<td width="150px"><b>예약자명</b></td>
				<td width="200px"><input style="border: 1.5px solid #40a4b6;" type="text" id="reserNm"></td>
				<td width="200px"></td>
			</tr>
			<tr>
				<td width="200px" height="50px"></td>
				<td width="150px"><b>사용자명</b></td>
				<td><input style="border: 1.5px solid #40a4b6;" type="text" placeholder="사용자명을 입력하세요" id="userNm"></td>
				<td><label for="reserSame"><input type="checkbox" id="reserSame">예약자와 동일</label></td>
			</tr>
			<tr>
				<td width="200px" height="50px"></td>
				<td width="150px"><b>연락처</b></td>
				<td><input  style="border: 1.5px solid #40a4b6;"type="tel"></td>
				<td></td>
			</tr>
			<tr>
				<td width="200px" height="50px"></td>
				<td width="150px"><b>이메일</b></td>
				<td><input  style="border: 1.5px solid #40a4b6;"type="email"></td>
				<td></td>
			</tr>
			<tr>
				<td width="200px" height="50px"></td>
				<td width="150px"><b>요청사항</b></td>
				<td><textarea cols="30" rows="10" style="resize:none; border: 1.5px solid #40a4b6;" placeholder="요청사항을 입력하세요"></textarea></td>
				<td></td>
			</tr>
		</table>
		<br><br>
		
		<!-- 호스트 정보 -->
		<table align="center" width="800px">
			<tr>
				<td style="color:#40a4b6; margin-left:330px; font-size:20px; width:200px; height:50px;"><b>호스트 정보</b></td>
				<td width="110px"><b>상호명</b></td>
				<td>보케이션베케이션 코리아</td>
			</tr>
			<tr>
				<td width="200px" height="50px"></td>
				<td width="110px"><b>대표자명</b></td>
				<td>류재언</td>
			</tr>
			<tr>
				<td width="200px" height="50px"></td>
				<td width="110px"><b>소재지</b></td>
				<td>서울특별시 성동구 성수동 2가 299-182 성수동 인생공간</td>
			</tr>
			<tr>
				<td width="200px" height="50px"></td>
				<td width="110px"><b>사업자번호</b></td>
				<td>3898600362</td>
			</tr>
			<tr> 
				<td width="200px" height="50px"></td>
				<td width="110px"><b>연락처</b></td>
				<td>0504-0905-6915 yourspacelife@gmail.com</td>
			</tr>
		</table>
		<br><br>
		
		<!-- 환불 정책 -->
		<table align="center" width="800px">
			<tr>
				<td style="color:#40a4b6; margin-left:330px; font-size:20px; width:200px; height:50px;"><b>환불 정책</b></td>
				<td width="200px"><b>이용 8일 전</b></td>
				<td>100% 환불</td>
			</tr>
			<tr>
				<td height="50px"></td>
				<td width="200px"><b>이용 7일 전</b></td>
				<td>90% 환불</td>
			</tr>
			<tr>
				<td height="50px"></td>
				<td width="200px"><b>이용 6일 전</b></td>
				<td>90% 환불</td>
			</tr>
			<tr>
				<td height="50px"></td>
				<td width="200px"><b>이용 5일 전</b></td>
				<td>90% 환불</td>
			</tr>
			<tr>
				<td height="50px"></td>
				<td width="200px"><b>이용 4일 전</b></td>
				<td>90% 환불</td>
			</tr>
			<tr>
				<td height="50px"></td>
				<td width="200px"><b>이용 3일 전</b></td>
				<td>90% 환불</td>
			</tr>
			<tr>
				<td height="50px"></td>
				<td width="200px"><b>이용 2일 전</b></td>
				<td>90% 환불</td>
			</tr>
			<tr>
				<td height="50px"></td>
				<td width="200px"><b>이용 1일 전</b></td>
				<td>90% 환불</td>
			</tr>
			<tr>
				<td height="50px"></td>
				<td width="200px"><b>이용 당일</b></td>
				<td style="color:red;">환불 불가</td>
			</tr>
		</table>
		<br><br>
		
		<!-- 예약결과, 서비스 동의 -->
		<div align="center">
			<div style="border-radius:10px; width:700px; height:600px; background:white; border:3px solid lightgray;">
				
				<!-- 예약결과 -->
				<table width="650">
					<tr>
						<td style="color:#40a4b6; margin-left:30px; font-size:20px; width:150px; height:50px;"><b>예약 결과</b></td>
						<td><b>예약 날짜</b></td>
						<td style="text-align:center;">----년 --월 --일 부터</td>
						<td style="text-align:center;">----년 --월 --일 까지</td>
					</tr>
					<tr>
						<td width="150px" height="50px"></td>
						<td><b>예약 인원</b></td>
						<td style="text-align:center;">1</td>
						<td style="text-align:left;">명</td>
					</tr>
					<tr>
						<td width="150px" height="50px"></td>
						<td></td>
						<td colspan="2" style="text-align:right; font-size:20px; color:gray;">300,000원 / 1개월 × 1 명</td>
					</tr>
					<tr>
						<td width="150px" height="50px"></td>
						<td></td>
						<td colspan="2" style="text-align:right; font-size:30px; color:#40a4b6;">300,000원</td>
					</tr>
					<tr>
						<td width="150px" height="50px"></td>
						<td></td>
						<td colspan="2" style="text-align:right; font-size:15px; color:#c4c4c4;">VAT 포함 가격</td>
					</tr>
				</table>
				<br>
				
				<!-- 서비스 동의 -->
				<table width="650">
					<tr>
						<td style="color:#40a4b6; margin-left:30px; font-size:20px; width:150px; height:50px;"><b>서비스 동의</b></td>
						<td><label for="allAgr"><input type="checkbox" id="allAgr"><b>전체 동의</b></label></td>
					</tr>
					<tr>
						<td height="50px"></td>
						<td><label for="agr1"><input type="checkbox" id="agr1">위 공간의 예약조건 확인 및 결제 진행 동의</label></td>
					</tr>
					<tr>
						<td height="50px"></td>
						<td><label for="agr2"><input type="checkbox" id="agr2">환불 정책 안내에 대한 동의</label></td>
					</tr>
					<tr>
						<td height="50px"></td>
						<td><label for="agr3"><input type="checkbox" id="agr3">개인정보 제3자 제공 동의</label></td>
					</tr>
					<tr>
						<td height="50px"></td>
						<td><label for="agr4"><input type="checkbox" id="agr4">개인정보 수집 및 이용 동의</label></td>
				</table>
				
			</div>
		</div>
		<Br><br>
		
		<!-- 예약 버튼 -->
		<div align="center">
			<button onclick="push();" style="color:white; background:#40a4b6; width:120px; height:50px; font-size:20px; border:0; border-radius:10px; cursor:pointer;">예약 신청</button>
		</div>
		
		<br><br><br>
	<footer><%@ include file="../common/footer.jsp"%></footer>
	
	<script>
		function push() {
			alert('예약신청 버튼');
		}
		
		//'예약자와 동일' 체크 시 사용자명 텍스트박스에 예약자명에 입력된 값 가져오기
		$(document).ready(function(){
			$("#reserSame").click(function(){
				if($("#reserSame").prop("checked")) {
					var reserNmVal = $("#reserNm").val();
					$("#userNm").val(reserNmVal);
				} else {
					$("#userNm").val("");
				}
			});
		});
		
		//전체동의 버튼 눌렀을 때 밑에 체크항목들도 다 체크되는 것
		$(document).ready(function(){
			$("#allAgr").click(function(){
				if($("#allAgr").prop("checked")) {
					$("#agr1").prop("checked", true);
					$("#agr2").prop("checked", true);
					$("#agr3").prop("checked", true);
					$("#agr4").prop("checked", true);
				} else {
					$("#agr1").prop("checked", false);
					$("#agr2").prop("checked", false);
					$("#agr3").prop("checked", false);
					$("#agr4").prop("checked", false);
				}
			});
		});

		$('.visual').slick({
			  infinite: true,
			  speed: 500,
			  fade: true,
			  cssEase: 'linear',
			  autoplay: true,
			  autoplaySpeed: 2000,
		});
		
	</script>
	
</body>
</html>















