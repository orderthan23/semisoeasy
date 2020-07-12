<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>리뷰 작성</title>
 <link
    rel="stylesheet"
    href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.css"
  />
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<style>
	#outer {
		border:3px solid #40a4b6;
		width:650px;
		height:500px;
	}
	
	.btn {
		width:70px;
		height:30px;
		background:#40a4b6;
		color:white;
		border:0;
		outline:0;
		border-radius:10px;
		font-size:15px;
	}
	
	#cancel {
		width:70px;
		height:30px;
		background:white;
		color:#40a4b6;
		border:0;
		outling:0;
		border-radius:10px;
		font-size:15px;
		border:2px solid #40a4b6;
	}
	
	#textArea {
		resize:none;
		border:2px solid #40a4b6;
		border-radius:10px;
	}

</style>
</head>
<body>

<section>
<div style="width:75%; margin-left:auto; margin-right:auto;">

	<div id="outer">
		<h1 align="center" style="color:#40a4b6;">리뷰 작성</h1>
		<table style="margin-right:auto; margin-left:auto;">
			<tr>
				<td width="90px">
					<button class="btn" align="center">
						별점
					</button>
				</td>
				<td>
          			<i class="fa fa-star-o reviews" aria-hidden="true"></i>
          			<i class="fa fa-star-o reviews" aria-hidden="true"></i>
          			<i class="fa fa-star-o reviews" aria-hidden="true"></i>
          			<i class="fa fa-star-o reviews" aria-hidden="true"></i>
          			<i class="fa fa-star-o reviews" aria-hidden="true"></i>
          		</td>
			</tr>
			<tr>
				<td width="90px">
					<button class="btn" align="center" style="margin-bottom:280px;">
						내용
					</button>
				</td>
				<td>
					<textarea id="textArea" cols="50" rows="20">
					</textarea>
				</td>
			</tr>
		</table>
		
		<table align="center">
			<tr>
				<td><button onclick="submit();" class="btn" id="submit" style="cursor:pointer;">등록</button></td>
				<td><button onclick="self.close();" class="btn" id="cancel" style="cursor:pointer;">취소</button></td>
			</tr>	
		</table>
		
	</div>
	
	<script>
	var textArea = $("#textArea").val();
	$(document).ready(function(){
		$("#submit").click(function(){
			
			//왜 안돼
			if(textArea == "") {
				alert('내용을 작성해주세요.');  
			} else {
				alert('리뷰 등록이 완료되었습니다.');
				self.close();
			} 
			
		});
	}); 
	
	
	</script>
	
	
</div>
</section>

</body>
</html>