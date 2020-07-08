<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <style>

.subMenu {
  text-decoration: none;
  display: inline-block;
}
#togg_menu {
  position: absolute;
  width: 100%;
  border: none;
  outline: none;
  background: transparent;
  cursor: pointer;
  padding: 13px 10 0 0px;
  z-index: 1;
  top : 85px;
}
span.bar {
  display: block;
  width: 30px;
  height: 3px;
  margin-top: 6px;
  background: #343333;
  border-radius: 2px;
}

#togg_menu:focus ~ #navWrap > .megaMenu {
  transform: translateX(0px);
  -webkit-transform: translateX(0px);
     -moz-transform: translateX(0px);
      -ms-transform: translateX(0px);
       -o-transform: translateX(0px);
}

#navWrap{
  position: relative;
  height: 70px;

}

#profileZone{
 width:100px;
 height:100px;
 border-radius: 50px;
 border : solid;
 margin-left:auto;
 margin-right: auto;
 overflow: hidden;

}
 .megaMenu {
  transform: translateX(-270px);
  -ms-transform: translateX(-270px);
  -o-transform: translateX(-270px);
  -webkit-transform: translateX(-270px);
  -moz-transform: translateX(-270px);
          transition: all 0.3s ease-in-out;
  -webkit-transition: all 0.3s ease-in-out;
     -moz-transition: all 0.3s ease-in-out;
      -ms-transition: all 0.3s ease-in-out;
       -o-transition: all 0.3s ease-in-out;
  list-style-type: none;
  padding: 0;
  margin: 0;
  top: 0px;
  left: 0;
  background:#3DB6AE;
  opacity : 0.9;
  position: fixed;
  width: 250px;
  height: 100%;
  padding-top: 50px;
  z-index: 100;
  border-right: 2px solid #ddd;
          box-shadow: 2px 2px 50px 3px #000;
  -webkit-box-shadow: 2px 2px 50px 3px #000;
     -moz-box-shadow: 2px 2px 50px 3px #000;
      -ms-box-shadow: 2px 2px 50px 3px #000;
       -o-box-shadow: 2px 2px 50px 3px #000;
}
.subTitle {
          transition: all 0.3s ease-in-out;
  -webkit-transition: all 0.3s ease-in-out;
     -moz-transition: all 0.3s ease-in-out;
      -ms-transition: all 0.3s ease-in-out;
       -o-transition: all 0.3s ease-in-out;
       margin : 10px;

}
.megaMenu li hr{
	border:solid 1px;
	border-color: lightgray;
	opacity : 0.5;
	
}

 
.subTitle a:hover {
  color: #fff;
}



.infoZone{
	text-align: center;
	font-size : 16px;
	font-weight: bolder;
	padding: 10px 0;
}

.subTitle {
	
	text-decoration: none;
	list-style: none;
	width: 80%;
	margin-left : auto;
	margin-right : auto;
	margin-top : 30px;
}
.mainTitle{
	
	text-decoration: none;
	list-style: none;
	width: 80%;
	margin-left : auto;
	margin-right : auto;
}
.subNav{
	font-size : 18px;
	font-weight : bolder;
	color: black;
  	text-align: center;
  	text-decoration:none;
  	background: #3DB6AE;

  	width: 90%;
    transition: all 0.3s ease-in-out;
  	-webkit-transition: all 0.3s ease-in-out;
    -moz-transition: all 0.3s ease-in-out;
    -ms-transition: all 0.3s ease-in-out;
    -o-transition: all 0.3s ease-in-out;
}
.mainNav{
	font-size : 25px;
	font-weight : bolder;
	color: black;
  	text-align: center;
  	text-decoration:none;
  	background: #3DB6AE;

  	width: 90%;
}

#navWrap h1 {
  position: absolute;
  padding-top: 6px;
  margin: 0;
  left: 50%;
  top: 50%;
  -webkit-transform: translate(-50%, -50%);
          transform: translate(-50%, -50%);
  font-size: 16px;
  font-weight:bolder;
  z-index: 1;
}
#profileZone img{
	width:100%;
	height: 100%;
	object-fit: cover;
}
</style>
</head>
<body>

  <head>
    <meta charset="UTF-8">
    <meta name="veiwport" content="initial-scale=1, width=device-width" />
    
    <title>SO Easy</title>
  </head>
  <body>  
  
    <button id='togg_menu'>
        <span class='bar'></span>
        <span class='bar'></span>
        <span class='bar'></span>
    </button>

  <div id="navWrap">
      <h1></h1>
      <ul class='megaMenu'>
      	<li class="infoZone"><div id="profileZone"><img src="/login/images/etc/lingard.png"></div></li>
      	<li class="infoZone">린가드</li>
      	<li class="infoZone">GUEST</li>
      	<li><hr></li>
         
        <li class="mainTitle"><a href='#' class="mainNav">예약목록</a></li>
        <li class="subTitle"><a href='#' class="subNav">이용 내역 </a> </li>
        <li class="subTitle"><a href='#' class="subNav">찜 리스트 </a> </li>
        <li class="subTitle"><a href='#' class="subNav">리뷰 목록 </a></li>
 		<li><hr></li>
            
   	
        <li class="mainTitle"><a href='#' class="mainNav">기타</a></li>
        <li class="subTitle"><a href='/login/views/member/updateMember.jsp' class="subNav">개인 정보 관리</a></li>
        <li class="subTitle"><a href='/login/views/board/board.jsp' class="subNav">공지 사항</a></li>
        <li class="subTitle"><a href='#' class="subNav">Q & A</a></li>
          
          
      </ul>
    
  </div>
  	

    

    
  
  </body>
    
</html>

