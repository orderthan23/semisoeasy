<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>SO Easy - 공간등록</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<style>

	.space-insert tr td input[type=text]{
		width: 100%;
	}
	textarea{
		border: 1px solid black;
		border-radius: 10px;
		width: 100%;
	}
	.check-distinct input[type=text]{
		text-align: center;
	}
	.select-space{
		width: 30%;
		height: 40px;
		display: inline-block;
		border: 1px solid black;
		border-radius: 10px;
		cursor: pointer;
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
	#add-btn{
		width: 60%;
	}
	.warning{
		display: none;
	}
</style>
</head>
<body>
	<header></header>
	<nav></nav>
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
					<td>공간명</td>
					<td><input type="text" maxlength="20" name="space-name" id="space-name" onchange="wSpaceName();"></td>
					<td></td>
				</tr>
				<tr>
					<td></td>
					<td></td>
					<td><p class="text-limit" id="space-intro"> ?<!-- 입력된 글자의 길이를 출력하도록 --> / 200 </p></td>
					<td></td>
				</tr>
				<tr>
					<td></td>
					<td>공간 소개</td>
					<td>
						<textarea rows="5" maxlength="200"></textarea>
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
					<td><input type="text" id="add-btn"><button type="button" onclick="addTag();">추가</button></td>
					<td></td>
				</tr>
				<tr>
					<td></td>
					<td></td>
					<td><textarea name="space-tag" id="space-tag"></textarea></td>
					<td></td>
				</tr>
				<tr>
					<td></td>
					<td></td>
					<td class="warning" id="space-capital-img" style="text-align:right;">대표 이미지를 추가하셔야 합니다.</td>
					<td></td>
				</tr>
				<tr>
					<td></td>
					<td>대표 이미지</td>
					<td><textarea rows="2" cols="40"></textarea><button onclick="">추가</button></td>
					<td></td>
				</tr>
				<tr>
					<td></td>
					<td>&nbsp;</td>
				</tr>
				<tr>
					<td></td>
					<td>상세 이미지</td>
					<td><textarea rows="10" cols="40" placeholder="3장 이상을 등록하셔야 합니다."></textarea><button onclick="">추가</button></td>
					<td></td>
				</tr>
				<tr>
					<td></td>
					<td>&nbsp;</td>
				</tr>
				<tr>
					<td></td>
					<td>공간 주소</td>
					<td><input type="text" placeholder="공간 주소를 입력하세요."><button onclick="">검색</button></td>
					<td></td>
				</tr>
				<tr>
					<td></td>
					<td></td>
					<td><input type="text" placeholder="상세 주소를 입력하세요."></td>
					<td></td>
				</tr>
				<tr>
					<td></td>
					<td>&nbsp;</td>
				</tr>
				<tr>
					<td></td>
					<td>공간 필수 기능</td>
					<td>
						<table>
							<tr>
								<td>&nbsp;</td><td><input type="checkbox" name="agree-1" value="wifi">쾌적하고 빠른 WIFI</td>
							</tr>
							<tr>
								<td></td><td><input type="checkbox" name="agree-2" value="concent">넉넉한 콘센트</td>
							</tr>
							<tr>
								<td></td><td><input type="checkbox" name="agree-3" value="wifi">철저한 예약관리</td>
							</tr>
						</table>
					</td>
					<td></td>
				</tr>
			</table>
				<!-- <tr>
					<td><input type="submit" value="다음으로" style="align:center;"></td>
					<td></td>
					<td><input type="reset" value="초기화" style="align:center;"></td>
				</tr> -->
		</form>
	</section>
	<footer></footer>
	<script>
		
		//공간명 미작성 경고
		/* function wSpaceName(){
			if($("#space-name").val() == "" || $("#space-name").val() == null){
				$("#warning-space-name").show();
			} else {
				$("#warning-space-name").hide();
			}
		}; */
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
			
		}
	</script>
</body>
</html>