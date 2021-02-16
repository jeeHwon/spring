<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="decorator" uri="http://www.opensymphony.com/sitemesh/decorator" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="../resources/main.css">
<script src="../resources/main.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script>
window.onload=function(){
	var ck = 0
	setInterval(function(){
		if(ck%2==0){
			document.getElementById("first_in").innerHTML="서울 경기 인천 &nbsp;<b style='color:purple'>샛별배송</b>"
		} else{
			document.getElementById("first_in").innerHTML="수도권이외지역 &nbsp;<b style='color:purple'>택배배송</b>"
		}
		ck++
	},2000)
}
</script>
</head>
<decorator:head/>
<body>
	<div class="first">
		<div class="container">
		<span class="left">지금 가입 바로 가입하세요 </span>
		<span class="right"><span onclick="first_hide()">X</span></span>
		</div>
	</div>
	<div class="second">
		<div class="left"><span id="first_in"> 수도권 이외지역 : 택배배송</span></div>
		<div class="right">
			<ul>
				<c:if test="${userid != null }">
					<li><span>일반</span>${name}님@@</li>
				</c:if>
				<c:if test="${userid == null }">
					<li><a href="../member/member">회원가입</a></li>
					<li><a href="../login/login">로그인</a></li>
				</c:if>
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
	<div class="third">
		<p align="center"><img src="../resources/img/logo.png"></p>
	</div>
	<div class="fourth">
		<ul>
			<li>전체카테고리</li>
			<li>신상품</li>
			<li>베스트</li>
			<li>알뜰쇼핑</li>
			<li>금주혜택</li>
			<li>검색창<img src="../resources/img/1.png" valign="top"></li>
			<li class="mini"><img src="../resources/img/2.png" valign="top"></li>
			<li class="mini"><img src="../resources/img/3.png" valign="top"></li>
		</ul>
	</div>
	
	<decorator:body/>
	
	
	<div class="eighth">
		<img src="../resources/img/bottom.png" width="1100">
	</div>
</body>
</html>