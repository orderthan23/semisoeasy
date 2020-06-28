<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>SO Easy</title>
<link rel="stylesheet" href="/login/css/layout.css">
</head>
<body>
	<header><%@ include file="../common/header.jsp"%></header>
	<nav><%@ include file="../common/aside.jsp"%></nav>
	<section>
		<div>
			<h1 style="margin:0 auto">가격 정보</h1>
		</div>
		<form action="<%= request.getContextPath() %> %>/insertSpaceCheck2" method="post">
			<table>
				<tr>
					<td>일 단위 기본 가격</td>
					<td>
						
					</td>
				</tr>
				<tr>
					<td></td>
					<td>
						<fieldset>
							<table id="office">
								<tr>
									<td>공간 사이즈</td>
									<td>
										<input type="text" name="space-size" size="18">m<sup>2</sup>
									</td>
								</tr>
								<tr>
									<td></td>
									<td>&nbsp;</td>
								</tr>
								<tr>
									<td>공간 재고</td>
									<td><input type="number" name="space-room-count"></td>
								</tr>
								<tr>
									<td></td>
									<td><p class="detail-descrip" style="float:right;">서비스 가능한 방의 갯수를 의미합니다.</p></td>
								</tr>
								<tr>
									<td>수용인원</td>
									<td><input type="number" name="space-contain-count"></td>
								</tr>
								<tr>
									<td></td>
									<td><p class="detail-descrip" style="float:right;">제공된 공간을 기준으로 합니다.</p></td>
								</tr>
							</table>
						</fieldset>
					</td>
				</tr>
				<tr>
					<td></td>
					<td>
						<fieldset>
							<table id="cowork">
								<tr>
									<td>자유석</td>
									<td><input type="number" name="unfix-seat"></td>
								</tr>
								<tr>
									<td>지정석</td>
									<td><input type="number" name="fix-seat"></td>
								</tr>
								<tr>
									<td></td>
									<td>&nbsp;</td>
								</tr>
								<tr>
									<td>좌석 수</td>
									<td><input type="number" name="space-seat-count"></td>
								</tr>
								<tr>
									<td>예약 가능 인원</td>
									<td><input type="number" name="space-person-count"></td>
								</tr>
								<tr>
									<td></td>
									<td><p class="detail-descrip" style="float:right;">제공된 공간을 기준으로 합니다.</p></td>
								</tr>
							</table>
						</fieldset>
					</td>
				</tr>
				<tr>
					<td></td><td class="warning" id="space-name" style="float:right;">공간명을 입력하셔야 합니다.</td>
				</tr>
				<tr>
					<td>공간명</td>
					<td><input type="text" maxlength="20" size="48"></td>
				</tr>
				<tr>
					<td></td><td class="text-limit" id="space-intro" style="float:right;">? / 200</td>
				</tr>
				<tr>
					<td>공간 소개</td>
					<td>
						<textarea rows="5" cols="50" maxlength="200"></textarea>
					</td>
				</tr>
				<tr>
					<td></td><td>&nbsp;</td>
				</tr>
				<tr>
					<td rowspan="2">공간 태그</td>
					<td><input type="text" size="30"><button>추가</button></td>
				</tr>
				<tr>
					<td><textarea rows="5" cols="50"></textarea></td>
				</tr>
				<tr>
					<td></td><td class="warning" id="space-capital-img" style="float:right;">대표 이미지를 추가하셔야 합니다.</td>
				</tr>
				<tr>
					<td>대표 이미지</td>
					<td><textarea rows="2" cols="40"></textarea><button onclick="">추가</button></td>
				</tr>
				<tr>
					<td></td><td>&nbsp;</td>
				</tr>
				<tr>
					<td>상세 이미지</td>
					<td><textarea rows="10" cols="40" placeholder="3장 이상을 등록하셔야 합니다."></textarea><button onclick="">추가</button></td>
				</tr>
				<tr>
					<td></td><td>&nbsp;</td>
				</tr>
				<tr>
					<td>공간 주소</td>
					<td><input type="text" size="30" placeholder="공간 주소를 입력하세요."><button>추가</button></td>
				</tr>
				<tr>
					<td></td><td><input type="text" size="40" placeholder="상세 주소를 입력하세요."></td>
				</tr>
				<tr>
					<td></td><td>&nbsp;</td>
				</tr>
				<tr>
					<td rowspan="2">공간 필수 기능</td>
					<td></td>
				</tr>
				<tr>
					<td><table>
						<tr><td><input type="checkbox" name="agree-1" value="wifi">쾌적하고 빠른 WIFI</td></tr>
						<tr><td><input type="checkbox" name="agree-2" value="concent">넉넉한 콘센트</td></tr>
						<tr><td><input type="checkbox" name="agree-3" value="wifi">철저한 예약관리</td></tr>
					</table></td>
				</tr>
				<tr>
					<td></td><td>&nbsp;</td>
				</tr>
				<tr>
					<td><input type="submit" value="다음으로" style="align:center;"></td>
					<td><input type="reset" value="초기화" style="align:center;"></td>
				</tr>
			</table>
		</form>
	</section>
	<footer><%@ include file="../common/footer.jsp"%></footer>
</body>
</html>