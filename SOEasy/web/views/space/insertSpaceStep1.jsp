<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>SO Easy - 공간등록</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script>
	function goPopup(){
	// 주소검색을 수행할 팝업 페이지를 호출합니다.
	// 호출된 페이지(jusopopup.jsp)에서 실제 주소검색URL(http://www.juso.go.kr/addrlink/addrLinkUrl.do)를 호출하게 됩니다.
		var pop = window.open("../../popup/jusoPopup.jsp","pop","width=570,height=420, scrollbars=yes, resizable=yes"); 
	
	// 모바일 웹인 경우, 호출된 페이지(jusopopup.jsp)에서 실제 주소검색URL(http://www.juso.go.kr/addrlink/addrMobileLinkUrl.do)를 호출하게 됩니다.
    //var pop = window.open("/popup/jusoPopup.jsp","pop","scrollbars=yes, resizable=yes"); 
	}


	function jusoCallBack(roadFullAddr,roadAddrPart1,addrDetail,roadAddrPart2,engAddr, jibunAddr, zipNo, admCd, rnMgtSn, bdMgtSn,detBdNmList,bdNm,bdKdcd,siNm,sggNm,emdNm,liNm,rn,udrtYn,buldMnnm,buldSlno,mtYn,lnbrMnnm,lnbrSlno,emdNo){
		// 팝업페이지에서 주소입력한 정보를 받아서, 현 페이지에 정보를 등록합니다.
		//document.form.roadAddrPart1.value = roadAddrPart1;
		$("#roadAddrPart1").val(roadAddrPart1);
		//document.form.addrDetail.value = addrDetail;
		$("#addrDetail").val(addrDetail);
		/* document.form.engAddr.value = engAddr;
		document.form.jibunAddr.value = jibunAddr;
		document.form.zipNo.value = zipNo;
		document.form.admCd.value = admCd;
		document.form.rnMgtSn.value = rnMgtSn;
		document.form.bdMgtSn.value = bdMgtSn;
		document.form.detBdNmList.value = detBdNmList; */
		/** 2017년 2월 추가제공 **/
		/* document.form.bdNm.value = bdNm;
		document.form.bdKdcd.value = bdKdcd;
		document.form.siNm.value = siNm;
		document.form.sggNm.value = sggNm;
		document.form.emdNm.value = emdNm;
		document.form.liNm.value = liNm;
		document.form.rn.value = rn;
		document.form.udrtYn.value = udrtYn;
		document.form.buldMnnm.value = buldMnnm;
		document.form.buldSlno.value = buldSlno;
		document.form.mtYn.value = mtYn;
		document.form.lnbrMnnm.value = lnbrMnnm;
		document.form.lnbrSlno.value = lnbrSlno; */
		/** 2017년 3월 추가제공 **/
		/* document.form.emdNo.value = emdNo; */
		
}
</script>
<style>

	.space-insert tr td input[type=text]{
		width: 100%;
		word-break:break-all;
	}
	#roadAddrPart1{
		width: 70%
	}
	textarea{
		border: 1px solid black;
		border-radius: 10px;
		width: 100%;
		resize: none;
	}
	.check-distinct input[type=text]{
		text-align: center;
	}
	.select-space{
		width: 40%;
		height: 40px;
		display: inline-block;
		border: 1px solid black;
		border-radius: 10px;
		cursor: pointer;
		margin: 10px;
	}
	.space-descrip{
		margin: 50px;
	}
	.detail-descrip{
		font-size: 10px;
		text-align: right;
		margin: 0;
		padding: 0;
	}
	.warning{
		font-size: 10px;
		text-align: right;
		color: red;
		margin: 0;
		padding: 0;
	}
	.check-distinct{
		display: none;
		height: 250px;
	}
	.space-insert tr td {
		padding: 5px;
	}
	.text-limit{
		text-align: right;
	}
	input{
		height: 30px;
		border: 1px solid black;
		border-radius: 10px;
	}
	#add-tag{
		width: 60%;
	}
	#space-tag{
		width: 350px;
		height: 200px;
		border: 1px solid black;
		border-radius: 10px;
	}
	.warning{
		display: none;
	}
	.btnArea{
		margin: 50px;
	}
