<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="com.kh.login.member.model.vo.Member"%>
<%	Member loginUser =(Member)session.getAttribute("loginUser");
	int col = 30;
	int row = 3;
	int userStatus;
	if(loginUser==null){
		userStatus = 0;
	}
	else{
		userStatus = loginUser.getStatus();
	}
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



#themeList button{
	width: 250px;
	height :150px;
	background :#E9F6FD;
	margin-left: 10px;
	border-radius : 5px;
	border-style: none;
	box-shadow: 0px 4px 4px rgba(0, 0, 0, 0.1);
	font-size : 20px;
	font-weight: bolder;
}
#themeList button:hover{
	background : #75CDFF;
	color : white;
	box-shadow: 0px 4px 4px rgba(0, 0, 0, 0.1);
}
#localList table tr td button {
	font-size: 20px;
	font-weight : bolder;
	border:none;
	background: none;
	
}
#localList table tr td button:hover{
	color:#3DB6AE;
}

#localList table tr td button:focus{
	border:none;
	outline: none;
	
}
#localList table{
	margin-left:auto;
	margin-right: auto;
	margin-bottom:20px;
}


</style>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

<link rel="stylesheet" href="../../css/layout.css">




</head>
<body>


	<header>
		<% if(userStatus==1 || userStatus==2){ %>
		<%@ include file="../common/guestHeader.jsp"%>
		<% }else if(userStatus==3){ %>
		<%@ include file="../common/adminHeader.jsp"%>
		<% }else{ %>
		
		<%@ include file="../common/header.jsp"%>
		<%} %>
		
	</header>

	<section>

		  


		<%@ include file="../common/slider.jsp" %>
		<br>
		<div style="width:90%; margin-left:auto; margin-right:auto;">
		<h1>테마전!</h1>
		<div style="display:inline-block; width:60%;" id="themeList" >
			<button>외근이 잦아요!<br> 코워킹 스페이스</button>
			<button>직원이 많아요!<br> 임대사무실</button>
			<button>하루만 이용!<br> 코워킹라운지</button>
			<br><br>
		</div>
		
		<div style="display: inline-block; width: 35%; background : #EBEBEB; border-radius:5px;" id="localList">
			
			<table align="center" style=" width:90%; ">
				<tr>
					<th colspan="4" style="text-align:center" ><p style="font-size:20px; font-weight:bolder;">지역별 검색</p></th>
				</tr>
				<tr>
					
					<td><button>종로구</button></td>
					<td><button>강남구</button></td>
					<td><button>서초구</button></td>
					<td><button>관악구</button></td>
				</tr>
				<tr>
					<td><button>동작구</button></td>
					<td><button>송파구</button></td>
					<td><button>마포구</button></td>
					<td><button>구로구</button></td>
				</tr>
				<tr>
					<td><button>용산구</button></td>
					<td><button>은평구</button></td>
					<td><button>강북구</button></td>
					<td><button>중구</button></td>
				</tr>
				<tr>
					<td><button>인천시</button></td>
					<td><button>성남시</button></td>
					<td><button>수도권</button></td>
					<td><button>기타지역</button></td>
				</tr>
			
			</table>
		</div>
		<br><br>
		<h1>NOW 인기 공간</h1>
		<table align="center" position="relative" id="spaceBoard">

		</table>
		</div>
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
    
    
   
</script>

</body>
</html>