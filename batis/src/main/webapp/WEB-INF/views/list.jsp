<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<table width="700" align="center" border="1">
	<tr>
		<td>이름</td>
		<td>제목</td>
		<td>조회수</td>
		<td>작성일</td>
	</tr>
	<c:forEach items="${list}" var="dto">
	<tr>
		<td>${dto.name}</td>
		<td><a href="readnum?id=${dto.id}">${dto.title}</a></td>
		<td>${dto.readnum}</td>
		<td>${dto.writeday}</td>
	</tr>
	</c:forEach>
	<tr>
		<td colspan="4"><a href="write">글쓰기</a></td>
	</tr>
</table>
</body>
</html>