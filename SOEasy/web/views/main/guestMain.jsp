<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	int col = 30;
	int row = 3;
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<title>Insert title here</title>
<link rel="stylesheet" href="../../css/layout.css">
<link href="https://unpkg.com/tailwindcss@^1.0/dist/tailwind.min.css"
	rel="stylesheet">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

<script>
	var cont = 0;
	function loopSlider() {
		var xx = setInterval(function() {
			switch (cont) {
			case 0: {
				$("#slider-1").fadeOut(400);
				$("#slider-2").delay(400).fadeIn(400);
				$("#sButton1").removeClass("bg-purple-800");
				$("#sButton2").addClass("bg-purple-800");
				cont = 1;

				break;
			}
			case 1: {

				$("#slider-2").fadeOut(400);
				$("#slider-1").delay(400).fadeIn(400);
				$("#sButton2").removeClass("bg-purple-800");
				$("#sButton1").addClass("bg-purple-800");

				cont = 0;

				break;
			}

			}
		}, 8000);

	}

	function reinitLoop(time) {
		clearInterval(xx);
		setTimeout(loopSlider(), time);
	}

	function sliderButton1() {

		$("#slider-2").fadeOut(400);
		$("#slider-1").delay(400).fadeIn(400);
		$("#sButton2").removeClass("bg-purple-800");
		$("#sButton1").addClass("bg-purple-800");
		reinitLoop(4000);
		cont = 0

	}

	function sliderButton2() {
		$("#slider-1").fadeOut(400);
		$("#slider-2").delay(400).fadeIn(400);
		$("#sButton1").removeClass("bg-purple-800");
		$("#sButton2").addClass("bg-purple-800");
		reinitLoop(4000);
		cont = 1

	}

	$(window).ready(function() {
		$("#slider-2").hide();
		$("#sButton1").addClass("bg-purple-800");

		loopSlider();

	});
</script>
<style>
.photobox {
	padding: 20px;
	padding-bottom: 10px;
}

h1 {
	margin: 0 auto;
}

.space-title-photo {
	border-radius: 10px;
	margin: 0 auto;
	padding: 0;
	display: block;
	width: 400px;
	height: 265px;
}

article {
	border-style: solid;
	border-color: #3DB6AE;
	border-width: 2px;
	border-radius: 10px;
	background: #3DB6AE25;
}
</style>

</head>
<body>
	<header>
		<%@ include file="../common/header.jsp"%>
	</header>

	<nav>
		<%@ include file="../common/aside.jsp"%>
	</nav>
	<section>

		<div class="sliderAx h-auto">
			<div id="slider-1" class="container mx-auto">
				<div
					class="bg-cover bg-center  h-100 text-white py-24 px-10 object-fill"
					style="background-image: url(/login/images/area/area18-1.png)">
					<div class="md:w-1/2">
						<p class="font-bold text-sm uppercase">SO EASY</p>
						<p class="text-6xl font-bold" >공유 오피스 찾을 땐 SO Easy!</p>
						<br><br>
					<br><br>
					<br><br>
					<br><br>
					<br><br>
					<br><br>
					</div>
				</div>
				<!-- container -->
				<br>
			</div>

			<div id="slider-2" class="container mx-auto">
				<div
					class="bg-cover bg-top  h-auto text-white py-24 px-10 object-fill"
					style="background-image: url(/login/images/area/area20-1.png)">

					<p class="font-bold text-sm uppercase">SO EASY</p>
					<p class="text-3xl font-bold">공유 오피스 찾을 땐 SO Easy!</p>
					<br><br>
					<br><br>
					<br><br>
					<br><br>
					<br><br>
					<br><br>
					
		
				</div>
				<!-- container -->
				<br>
			</div>
		</div>
		<div class="flex justify-between w-12 mx-auto pb-2">
			<button id="sButton1" onclick="sliderButton1()"
				class="bg-purple-400 rounded-full w-4 pb-2 "></button>
			<button id="sButton2" onclick="sliderButton2() "
				class="bg-purple-400 rounded-full w-4 p-2"></button>
		</div>

		<h1>BEST 공간!</h1>
		<table align="center" position="relative" id="spaceBoard">

		</table>
	</section>

	<footer><%@ include file="../common/footer.jsp"%></footer>

	<script>
		$(this)
				.ready(
						function() {
							var col =
	<%=col%>
		;
							var row =
	<%=row%>
		;
							$('#spaceBoard')
									.append(
											function() {
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
																+ '<p> 코워킹 스페이스<i번째 공간<br>'
																+ '가격<br>'
																+ i
																* 10000
																+ '원 /개월'
																+ '</p>'

																+ '</article>'
																+ '</td>'

													}
													sentence += "</tr>"
												}
												return sentence;
											});

						});
	</script>

</body>
</html>