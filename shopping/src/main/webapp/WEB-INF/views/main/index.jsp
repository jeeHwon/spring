<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
.first {width:1100px; height:30px; background:pupple; margin:auto;}
.first .left {display:inline-block; text-align:center; width:1000px; height:30px; text-align:center; 
	padding-top:4px; color:white; font-size:13px;}
.first .right {display:inline-block; width:1000px; height:30px; text-align:center; padding-top:4px; 
	color:white; font-size:13px;}
.second {width:1100px; height:30px; margin:auto; padding-top:3px;}
.second .left {float:left; padding-top:2xp; font-size:13px;}
.second .left span {display:inline-block; width:170px; height:20px; padding-top:4px; text-align:center;
	border:1px solid #cccccc;}
.second .right {float:right; margin-top:-10px; font-size:13px;}
.second .right > ul > li {display:inline-block; list-style-type:none; margin-left:12px; height:30px;}
.second .right .inner {position:absolute; width:120px; height:110px; left:-60px; top:20px; background:
	white; border:1px solid black; visibility:hidden;}
.second .right .inner li {margin-top:3px;}
.third {width:1100px; height:80px; background:blue; margin:auto;} 
.fourth {width:1100px; height:80px; background:green; margin:auto;} 
.fifth {width:1100px; height:80px; background:lightblue; margin:auto;} 
.sixth {width:1100px; height:80px; background:#541684; margin:auto;} 
.seventh {width:1100px; height:80px; background:#882156; margin:auto;} 
.eighth {width:1100px; height:80px; background:#89a469; margin:auto;} 
</style>
<script>
function view(){
	document.getElementsByClassName("inner")[0].style.visibility="visible"
}
function hide(){
	document.getElementsByClassName("inner")[0].style.visibility="hidden"
}
</script>
</head>
<body>
	<div class="first">
		<span class="left">지금 가입 바로 가입하세요 &npsp;&npsp;&npsp;</span>
		<span class="right">X</span>
	</div>
	<div class="second">
		<div class="left"><span> 수도권 이외지역 : 택배배송</span></div>
		<div class="right">
			<ul>
				<li>회원가입</li>
				<li>로그인</li>
				<li style="position:relative" onmouseover="view()" onmouseout="hide()">고객센터
					<ul class="inner" onmouseover="view()" onmouseout="hide()">
						<li>공지사항</li>
						<li>자주하는질문</li>
						<li>1:1문의</li>
						<li>상품제안</li>
						<li>에코포장 피드백</li>
					</ul>
				</li>
			</ul>
		</div>
	</div>
	<div class="third"></div>
	<div class="fourth"></div>
	<div class="fifth"></div>
	<div class="sixth"></div>
	<div class="seventh"></div>
	<div class="eighth"></div>
</body>
</html>