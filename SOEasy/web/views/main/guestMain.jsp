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
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

<link rel="stylesheet" href="../../css/layout.css">




</head>
<body>


	<header>
		<%@ include file="../common/header.jsp"%>
	</header>

	<nav>
		<%@ include file="../common/aside.jsp"%>
	</nav>
	<section>

		  


		<%@ include file="../common/slider.jsp" %>

		<h1>BEST 공간!</h1>
		<table align="center" position="relative" id="spaceBoard">

		</table>
	</section>

	<footer><%@ include file="../common/footer.jsp"%></footer>

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
		+ '<p> 코워킹 스페이스<i번째 공간<br>'
		+ '가격<br>'
		+ (i* 10000) + '원 /개월'+ '</p>'
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