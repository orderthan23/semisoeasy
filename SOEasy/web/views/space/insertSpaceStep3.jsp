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
	input[type=checkbox]{
		cursor: pointer;
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
	.btnArea{
		margin: 50px;
	}
	img{
		max-width: 100%;
		max-height: 100%;
		margin: auto;
	}
	.thumbnail{
		border: 1px solid black;
		border-radius: 10px;
		display: inline-block;
		text-align: center;
		vertical-align: middle;
	}
	#cap{
		border: 1px solid black;
		border-radius: 10px;
		text-align: center;
	}
	#capital-img{
		text-align: center;
		vertical-align: middle;
	}
	.box-file-input label{
    display:inline-block;
    background:#23a3a7;
    color:#fff;
    padding:0px 15px;
    line-height:35px;
    cursor:pointer;
	}
	
	.box-file-input label:after{
	    content:"파일등록";
	}
	
	.box-file-input .file-input{
	    display:none;
	}
	
	.box-file-input .filename{
	    display:inline-block;
	    padding-left:10px;
	}
	.filename{
		border: 1px solid black;
		border-radius: 10px;
		height: 30px;
	}
</style>
</head>
<body>
	<header><%@ include file="../common/header.jsp"%></header>
	<nav><%@ include file="../common/aside.jsp"%></nav>
	<section>
		<div>
			<h1 align="center">정산 정보</h1>
		</div>
		<form action="<%= request.getContextPath() %>/insertSpaceStep3" method="post">
			<table class="space-insert" align="center" width="60%">
				<tr>
					<td></td>
					<td></td>
					<td align="right"><p class="text-limit" id="bsns-name-limit">0 / 20</p></td>
					<td></td>
				</tr>
				<tr>
					<td width="10%"></td>
					<td width="20%">상호명 *</td>
					<td width="40%">
						<input type="text" maxlength="20" name="bsns-name" id="bsns-name">
					</td>
					<td width="10%"></td>
				</tr>
				<tr>
					<td>&nbsp;</td>
				</tr>
				<tr>
					<td></td>
					<td style="vertical-align:top;">사업자등록번호 *</td>
					<td>
						<input type="text" name="bsns-license-no" id="bsns-license-no">
						<br><br>
						<div class="box-file-input">
							<p class="filename" style="width:70%;">파일을 선택해주세요.</p>
							<label style="align:right;"><input type="file" class="file-input" name="bsns-license-img" id="bsns-license-img" accept="image/*,.pdf"></label>
						</div>
					</td>
					<td></td>
				</tr>
				<tr class="check-type" id="check-type">
					<td></td>
					<td style="vertical-align:top;">사업자 유형 *</td>
					<td>
						<fieldset>
							<table align="center" width="90%">
								<tr>
									<td width="40%" style="text-align:center;">
										<input type="radio" name="bsns-type" id="bsns-type1" value="1">
									</td>
									<td width="60%">
										<label for="bsns-type1">간이 과세자</label>
									</td>
									<td></td>
								</tr>
								<tr>
									<td width="40%" style="text-align:center;">
										<input type="radio" name="bsns-type" id="bsns-type2" value="2">
									</td>
									<td width="60%">
										<label for="bsns-type2">일반 과세자</label>
									</td>
									<td></td>
								</tr>
								<tr>
									<td width="40%" style="text-align:center;">
										<input type="radio" name="bsns-type" id="bsns-type3" value="3">
									</td>
									<td width="60%">
										<label for="bsns-type3">법인 과세자</label>
									<td></td>
								</tr>
								<tr>
									<td width="40%" style="text-align:center;">
										<input type="radio" name="bsns-type" id="bsns-type4" value="4">
									</td>
									<td width="60%">
										<label for="bsns-type4">면세 사업자</label>
									</td>
									<td></td>
								</tr>
								<tr>
									<td width="40%" style="text-align:center;">
										<input type="radio" name="bsns-type" id="bsns-type5" value="5">
									</td>
									<td width="60%">
										<label for="bsns-type5">기타 사업자</label>
									</td>
									<td></td>
								</tr>
							</table>
						</fieldset>
					</td>
					<td></td>
				</tr>
				<tr>
					<td>&nbsp;</td>
				</tr>
				<tr>
					<td></td>
					<td>주 업태 *</td>
					<td>
						<input type="text" name="bsns-condition" size="30%" onclick="this.select();">
					</td>
					<td></td>
				</tr>
				<tr>
					<td>&nbsp;</td>
				</tr>
				<tr>
					<td></td>
					<td>주 종목 *</td>
					<td>
						<input type="text" name="bsns-event" size="30%" onclick="this.select();">
					</td>
					<td></td>
				</tr>
				<tr>
					<td>&nbsp;</td>
				</tr>
				<tr>
					<td></td>
					<td>사업장 주소 *</td>
					<td>
						<input type="text" placeholder="사업장 주소를 입력하세요." id="roadAddrPart1"  name="bsns-address1" readonly>&nbsp;&nbsp;<button type="button" onclick="goPopup();">검색</button>
					</td>
					<td></td>
				</tr>
				<tr>
					<td></td>
					<td></td>
					<td>
						<input type="text" placeholder="상세 주소를 입력하세요." id="addrDetail"  name="bsns-address2" readonly>
						<br><input type="checkbox" id="equal-space" style="float:right;">공간 주소와 동일<!-- 공간주소 받아와서 체크시 자동으로 입력되게 -->
					</td>
					<td></td>
				</tr>
				<tr>
					<td></td>
					<td>&nbsp;</td>
				</tr>
				<tr>
					<td></td>
					<td>여기부터 고치기*</td>
					<td><input type="text" maxlength="20" name="space-name" id="space-name"></td>
					<td></td>
				</tr>
				<tr>
					<td></td>
					<td>&nbsp;</td>
				</tr>
			</table>
			<div class="btnArea" align="center">
				<button type="reset">초기화</button>
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				<button type="submit">작성완료</button>
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
			$(".warning").show();
		}
	
		function initEvent(){
			$("#bsns-name").on("keyup", function(){
				var bn = $("#bsns-name").val();
				var len = bn.length;
				var maxlen = 20;
				$("#bsns-name-limit").text(len + " / " + maxlen);
			}).on("keypress", function(){
				var si = $("#bsns-name").val();
				var len = si.length;
				var maxlen = 20;
				$("#bsns-name-limit").text(len + " / " + maxlen)
			});
		}//initEvent initEvent
		
	    $(".file-input").on("change", function(){
	        
	        $filename = $(this).val();

	        if($filename == "")
	            $filename = "파일을 선택해주세요.";

	        $(".filename").text($filename);

	    });
		
	</script>
</body>
</html>