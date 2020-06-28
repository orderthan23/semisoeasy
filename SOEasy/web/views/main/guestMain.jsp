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
<style>
.photobox {
	padding: 20px;
	padding-bottom : 10px;
}

h1 {
	margin: 0 auto;
}

.photo {
	border-radius: 10px;
	margin : 0 auto;
	padding : 0;
	display: block;
	
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
		
		<h1>BEST 공간!</h1>
		<table align="center" position="relative">
			<%
				for (int i = 1; i <= col;) {
			%>
			<tr>
				<%
					for (int j = 1; j <= row; i++, j++) {
				%>
				<%
					if (i > 30) {
								break;
							}
				%>

				<td class="photobox">
					<article>
						<img class="photo" src="../../images/area/area<%=i%>-1.png"
							width="400" height="265"> 코워킹 스페이스
						<%=i%>번째 공간
						<p>
							가격
							<%=i * 10000%>원 /개월
						</p>

					</article>
				</td>

				<%
					}
				%>
			</tr>
			<%
				}
			%>

		</table>
	</section>

	<footer><%@ include file="../common/footer.jsp"%></footer>
</body>
</html>