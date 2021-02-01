<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form method="post" action="update_ok">
	<input type="hidden" name="id" value="${dto.id}">
	이름<input type="text" name="name" value="${dto.name}"><p>
	제목<input type="text" name="title" value="${dto.title}"><p>
	내용<textarea cols="30" rows="4" name="content">${dto.content}</textarea><p>
	비번<input type="password" name="pwd"><p>
	<input type="submit" value="수정"><p>
	<c:if test="${chk==1}">
		<div style="color:red;">비밀번호가 틀립니다</div>
	</c:if>
</form>
</body>
</html>