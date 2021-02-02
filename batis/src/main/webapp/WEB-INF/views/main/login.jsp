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
	<form method="post" action="login_ok">
		아이디<input type="text" name="userid"><p>
		비밀번호<input type="password" name="pwd"><p>
		<input type="submit" value="로그인"><p>
		<c:if test="${chk==1}">
			<span style="color:red">아이디 혹은 비밀번호 틀립니다</span>
		</c:if>
		<c:if test="${chk==2}">
			<span style="color:red">회원만 볼수 있는 페이지는 로그인하세요</span>
		</c:if>
	</form>
</body>
</html>