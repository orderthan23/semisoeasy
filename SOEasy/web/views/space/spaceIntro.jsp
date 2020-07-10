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

    </style>
<meta charset="UTF-8">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <link rel="stylesheet" type="text/css" href="http://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.css"/>
    <link rel="stylesheet" href="http://cdn.jsdelivr.net/npm/xeicon@2.3.3/xeicon.min.css">
    <script type="text/javascript" src="http://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.min.js"></script>
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
		<table>
			<tr>
				<td>
					<p style="color:#40a4b6;  font-weight: bolder; margin-top:0; font-size:30px;">성수동 인생공간 코워킹스페이스</p>
				</td>
			</tr>
		</table>
		<table>
			<tr>
				<td style="color:#c4c4c4; font-size:25px; width:250px;">300,000원 / 1개월 </td>
				<td><button onclick="test1();" style="background:#40b4a6; width:70px; height:30px; font-size: 15px; outline:0; border:0; color:white; cursor:pointer;">예  약</button></td>
			</tr>
		</table>
		<table>
			<tr>
				<td style="padding:10px;"><img src="../../images/icon/share.png" style="width:35px;"></td>
				<td style="padding:10px;"><img src="../../images/icon/heart.png" style="width:35px;"></td>
			</tr>
		</table>
		<br>
		
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
		<p style="font-size:30px;">
			동네에서 만나는 따뜻한 <br>
			코워킹스페이스
		</p>
		<hr>
		<p style="color:#40a4b6; font-size:20px;"><b>
			소개
		</b></p>
		<p>
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
		<p style="color:#40a4b6; font-size:20px;"><b>
			운영시간
		</b></p>
		<table style="border-spacing:15px;">
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
		
		<p style="color:#40a4b6; font-size:20px;"><b>
			추가정보
		</b></p>
		<table style="border-spacing:15px;">
			<tr>
				<td style="padding:20px;"><b>수용인원</b></td>
				<td style="padding:20px;">1 ~ 5 명</td>
			</tr>
			<tr>
				<td style="padding:20px;"><b>좌석유형</b></td>
				<td style="padding:20px;">고정석</td>
			</tr>
			<tr>
				<td style="padding:20px;"><b>재고</b></td>
				<td style="padding:20px;">5개</td>
			</tr>
			<tr>
				<td style="padding:20px;"><b>넓이</b></td>
				<td style="padding:20px;">15평(49.58m²)</td>
			</tr>
		</table>
		<br><br>
		
		<p style="color:#40a4b6; font-size:20px;"><b>
			편의시설
		</b></p>
		
		<!-- 편의시설 사진들 넣기 -->
		<table style="border-spacing:15px;">
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
		<p style="color:#40a4b6; font-size:20px;"><b>
			이용기간
		</b></p>
		
		<table>
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
		
		<!-- 카카오맵 api -->
		
		
		<hr>
		
		<p style="font-size:30px;"><b>
			Q & A&nbsp;&nbsp;&nbsp;<span style="color:#40a4b6;">1개</span>
		</b></p>
		
		<table>
          	<tr>
          		<td rowspan="2"><img src="../../images/etc/lingard.png" style="width:50px;"></td>
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
		
		<div class="card my-4" style="width:820px; height:230px;">
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

		<p style="font-size:30px;"><b>
			이용후기&nbsp;&nbsp;&nbsp;<span style="color:#40a4b6;">1개</span>
		</b><span style="font-size:20px;"><b>&nbsp;&nbsp;&nbsp;평균평점</b></span><span style="color:#40a4b6; font-size:20px;">&nbsp;&nbsp;5</span></p>

		<table>
          	<tr>
          		<td rowspan="2"><img src="../../images/etc/soeasyProf.png" style="width:50px;"></td>
          		<td><h3>&nbsp;&nbsp;이호정&nbsp;&nbsp;</h3></td>
          		<td>
          			<i class="fa fa-star-o reviews" aria-hidden="true"></i>
          			<i class="fa fa-star-o reviews" aria-hidden="true"></i>
          			<i class="fa fa-star-o reviews" aria-hidden="true"></i>
          			<i class="fa fa-star-o reviews" aria-hidden="true"></i>
          			<i class="fa fa-star-o reviews" aria-hidden="true"></i>
          		</td>
          		<td onclick="register();" style="cursor:pointer;"><h5>&nbsp;&nbsp;&nbsp;신고하기</h5></td>
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













































    