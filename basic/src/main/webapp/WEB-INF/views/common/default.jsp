<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="decorator" uri="http://www.opensymphony.com/sitemesh/decorator" %>  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
#top {width:1000px; height:50px; background:red; margin:auto;}
#section {width:1000px; height:50px; background:green; margin:auto;}
#bottom {width:1000px; height:50px; background:blue; margin:auto;}
</style>
</head>  
<decorator:head/>
<body>  <!-- top , bottom의 선언 -->
	<div id="top"></div>
	<decorator:body/>
	 <!-- 모든 문서의 내용이 전부 여기 나옵니다.. -->
	<div id="bottom"></div>
</body>
</html>