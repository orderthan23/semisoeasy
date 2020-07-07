<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>SO Easy</title>
<meta charset="utf-8">
<link rel="stylesheet" href="../../css/layout.css">
  <!-- Bootstrap core CSS -->
  <link href="/login/css/bootstrap.min.css" rel="stylesheet">

  <!-- Custom styles for this template -->
  <link href="/login/css/blog-post.css" rel="stylesheet">
  
  <script type="text/javascript" src="https://openapi.map.naver.com/openapi/v3/maps.js?ncpClientId=k6u8c2j8h2"></script>
</head>
<body>
		<header><%@ include file="../common/header.jsp" %></header>
		<nav><%@ include file="../common/aside.jsp" %></nav>
		
		<section style="margin:auto; margin-left:120px; padding:0;">
		
		<h1 style="color:#40a4b6; margin-left:210px; font-weight: bolder;">성수동 인생공간 코워킹스페이스</h1>
		<table style="border-spacing:15px; margin-left:200px">
			<tr>
				<td style="padding:15px; color:#c4c4c4; font-size:25px;">300,000원 / 1개월 </td>
				<td style="padding:15px"><button onclick="test1();" style="background:#40b4a6; width:70px; height:30px; outline:0; border:0; color:white; cursor:pointer;">예  약</button></td>
			</tr>
		</table>
		<table style="margin-left:210px; border-spacing:10px;">
			<tr>
				<td style="padding:10px;"><img src="../../images/icon/share.png" style="width:35px;"></td>
				<td style="padding:10px;"><img src="../../images/icon/heart.png" style="width:35px;"></td>
			</tr>
		</table>
		<br>
		<img src="../../images/area/area18-1.png" style="margin-left:210px; width:850px;">
		<p style="font-size:30px; margin-left:210px">
			동네에서 만나는 따뜻한 <br>
			코워킹스페이스
		</p>
		<hr>
		<p style="color:#40a4b6; margin-left:220px; font-size:20px;"><b>
			소개
		</b></p>
		<p style="margin-left:220px;">
			따뜻한 사람들을 위한 코워킹스페이스 성수동 인생공간입니다. <br><br>

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
			- 복사기, 프린트, Wifi, 개별 냉난방 서비스 제공!<br>
			- 월 1회 무료 변호사, 변리사, 세무사 등 서비스 제공!<br><br>
		</p>
		<br>
		<p style="color:#40a4b6; margin-left:220px; font-size:20px;"><b>
			운영시간
		</b></p>
		
		<table style="margin-left: 220px; border-spacing:15px;">
			<tr>
				<td style="padding:20px;"><b>월</b>00:00 ~ 24:00</td>
				<td style="padding:20px;"><span style="color:blue;"><b>토</b></span>00:00 ~ 24:00</td>
			</tr>
			<tr>
				<td style="padding:20px;"><b>화</b>00:00 ~ 24:00</td>
				<td style="padding:20px;"><span style="color:red;"><b>일</b></span>00:00 ~ 24:00</td>
			</tr>
			<tr>
				<td style="padding:20px;"><b>수</b>00:00 ~ 24:00</td>
				<td style="padding:20px;"></td>
			</tr>
			<tr>
				<td style="padding:20px;"><b>목</b>00:00 ~ 24:00</td>
				<td style="padding:20px;"></td>
			</tr>
			<tr>
				<td style="padding:20px;"><b>금</b>00:00 ~ 24:00</td>
				<td style="padding:20px;"></td>
			</tr>
		</table>
		<br><br>
		<p style="color:#40a4b6; margin-left:220px; font-size:20px;"><b>
			편의시설
		</b></p>
		
		<!-- 편의시설 사진들 넣기 -->
		<table style="margin-left:220px; border-spacing:15px;">
			<tr>
				<td style="padding:22px;"><img src="../../images/icon/24h.png" width="100px" style="opacity:0.2;"></td>
				<td style="padding:22px;"><img src="../../images/icon/365days.png" width="100px"></td>
				<td style="padding:22px;"><img src="../../images/icon/airCon.png" width="100px"></td>
				<td style="padding:22px;"><img src="../../images/icon/animal.png" width="100px" style="opacity:0.2;"></td>
				<td style="padding:22px;"><img src="../../images/icon/beam.png" width="100px" style="opacity:0.2;"></td>
				<td style="padding:22px;"><img src="../../images/icon/board.png" width="100px"></td>
			</tr>
			<tr>
				<td style="padding:22px;"><img src="../../images/icon/cafe.png" width="100px" style="opacity:0.2;"></td>
				<td style="padding:22px;"><img src="../../images/icon/copyPrint.png" width="100px"></td>
				<td style="padding:22px;"><img src="../../images/icon/delivery.png" width="100px" style="opacity:0.2;"></td>
				<td style="padding:22px;"><img src="../../images/icon/doorLock.png" width="100px"></td>
				<td style="padding:22px;"><img src="../../images/icon/fax.png" width="100px"></td>
				<td style="padding:22px;"><img src="../../images/icon/heater.png" width="100px"></td>
			</tr>
			<tr>
				<td style="padding:22px;"><img src="../../images/icon/kitchen.png" width="100px" style="opacity:0.2;"></td>
				<td style="padding:22px;"><img src="../../images/icon/locker.png" width="100px" style="opacity:0.2;"></td>
				<td style="padding:22px;"><img src="../../images/icon/mail.png" width="100px"></td>
				<td style="padding:22px;"><img src="../../images/icon/parking.png" width="100px"></td>
				<td style="padding:22px;"><img src="../../images/icon/rounge.png" width="100px"></td>
				<td style="padding:22px;"><img src="../../images/icon/snack.png" width="100px" style="opacity:0.2;"></td>
			</tr>
			<tr>
				<td style="padding:22px;"><img src="../../images/icon/terrace.png" width="100px"></td>
				<td style="padding:22px;"><img src="../../images/icon/tv.png" width="100px"></td>
				<td style="padding:22px;"><img src="../../images/icon/wareHouse.png" width="100px" style="opacity:0.2;"></td>
				<td style="padding:22px;"><img src="../../images/icon/waterMachine.png" width="100px"></td>
				<td style="padding:22px;"><img src="../../images/icon/wifi.png" width="100px"></td>
				<td style="padding:22px;"><img src="../../images/icon/plug.png" width="100px"></td>
			</tr>
		</table>

		<br><br>	
		<p style="color:#40a4b6; margin-left:220px; font-size:20px;"><b>
			이용기간
		</b></p>
		
		<table style="margin-left:220px;">
			<tr>
				<td style="padding:20px;"><b>이용 8일 전</b></td>
				<td style="padding:20px;">100% 환불</td>
			</tr>
			<tr>
				<td style="padding:20px;"><b>이용 7일 전</b></td>
				<td style="padding:20px;">90% 환불</td>
			</tr>
			<tr>
				<td style="padding:20px;"><b>이용 6일 전</b></td>
				<td style="padding:20px;">90% 환불</td>
			</tr>
			<tr>
				<td style="padding:20px;"><b>이용 5일 전</b></td>
				<td style="padding:20px;">90% 환불</td>
			</tr>
			<tr>
				<td style="padding:20px;"><b>이용 4일 전</b></td>
				<td style="padding:20px;">90% 환불</td>
			</tr>
			<tr>
				<td style="padding:20px;"><b>이용 3일 전</b></td>
				<td style="padding:20px;">90% 환불</td>
			</tr>
			<tr>
				<td style="padding:20px;"><b>이용 2일 전</b></td>
				<td style="padding:20px;">90% 환불</td>
			</tr>
			<tr>
				<td style="padding:20px;"><b>이용 1일 전</b></td>
				<td style="padding:20px;">90% 환불</td>
			</tr>
			<tr>
				<td style="padding:20px;"><b>이용 당일</b></td>
				<td style="padding:20px;"><b style="color:red;">환불불가</b></td>
			</tr>
		</table>
		<br><br>
		
		<div id="map" style="width:100%; height:800px;"></div>
		<script type="text/javascript" src="https://openapi.map.naver.com/openapi/v3/maps.js?ncpClientId=k6u8c2j8h2&callback=initMap"></script>
    	<script type="text/javascript">
        var map = null;
		
        function initMap() {
            map = new naver.maps.Map('map', {
                center: new naver.maps.LatLng(37.3595704, 127.105399),
                zoom: 10
            });
        }
        
    	</script>
		
		<hr>
		
		<p style="margin-left:220px; font-size:30px;"><b>
			Q & A&nbsp;&nbsp;&nbsp;<span style="color:#40a4b6;">1개</span>
		</b></p>
		
		<table>
          	<tr>
          		<td rowspan="2"><img src="../../images/etc/lingard.png" style="margin-left:220px; width:50px;"></td>
          		<td><h3>&nbsp;&nbsp;이호정&nbsp;&nbsp;</h3></td>

          	</tr>
          	<tr>
          		<td colspan="3">&nbsp;&nbsp;고정석으로 개인 데스크탑 비치 가능한가요? 와이파이 외에 개별 Lan선이 있는지도 궁금합니다</td>
          	</tr>
          	<tr>
          		<td></td>
          		<td colspan="3"><p style="font-size: 15px; color:#c4c4c4;">&nbsp;&nbsp;2020. 06. 18</p></td>
          	</tr>
          	<tr>
          		<td></td>
          		<td colspan="3">&nbsp;&nbsp;<b style="color:#40a4b6; font-size:20px;">호스트의 답</b>&nbsp;&nbsp;</td>
          	</tr>
          	<tr>
          		<td></td>
          		<td colspan="3">&nbsp;&nbsp;안녕하세요! 1개월 이상 이용시 고정석 이용(데스크탑 설치가능, 개별 유선랜 1GB속도)가능합니다.</td>
          	</tr>
          	<tr>
          		<td></td>
          		<td colspan="3"><p style="font-size: 15px; color:#c4c4c4;">&nbsp;&nbsp;2020. 06. 18</p></td>
          	</tr>
        </table>
		
		<div class="card my-4" style="width:820px; margin-left:220px; height:230px;">
          <h5 class="card-header">큐앤에이 작성</h5>
          <div class="card-body">
            <form>
              <div class="form-group">
                <textarea class="form-control" rows="3"></textarea>
              </div>
              <button type="submit" class="btn btn-primary" style="color:white; background:#40a4b6; border:0; outline:0;">등록</button>
            </form>
          </div>
		
		</div>
		
		<br><br>

		<p style="margin-left:220px; font-size:30px;"><b>
			이용후기&nbsp;&nbsp;&nbsp;<span style="color:#40a4b6;">1개</span>
		</b><span style="font-size:20px;"><b>&nbsp;&nbsp;&nbsp;평균평점</b></span><span style="color:#40a4b6; font-size:20px;">&nbsp;&nbsp;5</span></p>

		<table>
          	<tr>
          		<td rowspan="2"><img src="../../images/etc/soeasyProf.png" style="margin-left:220px; width:50px;"></td>
          		<td><h3>&nbsp;&nbsp;이호정&nbsp;&nbsp;</h3></td>
          		<td><img src="../../images/etc/star.png" style="width:100px;"></td>
          		<td><h5>&nbsp;&nbsp;&nbsp;신고하기</h5></td>
          	</tr>
          	<tr>
          		<td colspan="3">&nbsp;&nbsp;잘썼습니다~~~~</td>
          	</tr>
          	<tr>
          		<td></td>
          		<td colspan="3"><p style="font-size: 15px; color:#c4c4c4;">&nbsp;&nbsp;2020. 06. 18</p></td>
          	</tr>
        </table>
		<br><br><br>		
		</section>
		
		<footer><%@ include file="../common/footer.jsp"%></footer>
		<script>
			function test1() {
				location.href="<%=request.getContextPath()%>/views/space/spaceReser.jsp";
			}
		</script>
</body>
</html>













































    