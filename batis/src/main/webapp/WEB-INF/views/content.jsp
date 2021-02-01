<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
#del {position:absolute;left:0px;top:0px;visibility:hidden;}
</style>
<script>
	function del(){
		document.getElementById("del").style.left=event.clientX+"px";		
		document.getElementById("del").style.top=event.clientX+"px";		
		document.getElementById("del").style.visibility="visible";	
	}
</script>
</head>
<body>
	<table width="600" align="center" border="1">
		<tr>
			<td>제목</td><td>${dto.title}</td>
		</tr>
		<tr>
			<td>이름</td><td>${dto.name}</td>
		</tr>
		<tr>
			<td>내용</td><td>${fn:replace(dto.content,rn,"<br>")}</td>
		</tr>
		<tr>
			<td>조회수</td><td>${dto.readnum}</td>
		</tr>
		<tr>
			<td>작성일${chk}</td><td>${dto.writeday}</td>
		</tr>
		<tr>
			<td colspan=2>
				<a href="update?id=${dto.id}">수정하기</a>
				<a href="#" onclick="del()">삭제하기</a>
				<a href="list">목록으로</a>
			</td>
		</tr>
		<c:if test="${chk==1}">
		<tr>
			<td colspan="2" align="center" style="color:red;">
			비밀번호가 틀립니다
			</td>
		</tr>
		</c:if>
	</table>
	<div id="del">
		<form method="post" action="delete">
			<input type="hidden" name="id" value="${dto.id}">
			<input type="text" name="pwd" placeholder="비밀번호">
			<input type="submit" value="삭제하기">
		</form>
	</div>
</body>
</html>