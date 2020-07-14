<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%  %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<style>
.photobox {
	padding: 20px;
	padding-bottom: 10px;
}

.space-title-photo {
	border-radius: 10px;
	margin: 0 auto;
	padding: 0;
	display: block;
	width: 400px;
	height: 265px;
}

.visual {
	position: relative;
	width: 100%;
}

#searchResult {
	position: absolute;
	top: 40%;
	left: 28%;
	font-size: 40px;
	font-weight: bolder;
	color: black;
	text-align: center;
}
.filter-bg {
	background: white;
	width: 100%;
	height: 115px;
}
.filter {
	vertical: center;
	width: 70%;
	height: 20px;
	align: center;
	border-collapse: collapse;
	border-spacing: 0;
	vartical-align: middle;
}

.filter select {
	width: 90%;
	height: 30px;
	border: 1px solid lightgray;
}

.typeBox {
	margin-left: 5%;
}

.price-box {
	width: 95%;
	height: 40px;
	background: white;
	border: 1px solid lightgray;
}

.price {
	margin: 4.5px;
	width: 35%;
	height: 30px;
	border: 1px solid lightgray;
}
</style>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<link rel="stylesheet" href="../../css/layout.css">
<title>SO Easy</title>

</head>
<body>
	<header><%@ include file="../common/header.jsp"%></header>
	<nav><%@ include file="../common/aside.jsp"%></nav>

	<section>


		<% int col = 30;
			int row = 3; %>

		<div class="visual">
			<div
				style="background-image: url(../../images/area/area22-4.png); display: block; height: 300px; width: 100%; background-repeat: no-repeat; background-size: cover; filter: blur(8px); -webkit-filter: blur(8px);">
			</div>
			<div id="searchResult">
				<p style="text-shadow: 1px 2px 2px #ffffff;">
					<b style="color: #40a4b6;"><%="코워킹 스페이스" %></b> (으)로 검색한 결과입니다.<br>
				</p>
			</div>
		</div>
		<br>
		<div style="width: 90%; margin-left: auto; margin-right: auto;">

			<!-- <div style="display: inline-block; width: 30%; background : #EBEBEB; border-radius:5px;" id="localList">
			
		</div> -->
		</div>
		<div class="filter-box">
		<div class="filter-bg">
			<br>
			<table align="center" class="filter">
				<tr>
					<td rowspan="2">필터</td>
					<td><select>
							<option>==공간유형==</option>
							<option>코워킹스페이스</option>
							<option>독립오피스</option>
							<option>공간유형3</option>
					</select></td>
					<td><select>
							<option value="전체보기">==전체보기==</option>
							<option value="서울">서울</option>
							<option value="경기">경기</option>
							<option value="인천/부천">인천/부천</option>
							<option value="춘천/강원">춘천/강원</option>
							<option value="부산/울산/경남">부산/울산/경남</option>
							<option value="대구/경북">대구/경북</option>
							<option value="전주/전북">전주/전북</option>
							<option value="광주/전남">광주/전남</option>
							<option value="청주/충북">청주/충북</option>
							<option value="청주/충북">청주/충북</option>
							<option value="대전/충남">대전/충남</option>
							<option value="제주">제주</option>
					</select></td>
					<td><select>
							<option>==이용유형==</option>
							<option>1일권</option>
							<option>1개월권</option>
							<option>1주일권</option>
					</select></td>
					<td rowspan="2"><button
							style="background: #40a4b6; color: white; border: 0px; border-radius: 10px; width: 90px; height: 40px;">검색</button></td>
				</tr>
				<tr>
					<td colspan="2">
						<div class="price-box">
							가격
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							<input class="price">~<input class="price">
						</div>

					</td>
					<td><select>
							<option>추천순</option>
							<option>가격 낮은순</option>
							<option>가격 높은순</option>
							<option>인기순</option>
					</select></td>
					<td></td>
				</tr>
			</table>
		</div>
			<br>
			<br>
			<div class="typeBox">
				<input class="sType" type="button" value="코워킹 스페이스"
					style="background-color: transparent; border: 0px transparent solid; font-size: 20px; font-weight: bolder;">
				<input class="sType" type="button" value="독립오피스"
					style="background-color: transparent; border: 0px transparent solid;">
			</div>
			<table align="center" position="relative" id="spaceBoard">
			</table>
		</div>
	</section>
	<br>

	<script>
		$(this).ready(function() {
			var col =<%=col%>;
			var row =<%=row%>;
			$('#spaceBoard').append(function() {
				var sentence = "";
				for (var i = 1; i <= col;) {
				sentence += "<tr>";
				for (var j = 1; j <= row; i++, j++) {
				if (i > col) {
				break;
				}
				sentence += ' <td class="photobox">'
				+ '<article>'
				+ '<img class="space-title-photo"'+ 'src="../../images/area/area'+i+'-1.png"> '
				+ '<p> 코워킹 스페이스'+i+'번째 공간<br><br>'
				+ '가격 '
				+ (i* 10000) + '원 /개월'+ '</p>'
				+ '</article>'
				+ '</td>'
			}
			sentence += "</tr>"
				}
		return sentence;
			});
		});
		
		<%-- $(function(){
	           $("#spaceBoard td").click(function() {
	               //var num = $(this).children().children().eq(0).val();
	               var num = $(this).find("input").val();
	               console.log(num);
	               
				location.href="<%=request.getContextPath()%>/select.se?num=" + num;
			});
		}); --%>

	</script>




	<footer><%@ include file="/views/common/footer.jsp"%></footer>
</body>
</html>