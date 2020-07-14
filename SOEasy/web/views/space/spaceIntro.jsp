<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
    <style>
        .visual{
            position: relative;
            width: 90%;
            margin-left: auto;
            margin-right: auto;
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
        
        #reserBtn {
        	background:#40b4a6;
        	width:70px;
        	height:30px;
        	font-size: 15px;
        	outline:0;
        	border:0;
        	color:white;
        	border-radius:5px;
        	cursor:pointer;
        }

    </style>
<meta charset="UTF-8">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <link rel="stylesheet" type="text/css" href="http://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.css"/>
    <link rel="stylesheet" href="http://cdn.jsdelivr.net/npm/xeicon@2.3.3/xeicon.min.css">
  
 <link
    rel="stylesheet"
    href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.css"
  />
<title>SO Easy</title>
<meta charset="utf-8">
<link rel="stylesheet" href="../../css/layout.css">

</head>
<body>
		<header><%@ include file="../common/header.jsp" %></header>
		<nav><%@ include file="../common/aside.jsp" %></nav>
		
		<section>
		<div style="width:75%; margin-left:auto; margin-right:auto;">
		<!-- <div style="width:90%;"> -->
		<!-- </div> -->
		<table id="titleTb">
			<tr>
				<td>
					<p id="title" style="color:#40a4b6;  font-weight: bolder; margin-top:0; font-size:30px;">성수동 인생공간 코워킹스페이스</p>
				</td>
			</tr>
		</table>
		<table id="priceTb">
			<tr>
				<td id="price" style="color:#c4c4c4; font-size:25px; width:250px;">300,000원 / 1개월 </td>
				<td><button id="reserBtn" onclick="test1();">예  약</button></td>
			</tr>
		</table>
		<table id="iconTb">
			<tr>
				<td id="share" style="padding:10px;"><img src="../../images/icon/share.png" style="width:35px;"></td>
				<td id="heart" style="padding:10px;"><img src="../../images/icon/heart.png" style="width:35px;"></td>
			</tr>
		</table>
		<br>
		  <script type="text/javascript" src="http://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.min.js"></script>
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
		<p id="subTitle" style="font-size:30px;">
			동네에서 만나는 따뜻한 <br>
			코워킹스페이스
		</p>
		<hr>
		<p id="intro" style="color:#40a4b6; font-size:20px;"><b>
			소개
		</b></p>
		<p id="introInfo">
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
		<p id="opTime" style="color:#40a4b6; font-size:20px;"><b>
			운영시간
		</b></p>
		<table id="opTimeTb" style="border-spacing:15px;">
			<tr>
				<td id="mon" style="padding:20px;"><b>월</b>00:00 ~ 24:00</td>
				<td id="sat" style="padding:20px;"><span style="color:blue;"><b>토</b></span>00:00 ~ 24:00</td>
			</tr>
			<tr>
				<td id="tue" style="padding:20px;"><b>화</b>00:00 ~ 24:00</td>
				<td id="sun" style="padding:20px;"><span style="color:red;"><b>일</b></span>00:00 ~ 24:00</td>
			</tr>
			<tr>
				<td id="wed" style="padding:20px;"><b>수</b>00:00 ~ 24:00</td>
				<td style="padding:20px;"></td>
			</tr>
			<tr>
				<td id="thu" style="padding:20px;"><b>목</b>00:00 ~ 24:00</td>
				<td style="padding:20px;"></td>
			</tr>
			<tr>
				<td id="fri" style="padding:20px;"><b>금</b>00:00 ~ 24:00</td>
				<td style="padding:20px;"></td>
			</tr>
		</table>
		<br><br>
		
		<p id="plus" style="color:#40a4b6; font-size:20px;"><b>
			추가정보
		</b></p>
		<table id="plusTb" style="border-spacing:15px;">
			<tr>
				<td id="accPer" style="padding:20px;"><b>수용인원</b></td>
				<td id="accperInfo" style="padding:20px;">1 ~ 5 명</td>
			</tr>
			<tr>
				<td id="seatType" style="padding:20px;"><b>좌석유형</b></td>
				<td id="seatTypeInfo" style="padding:20px;">고정석</td>
			</tr>
			<tr>
				<td id="stock" style="padding:20px;"><b>재고</b></td>
				<td id="stockInfo" style="padding:20px;">5개</td>
			</tr>
			<tr>
				<td id="extent" style="padding:20px;"><b>넓이</b></td>
				<td id="extentInfo" style="padding:20px;">15평(49.58m²)</td>
			</tr>
		</table>
		<br><br>
		
		<p id="amenity" style="color:#40a4b6; font-size:20px;"><b>
			편의시설
		</b></p>
		
		<!-- 편의시설 사진들 넣기 -->
		<table id="amenityTb" style="border-spacing:15px;">
			<tr>
				<td id="24h" style="padding:22px;"><img src="../../images/icon/24h.png" width="100px" style="opacity:0.2;"></td>
				<td id="365days" style="padding:22px;"><img src="../../images/icon/365days.png" width="100px"></td>
				<td id="airCon" style="padding:22px;"><img src="../../images/icon/airCon.png" width="100px"></td>
				<td id="animal" style="padding:22px;"><img src="../../images/icon/animal.png" width="100px" style="opacity:0.2;"></td>
				<td id="beam" style="padding:22px;"><img src="../../images/icon/beam.png" width="100px" style="opacity:0.2;"></td>
				<td id="board" style="padding:22px;"><img src="../../images/icon/board.png" width="100px"></td>
			</tr>
			<tr>
				<td id="cafe" style="padding:22px;"><img src="../../images/icon/cafe.png" width="100px" style="opacity:0.2;"></td>
				<td id="copyPrint" style="padding:22px;"><img src="../../images/icon/copyPrint.png" width="100px"></td>
				<td id="delivery" style="padding:22px;"><img src="../../images/icon/delivery.png" width="100px" style="opacity:0.2;"></td>
				<td id="doorLock" style="padding:22px;"><img src="../../images/icon/doorLock.png" width="100px"></td>
				<td id="fax" style="padding:22px;"><img src="../../images/icon/fax.png" width="100px"></td>
				<td id="heater" style="padding:22px;"><img src="../../images/icon/heater.png" width="100px"></td>
			</tr>
			<tr>
				<td id="kitchen" style="padding:22px;"><img src="../../images/icon/kitchen.png" width="100px" style="opacity:0.2;"></td>
				<td id="locker" style="padding:22px;"><img src="../../images/icon/locker.png" width="100px" style="opacity:0.2;"></td>
				<td id="mail" style="padding:22px;"><img src="../../images/icon/mail.png" width="100px"></td>
				<td id="parking" style="padding:22px;"><img src="../../images/icon/parking.png" width="100px"></td>
				<td id="rounge" style="padding:22px;"><img src="../../images/icon/rounge.png" width="100px"></td>
				<td id="snack" style="padding:22px;"><img src="../../images/icon/snack.png" width="100px" style="opacity:0.2;"></td>
			</tr>
			<tr>
				<td id="terrace" style="padding:22px;"><img src="../../images/icon/terrace.png" width="100px"></td>
				<td id="tv" style="padding:22px;"><img src="../../images/icon/tv.png" width="100px"></td>
				<td id="wareHouse" style="padding:22px;"><img src="../../images/icon/wareHouse.png" width="100px" style="opacity:0.2;"></td>
				<td id="waterMachine" style="padding:22px;"><img src="../../images/icon/waterMachine.png" width="100px"></td>
				<td id="wifi" style="padding:22px;"><img src="../../images/icon/wifi.png" width="100px"></td>
				<td id="plug" style="padding:22px;"><img src="../../images/icon/plug.png" width="100px"></td>
			</tr>
		</table>

		<br><br>	
		<p id="usePeriod" style="color:#40a4b6; font-size:20px;"><b>
			이용기간
		</b></p>
		
		<table id="usePeriodTb">
			<tr>
				<td id="8ago" style="padding:20px;"><b>이용 8일 전</b></td>
				<td id="8agoInfo" style="padding:20px;">100% 환불</td>
			</tr>
			<tr>
				<td id="7ago" style="padding:20px;"><b>이용 7일 전</b></td>
				<td id="7agoInfo" style="padding:20px;">90% 환불</td>
			</tr>
			<tr>
				<td id="6ago" style="padding:20px;"><b>이용 6일 전</b></td>
				<td id="6agoInfo" style="padding:20px;">90% 환불</td>
			</tr>
			<tr>
				<td id="5ago" style="padding:20px;"><b>이용 5일 전</b></td>
				<td id="5agoInfo" style="padding:20px;">90% 환불</td>
			</tr>
			<tr>
				<td id="4ago" style="padding:20px;"><b>이용 4일 전</b></td>
				<td id="4agoInfo" style="padding:20px;">90% 환불</td>
			</tr>
			<tr>
				<td id="3ago" style="padding:20px;"><b>이용 3일 전</b></td>
				<td id="3agoInfo" style="padding:20px;">90% 환불</td>
			</tr>
			<tr>
				<td id="2ago" style="padding:20px;"><b>이용 2일 전</b></td>
				<td id="2agoInfo" style="padding:20px;">90% 환불</td>
			</tr>
			<tr>
				<td id="1ago" style="padding:20px;"><b>이용 1일 전</b></td>
				<td id="1agoInfo" style="padding:20px;">90% 환불</td>
			</tr>
			<tr>
				<td id="dday" style="padding:20px;"><b>이용 당일</b></td>
				<td id="ddayInfo" style="padding:20px;"><b style="color:red;">환불불가</b></td>
			</tr>
		</table>
		<br><br>
		
		<!-- 카카오맵 api -->
		<p style="margin-top:-12px">
    	<em class="link">
        <a href="javascript:void(0);" onclick="window.open('http://fiy.daum.net/fiy/map/CsGeneral.daum', '_blank', 'width=981, height=650')">
           	 혹시 주소 결과가 잘못 나오는 경우에는 여기에 제보해주세요.
        </a>
    	</em>
		</p>
		<div id="map" style="width:100%;height:500px;"></div>
		
		<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=59332eec12fbfca6cacba94ce22f49d2&libraries=services"></script>
		<script>
		var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
		    mapOption = {
		        center: new kakao.maps.LatLng(33.450701, 126.570667), // 지도의 중심좌표
		        level: 3 // 지도의 확대 레벨
		    };  
		
		// 지도를 생성합니다    
		var map = new kakao.maps.Map(mapContainer, mapOption); 
		
		// 주소-좌표 변환 객체를 생성합니다
		var geocoder = new kakao.maps.services.Geocoder();
		
		// 주소로 좌표를 검색합니다
		geocoder.addressSearch('제주특별자치도 제주시 첨단로 242', function(result, status) {
		
		    // 정상적으로 검색이 완료됐으면 
		     if (status === kakao.maps.services.Status.OK) {
		
		        var coords = new kakao.maps.LatLng(result[0].y, result[0].x);
		
		        // 결과값으로 받은 위치를 마커로 표시합니다
		        var marker = new kakao.maps.Marker({
		            map: map,
		            position: coords
		        });
		
		        // 인포윈도우로 장소에 대한 설명을 표시합니다
		        var infowindow = new kakao.maps.InfoWindow({
		            content: '<div style="width:150px;text-align:center;padding:6px 0;">우리회사</div>'
		        });
		        infowindow.open(map, marker);
		
		        // 지도의 중심을 결과값으로 받은 위치로 이동시킵니다
		        map.setCenter(coords);
		    } 
		});    
		</script>
		<br>
		<hr>
		
		<p style="font-size:30px;"><b>
			Q & A&nbsp;&nbsp;&nbsp;<span id="qnaCount" style="color:#40a4b6;">1개</span>
		</b></p>
		
		<table>
          	<tr>
          		<td id="profilePic" rowspan="2"><img src="../../images/etc/lingard.png" style="width:50px;"></td>
          		<td id="name"><h3>&nbsp;&nbsp;이호정&nbsp;&nbsp;</h3></td>

          	</tr>
          	<tr>
          		<td id="userQ" colspan="3">&nbsp;&nbsp;고정석으로 개인 데스크탑 비치 가능한가요? 와이파이 외에 개별 Lan선이 있는지도 궁금합니다</td>
          	</tr>
          	<tr>
          		<td></td>
          		<td id="userDate" colspan="3"><p style="font-size: 15px; color:#c4c4c4;">&nbsp;&nbsp;2020. 06. 18</p></td>
          	</tr>
          	<tr>
          		<td></td>
          		<td id="hostAnswer" colspan="3">&nbsp;&nbsp;<b style="color:#40a4b6; font-size:20px;">호스트의 답</b>&nbsp;&nbsp;</td>
          	</tr>
          	<tr>
          		<td></td>
          		<td id="hostA" colspan="3">&nbsp;&nbsp;안녕하세요! 1개월 이상 이용시 고정석 이용(데스크탑 설치가능, 개별 유선랜 1GB속도)가능합니다.</td>
          	</tr>
          	<tr>
          		<td></td>
          		<td id="hostDate" colspan="3"><p style="font-size: 15px; color:#c4c4c4;">&nbsp;&nbsp;2020. 06. 18</p></td>
          	</tr>
        </table>
		
		<div class="card my-4" style="width:820px; height:230px;">
          <h5 class="card-header">큐앤에이 작성</h5>
          <div class="card-body">
            <form>
              <div class="form-group">
                <textarea class="form-control" rows="3" style="resize:none;"></textarea>
              </div>
              <button type="submit" class="btn btn-primary" style="color:white; background:#40a4b6; border:0; outline:0;">등록</button>
            </form>
          </div>
		
		</div>
		
		<br><br>

		<p id="review" style="font-size:30px;"><b>
			이용후기&nbsp;&nbsp;&nbsp;<span id="reviewCount" style="color:#40a4b6;">1개</span>
		</b><span id="avrStar" style="font-size:20px;"><b>&nbsp;&nbsp;&nbsp;평균평점</b></span><span id="avrStarCount" style="color:#40a4b6; font-size:20px;">&nbsp;&nbsp;5</span></p>

		<table id="reviewTb">
          	<tr>
          		<td id="profilePic" rowspan="2"><img src="../../images/etc/soeasyProf.png" style="width:50px;"></td>
          		<td id="userName"><h3>&nbsp;&nbsp;이호정&nbsp;&nbsp;</h3></td>
          		<td>
          			<i class="fa fa-star-o reviews" aria-hidden="true"></i>
          			<i class="fa fa-star-o reviews" aria-hidden="true"></i>
          			<i class="fa fa-star-o reviews" aria-hidden="true"></i>
          			<i class="fa fa-star-o reviews" aria-hidden="true"></i>
          			<i class="fa fa-star-o reviews" aria-hidden="true"></i>
          		</td>
          		<td id="registerBtn" onclick="register();" style="cursor:pointer;"><h5>&nbsp;&nbsp;&nbsp;신고하기</h5></td>
          	</tr>
          	<tr>
          		<td id="reviewInfo" colspan="3">&nbsp;&nbsp;잘썼습니다~~~~</td>
          	</tr>
          	<tr>
          		<td></td>
          		<td id="reviewDate" colspan="3"><p style="font-size: 15px; color:#c4c4c4;">&nbsp;&nbsp;2020. 06. 18</p></td>
          	</tr>
        </table>
		<br><br><br>
		</div>		
		</section>
		
		<footer><%@ include file="../common/footer.jsp"%></footer>
		<script>
			function test1() {
				location.href="<%=request.getContextPath()%>/views/space/spaceReser.jsp";
			}
			
			function register() {
				window.open('registerPop.jsp', 'window팝업', 'width=700px, height=700px, menubar=no, status=no, resizable=no, toolbar=no');  
			}
			
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













































    