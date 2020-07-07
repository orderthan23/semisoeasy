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
		word-break:break-all;
	}
	textarea{
		border: 1px solid black;
		border-radius: 10px;
		width: 100%;
		resize: none;
	}
	.warning{
		font-size: 10px;
		text-align: right;
		color: red;
		margin: 0;
		padding: 0;
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
	.btnArea{
		margin: 50px;
	}
	.refund-area input{
		text-align: center;
	}
</style>
</head>
<body>
	<header><%@ include file="../common/header.jsp"%></header>
	<nav><%@ include file="../common/aside.jsp"%></nav>
	<section>
		<div>
			<h1 align="center">가격 정보</h1>
			<pre align="center">                                                                              기본 가격은 VAT를 포함해야 합니다.</pre>
		</div>
		<form action="<%= request.getContextPath() %>/insertSpaceStep2" method="post">
			<table class="space-insert" align="center" width="60%">
				<tr>
					<td width="10%"></td>
					<td width="20%">단위별 예약 금액 *</td>
					<td width="40%" align="center">
						<fieldset>
							<table align="center" width="90%">
								<tr>
									<td width="30%">월 단위</td>
									<td width="60%">
										<input type="text" name="month-pay" size="30%" onclick="this.select();" style="text-align:center;">
									</td>
									<td>원</td>
								</tr>
								<tr>
									<td width="30%">일 단위</td>
									<td width="60%">
										<input type="text" name="day-pay" size="30%" onclick="this.select();" style="text-align:center;">
										<!-- <input type="hidden" name="kinds" value="office"> -->
									</td>
									<td>원</td>
								</tr>
							</table>
						</fieldset>
					</td>
					<td width="10%"></td>
				</tr>
				<tr>
					<td></td>
					<td></td>
					<td align="right"><p class="text-limit" id="policy-limit">0 / 300</p></td>
					<td></td>
				</tr>
				<tr>
					<td></td>
					<td>가격 정책</td>
					<td>
						<textarea rows="5" maxlength="300" name="policy-intro" id="policy-intro"></textarea>
					</td>
					<td></td>
				</tr>
				<tr>
					<td></td>
					<td>&nbsp;</td>
				</tr>
				<tr class="refund-area" id="cowork-check">
					<td></td>
					<td style="vertical-align:top;"><br><br>환불 기준*</td>
					<td>
						<fieldset>
							<br>
							<table align="center" width="80%">
								<tr>
									<td width="30%">8일 전</td>
									<td width="60%">
										<input type="text" class="refund-input" name="day8-rate" id="day8-rate" size="30%" value="100" onclick="this.select();" readonly>
									</td>
									<td width="10%">%</td>
								</tr>
								<tr>
									<td width="30%">7일 전</td>
									<td width="60%">
										<input type="text" class="refund-input" name="day7-rate" id="day7-rate" size="30%" value="100" onclick="this.select();" readonly>
									</td>
									<td width="10%">%</td>
								</tr>
								<tr>
									<td width="30%">6일 전</td>
									<td width="60%">
										<input type="text" class="refund-input" name="day8-rate" id="day6-rate" size="30%" value="90" onclick="this.select();" readonly>
									</td>
									<td width="10%">%</td>
								</tr>
								<tr>
									<td width="30%">5일 전</td>
									<td width="60%">
										<input type="text" class="refund-input" name="day5-rate" id="day5-rate" size="30%" value="90" onclick="this.select();" readonly>
									</td>
									<td width="10%">%</td>
								</tr>
								<tr>
									<td width="30%">4일 전</td>
									<td width="60%">
										<input type="text" class="refund-input" name="day4-rate" id="day4-rate" size="30%" value="90" onclick="this.select();" readonly>
									</td>
									<td width="10%">%</td>
								</tr>
								<tr>
									<td width="30%">3일 전</td>
									<td width="60%">
										<input type="text" class="refund-input" name="day3-rate" id="day3-rate" size="30%" value="80" onclick="this.select();" readonly>
									</td>
									<td width="10%">%</td>
								</tr>
								<tr>
									<td width="30%">2일 전</td>
									<td width="60%">
										<input type="text" class="refund-input" name="day2-rate" id="day2-rate" size="30%" value="80" onclick="this.select();" readonly>
									</td>
									<td width="10%">%</td>
								</tr>
								<tr>
									<td width="30%">예약 전일</td>
									<td width="60%">
										<input type="text" class="refund-input" name="day1-rate" id="day1-rate" size="30%" value="80" onclick="this.select();" readonly>
									</td>
									<td width="10%">%</td>
								</tr>
								<tr>
									<td width="30%">예약 당일</td>
									<td width="60%">
										<input type="text" class="refund-input" name="day0-rate" id="day0-rate" size="30%" value="환불 불가" readonly>
									</td>
									<td width="10%"></td>
								</tr>
							</table>
							<div class="check-area">
								<table>
									<tr>
										<td width="50%"></td>
										<td><input type="checkbox" name="refund-policy" id="soeasy" value="soeasy" checked><label for="soeasy">SOEasy 환불정책</label></td>
									</tr>
									<tr>
										<td></td>
										<td><input type="checkbox" name="refund-policy" id="personal" value="personal"><label for="personal">직접 입력</label></td>
									</tr>
								</table>
							</div>
						</fieldset>
					</td>
					<td></td>
				</tr>
			</table>
			<div class="btnArea" align="center">
				<button type="reset">초기화</button>
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				<button type="submit">다음으로</button>
			</div>
		</form>
	</section>
	<footer>
		<%@ include file="../common/footer.jsp"%>
	</footer>
	<script>
		$(function(){
			$(".warning").show();
		});
		
		//가격 정책 입력시 글자 수 표시
		$("#policy-intro").on("keyup", function(){
			var si = $("#policy-intro").val();
			var len = si.length;
			var maxlen = 300;
			$("#policy-limit").text(len + " / " + maxlen);
		}).on("keypress", function(){
			var si = $("#policy-intro").val();
			var len = si.length;
			var maxlen = 300;
			$("#policy-limit").text(len + " / " + maxlen)
		});
		
		//환불정책 선택
		$("#soeasy").click(function() {
			
			if($("#soeasy").is("checked") == true){
				$("#soeasy").prop("checked", true);
			} else {
				$("#soeasy").prop("checked", true);
				$("#personal").prop("checked", false);
				$("#day8-rate").val(100).prop("readonly", true);
				$("#day7-rate").val(100).prop("readonly", true);
				$("#day6-rate").val(90).prop("readonly", true);
				$("#day5-rate").val(90).prop("readonly", true);
				$("#day4-rate").val(90).prop("readonly", true);
				$("#day3-rate").val(80).prop("readonly", true);
				$("#day2-rate").val(80).prop("readonly", true);
				$("#day1-rate").val(80).prop("readonly", true);
			}
		});
		$("#personal").click(function() {
			$(".refund-input").prop("readonly", false);
			if($("#personal").is("checked") == true){
				$("#personal").prop("checked", true);
			} else {
				$("#personal").prop("checked", true);
				$(".refund-input").prop("readonly", false);
				$("#soeasy").prop("checked", false);
			}
		});
		
		$("#day8-rate").on("keyup", function(){
			var test = RegExp(/[0-9]/);
			var rate = Number($("#day8-rate").val());
			console.log(test);
			console.log(typeof rate);
			if(!test.test(rate)){
				console.log(!test.test(rate));
				console.log(typeof rate);
				alert("숫자만 입력하실 수 있습니다.");
				$(this).val("");
			}
		});
	</script>
</body>
</html>