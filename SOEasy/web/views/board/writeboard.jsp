<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<!-- 합쳐지고 최소화된 최신 CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<!-- 부가적인 테마 -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
<!-- 합쳐지고 최소화된 최신 자바스크립트  -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
<style>
	.category{
		position : relative;
		left : 150px;
		top: 10px;
		visibility:hidden;
	}
	.btn{
		position :relative;
		right : 47px;
		background-color: #60B4A6;
		color:black;
	}
	.logo{
		position: relative;
		left : 55px;
	}
		
	}
	hr{
		margin-top : -20px;
	}
	.answer{
		postion: relative;
		width: 1170px;
		height: 250px;
		/*background-color : #dddddd*/
		outline-top:none;
		padding-left: 20px;
		resize:none;
		border : 1px solid #60B4A6;
		font-size : 20px;
		color : #dddddd;
	}
	.question{
		postion: relative;
		width: 1170px;
		height: 150px;
		/*background-color : #dddddd*/
		margin-top : -20px;
		outline-top:none;
		padding-left: 20px;
		resize:none;
		border : 1px solid #60B4A6;
		font-size : 20px;
		color : #60B4A6;
	}
	.awbtn{
		position :relative;
		background-color: #60B4A6;
		left: 1070px;
		color:whtie;
		width:100px;
		text-align:center;
		margin-top : -20px;
		height:30px;
	}
	.wrap{
		margin-top: -10px;
	
	}
	.aTitle{
		width: 975px;
		height: 35px;
		background-color:#60B4A6;
		color:white;
	}
	
	.aDay{
		width:195px;
		height: 35px;
		background-color:#60B4A6;
		color:white;
	}
	
	textarea:focus {
  		outline: none;
	}
	
	button:focus{
		outline: none;
	}
	.OX{}
</style>
<meta charset="UTF-8">
<meta name="viewport" content="width-device-width" initial-scale="1"> 
<link rel="stylesheet" href="css/bootstrap.css">
<title>Insert title here</title>
</head>
<body>
	<header><%@ include file="../common/header.jsp"%></header>
	<nav><%@ include file="../common/aside.jsp"%></nav>
	<section>
	<h2 class ="logo" style= "text-align:left;">1대1문의(관리자)</h2>
	<a href="board.jsp" class="btn pull-right">뒤로가기</a>
	<select class="category">
		<option class="category">계정관련</option>
		<option class="category">결제관련</option>
	</select>

	<div class="container">
		<div class="row">
			<table class="table table-striped" style="text-align:center	border: 1px solid #dk">
				<thead>
					<tr>
						<th style="background-color: #60B4A6; color:white; text-align:center;">번호</th>
						<th style="background-color: #60B4A6; color:white; text-align:center;">카테고리</th>
						<th style="background-color: #60B4A6; color:white; text-align:center;">제목</th>
						<th style="background-color: #60B4A6; color:white; text-align:center;">작성자</th>
						<th style="background-color: #60B4A6; color:white; text-align:center;">작성일자</th>
						<th style="background-color: #60B4A6; color:white; text-align:center;"></th>
					</tr>
					</thead>
					<tbody>
						<tr>
							<td style="text-align:center;">1</td>
							<td style="text-align:center;">계정관련</td>
							<td style="text-align:center;">이용했던 곳을 다시 이용하려는데 리스트에 보이지 않아요</td>
							<td style="text-align:center;">coding12</td>
							<td style="text-align:center;">2020-06-26</td>
							<td style="text-align:center;"></td>
						</tr>
					</tbody>
					<tfoot>
					</tfoot>	
			</table>		
							<textArea class="question" readonly>제가 못 찾는 건지 잘 모르겠습니다만,상호명은 역삼동 혼자사무실이었던 것으로 기억합니다.</textArea>
							<table class="wrap">
							<tr>
								<td class="aTitle" style="text-align:center;">답변</td>
								<td class="aDay"style="text-align:center;">답변일자</td>
							</tr>
							</table>
									<textArea class="answer" readonly>안녕하세요 coding12님?문의주신 내용에 대해서 답변해드리겠습니다.
현재 '역삼동 혼자사무실'의 호스트가 공간 삭제요청을 하여 삭제 처리하였습니다.
다른 오피스를 이용 부탁드리겠습니다.</textArea>
									<button id=answer class="awbtn" value="답변하기">답변하기</button>
									<!-- 추후 삭제 할 예정 -->
									<a href="adminFAQ.jsp" class="btn pull-right">자주묻는질문</a>
						</div>
			</div>
		
	</section>
	<footer><%@ include file="../common/footer.jsp"%></footer>
	<script>
	$(function() {
		  $('#answer').click( function() {
		    if( $(this).html() == '답변하기' ) {
		    	 $(".answer").removeAttr("readonly");
		      $(this).html('수정완료');
		      
		    }
		    else if($(this).html()=== '수정완료'){
		    	 $(".answer").attr("readonly",true);
		      $(this).html('답변하기');
		    }
		  });
		});
		</script>
		
	
</body>
</html>