</style>
</head>
<body>
	<header><%@ include file="../common/header.jsp"%></header>
	<nav><%@ include file="../common/aside.jsp"%></nav>
	<section>
		<div>
			<h1 align="center">공간 등록</h1>
		</div>
		<form action="<%= request.getContextPath() %>/insertSpaceStep1" method="post">
			<table class="space-insert" align="center" width="60%">
				<tr>
					<td width="10%"></td>
					<td width="20%">공간 종류 *</td>
					<td width="40%" align="center">
						<!-- <input type="checkbox" name="kinds" id="office" value="office"><label for="office">독립 오피스</label> -->
						<span class="select-space" id="office">
							독립 오피스
						</span>
						
						<span class="select-space" id="cowork">
							코워킹 스페이스
						</span>
					</td>
					<td width="10%"></td>
				</tr>
				<tr>
					<td></td>
					<td></td>
					<td width="auto" style="word-break:break-all"><div id="space-descrip"></div></td>
					<td></td>
				</tr>
				<tr class="check-distinct" id="office-check">
					<td></td>
					<td></td>
					<td>
						<fieldset>
							<table align="center" width="90%">
								<tr>
									<td width="30%">공간 사이즈*</td>
									<td width="60%">
										<input type="text" name="space-size" size="30%" onclick="this.select();">
										<!-- <input type="hidden" name="kinds" value="office"> -->
									</td>
									<td>m<sup>2</sup></td>
								</tr>
								<tr>
									<td>공간 재고*</td>
									<td><input type="text" name="space-room-count" size="30%" onclick="this.select();">
									<p class="detail-descrip">서비스 가능한 방의 갯수를 의미합니다.</p>
									</td>									
								</tr>
								<tr>
									<td>수용인원*</td>
									<td><input type="text" name="space-contain-count" size="30%" onclick="this.select();">
									<p class="detail-descrip">제공된 공간을 기준으로 합니다.</p></td>
								</tr>
							</table>
						</fieldset>
					</td>
					<td></td>
				</tr>
				<tr class="check-distinct" id="cowork-check">
					<td></td>
					<td></td>
					<td>
						<fieldset>
							<table align="center" width="80%">
								<tr>
									<td width="30%">자유석</td>
									<td width="60%">
										<input type="text" name="unfix-seat" id="unfix-seat" size="30%" value="0" onkeyup="count();" onclick="this.select();">
										<!-- <input type="hidden" name="kinds" value="cowork"> -->
									</td>
									<td width="10%">석</td>
								</tr>
								<tr>
									<td>지정석</td>
									<td><input type="text" name="fix-seat" id="fix-seat" size="30%" value="0" onkeyup="count();" onclick="this.select();"></td>
									<td>석</td>
								</tr>
								<tr>
									<td>좌석 수</td>
									<td><input type="text" name="total-seat" id="total-seat" size="30%" readonly></td>
									<td>석</td>
								</tr>
								<tr>
									<td>예약 가능 인원*</td>
									<td><input type="text" name="max-reserv" id="max-reserv" size="30%" onclick="this.select();">
									<p class="detail-descrip">제공된 공간을 기준으로 합니다.</p></td>
									<td>명</td>
								</tr>
							</table>
						</fieldset>
						<input type="hidden" name="kinds" id="kinds" value="office">
					</td>
					<td></td>
				</tr>
				<tr>
					<td></td>
					<td></td>
					<td><p class="warning" id="warning-space-name">공간명을 입력하셔야 합니다.</p></td>
					<td></td>
				</tr>
				<tr>
					<td></td>
					<td>공간명*</td>
					<td><input type="text" maxlength="20" name="space-name" id="space-name"></td>
					<td></td>
				</tr>
				<tr>
					<td></td>
					<td></td>
					<td align="right"><p class="text-limit" id="intro-limit">0 / 200</p></td>
					<td></td>
				</tr>
				<tr>
					<td></td>
					<td>공간 소개</td>
					<td>
						<textarea rows="5" maxlength="200" name="space-intro" id="space-intro"></textarea>
					</td>
					<td></td>
				</tr>
				<tr>
					<td></td>
					<td>&nbsp;</td>
				</tr>
				<tr>
					<td></td>
					<td>공간 태그</td>
					<td><input type="text" id="add-tag" onclick="this.select();">&nbsp;&nbsp;<button type="button" onclick="addTag();">추가하기</button></td>
					<td></td>
				</tr>
				<tr>
					<td></td>
					<td></td>
					<td><div id="space-tag"></div></td>
					<td></td>
				</tr>
				<tr>
					<td></td>
					<td></td>
					<td class="warning" id="capital-img-not" style="text-align:right;">대표 이미지를 추가하셔야 합니다.</td>
					<td></td>
				</tr>
				<tr>
					<td></td>
					<td>대표 이미지*</td>
					<td>
						<div id="titleImgArea">
							<img id="capital-img" width="450" height="250">
						</div>
					</td>
					<td></td>
				</tr>
				<tr>
					<td></td>
					<td></td>
					<td class="warning" id="capital-img-not" style="text-align:right;">대표 이미지를 추가하셔야 합니다.</td>
					<td></td>
				</tr>
				<tr>
					<td></td>
					<td>상세 이미지*</td>
					<td>
						<div id="thumbnailArea">
							<img id="thumnail-1" width="220px" height="150px">
							<img id="thumnail-2" width="220px" height="150px">
							<img id="thumnail-3" width="220px" height="150px">
							<img id="thumnail-4" width="220px" height="150px">
							<img id="thumnail-5" width="220px" height="150px">
							<img id="thumnail-6" width="220px" height="150px">
						</div>
					</td>
					<td></td>
				</tr>
				<tr>
					<td></td>
					<td>&nbsp;</td>
				</tr>
				<tr>
					<td></td>
					<td>공간 주소*</td>
					<td><input type="text" placeholder="공간 주소를 입력하세요." id="roadAddrPart1"  name="roadAddrPart1">&nbsp;&nbsp;<button type="button" onclick="goPopup();">검색</button></td>
					<td></td>
				</tr>
				<tr>
					<td></td>
					<td></td>
					<td><input type="text" placeholder="상세 주소를 입력하세요." id="addrDetail"  name="addrDetail"></td>
					<td></td>
				</tr>
				<tr>
					<td></td>
					<td>&nbsp;</td>
				</tr>
				<tr>
					<td></td>
					<td>공간 필수 기능*</td>
					<td>
						<table>
							<tr>
								<td></td>
								<td><input type="checkbox" name="agree-1" value="wifi">&nbsp;&nbsp;쾌적하고 빠른 WIFI</td>
							</tr>
							<tr>
								<td></td>
								<td><input type="checkbox" name="agree-2" value="concent">&nbsp;&nbsp;넉넉한 콘센트</td>
							</tr>
							<tr>
								<td></td>
								<td><input type="checkbox" name="agree-3" value="wifi">&nbsp;&nbsp;철저한 예약관리</td>
							</tr>
						</table>
					</td>
					<td></td>
				</tr>
			</table>
			<div class="btnArea" align="center">
				<button type="reset">초기화</button>
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				<button type="submit">작성완료</button>
			</div>
			<div id="fileArea">
					<input type="file" id="cap-img" name="capital-img" onchange="load(this);">
					<input type="file" id="thumbnailImg1" name="thumbnailImg1" onchange="loadImg(this, 1);">
					<input type="file" id="thumbnailImg2" name="thumbnailImg2" onchange="loadImg(this, 2);">
					<input type="file" id="thumbnailImg3" name="thumbnailImg3" onchange="loadImg(this, 3);">
					<input type="file" id="thumbnailImg4" name="thumbnailImg4" onchange="loadImg(this, 4);">
					<input type="file" id="thumbnailImg5" name="thumbnailImg5" onchange="loadImg(this, 5);">
					<input type="file" id="thumbnailImg6" name="thumbnailImg6" onchange="loadImg(this, 6);">
			</div>
		</form>
	</section>
	<footer>
		<%@ include file="../common/footer.jsp"%>
	</footer>
	<script>
		$(function(){
			initSet();
			initEvent();
		});
		
		function initSet(){
			$("#warning-space-name").show();
		}
	
		function initEvent(){
			$('#space-name').on('keyup', function(){
				var str = $("#space-name").val();
				var len = str.length;
				if(len > 0){
					$("#warning-space-name").hide();
				}else{
					$("#warning-space-name").show();
				}
			});
			$("#office").click(function(){
				if($("#office-check").is(":visible")){
					$("#office").css("background", "white");
					$(".check-distinct").hide();
					$("#space-descrip").hide();
				} else if($("#cowork-check").is(":visible")){
					$("#kinds").val("office");
					$(".check-distinct").hide();
					$("#space-descrip").hide();
					$("#cowork").css("background", "white");
					$("#office").css("background", "#3DB6AE");
					$("#office-check").show();
					$("#space-descrip").show();
					$("#space-descrip").css({"width":"auto", "height":"50px", "margin":"10px"}).html("개인 또는 한 팀이 프라이빗하게 이용할 수 있는 입주형 사무공간.");
				} else {
					$("#kinds").val("office");
					$("#cowork").css("background", "white");
					$("#office").css("background", "#3DB6AE");
					$("#office-check").show();
					$("#space-descrip").show();
					$("#space-descrip").css({"width":"auto", "height":"50px", "margin":"10px"}).html("개인 또는 한 팀이 프라이빗하게 이용할 수 있는 입주형 사무공간.");
				}
			});
			$("#cowork").click(function(){
				if($("#cowork-check").is(":visible")){
					$("#cowork").css("background", "white");
					$(".check-distinct").hide();
					$("#space-descrip").hide();
				} else if($("#office-check").is(":visible")) {
					$("#kinds").val("cowork");
					$(".check-distinct").hide();
					$("#space-descrip").hide();
					$("#office").css("background", "white");
					$("#cowork").css("background", "#3DB6AE");
					$("#cowork-check").show();
					$("#space-descrip").show();
					$("#space-descrip").css({"width":"auto", "height":"50px", "margin":"10px"}).html("개방된 공간에 개인 또는 여러 팀이 함께 이용할 수 있는 형태의 사무공간"+ '<br><br>' + "공간 운영방식에 따라 자유석또는 지정석으로 이용 가능");
				} else {
					$("#kinds").val("cowork");
					$("#office").css("background", "white");
					$("#cowork").css("background", "#3DB6AE");
					$("#cowork-check").show();
					$("#space-descrip").show();
					$("#space-descrip").css({"width":"auto", "height":"50px", "margin":"10px"}).html("개방된 공간에 개인 또는 여러 팀이 함께 이용할 수 있는 형태의 사무공간"+ '<br><br>' + "공간 운영방식에 따라 자유석또는 지정석으로 이용 가능");
				}
			});
			//좌석수 입력시 조건
			$("#unfix-seat").click(function(){
				if($(this).val == 0){
					$(this).val("");
				}
			});
			$("#fix-seat").click(function(){
				if($(this).val == 0){
					$(this).val("");
				}
			});
			$("#total-seat").click(function(){count();});
			
			//공간 소개 입력시 글자 수 표시
			$("#space-intro").on("keyup", function(){
				var si = $("#space-intro").val();
				var len = si.length;
				var maxlen = 200;
				$("#intro-limit").text(len + " / " + maxlen);
			}).on("keypress", function(){
				var si = $("#space-intro").val();
				var len = si.length;
				var maxlen = 200;
				$("#intro-limit").text(len + " / " + maxlen)
			});
			
		}//initEvent initEvent
		
		// 좌석 수 = 자유석 + 지정석
		function count(){
			var unfixSeat = Number($("#unfix-seat").val());
			var fixSeat = Number($("#fix-seat").val());
			var totalSeat = unfixSeat + fixSeat;
			
			$("#total-seat").val(totalSeat);
			$("#max-reserv").val(totalSeat);
		};
		
		//태그 추가하기
		function addTag(){
			var tag = $("#add-tag").val();
			var tags = $("#space-tag");
			
			var tag_input = $("<input>");
			tag_input.attr("name", "space-tag");
			tag_input.attr("type", "button");
			tag_input.attr("value", "#"+tag);
			
			tags.append(tag_input);
			$("#add-tag").val("");
		};
		
		//이미지 추가하기
		$(function(){
			
			$("#fileArea").hide();
			
			$("#capital-img").click(function(){
				$("#cap-img").click();
			});
			$("#thumnail-1").click(function(){
				$("#thumbnailImg1").click();
			});
			$("#thumnail-2").click(function(){
				$("#thumbnailImg2").click();
			});
			$("#thumnail-3").click(function(){
				$("#thumbnailImg3").click();
			});
			$("#thumnail-4").click(function(){
				$("#thumbnailImg4").click();
			});
			$("#thumnail-5").click(function(){
				$("#thumbnailImg5").click();
			});
			$("#thumnail-6").click(function(){
				$("#thumbnailImg6").click();
			});
		});
		
		function load(value) {
			if(value.files && value.files[0]){
				var reader = new FileReader();
				
				reader.onload = function(e) {
					$("#capital-img").attr("src", e.target.result);
				}
				
				reader.readAsDataURL(value.files[0]);
			}
		};
		
		function loadImg(value, num) {
			if(value.files && value.files[0]){
				var reader = new FileReader();
				
				reader.onload = function(e) {
					
					switch(num){
					case 1 : $("#thumnail-1").attr("src", e.target.result); break;
					case 2 : $("#thumnail-2").attr("src", e.target.result); break;
					case 3 : $("#thumnail-3").attr("src", e.target.result); break;
					case 4 : $("#thumnail-4").attr("src", e.target.result); break;
					case 5 : $("#thumnail-5").attr("src", e.target.result); break;
					case 6 : $("#thumnail-6").attr("src", e.target.result); break;
					}
				}
				
				reader.readAsDataURL(value.files[0]);
			}
		};
		
	</script>
</body>
</html>