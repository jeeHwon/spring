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
		<td colspan="4" align="center">
			<c:if test="${pstart!=1}">
				<a href="list?page=${pstart-1}">☜</a>
			</c:if>
			<c:if test="${pstart==1}">
				☜
			</c:if>
			
			<c:if test="${page!=1}">
				<a href="list?page=${page-1}">◀</a>
			</c:if>
			<c:if test="${page==1}">
				◀
			</c:if>
			
			<c:forEach var="i" begin="${pstart}" end="${pend}">
		         <c:set var="str" value=""/>   
		            <c:if test="${page==i}">
		               <c:set var="str" value="\"style='color:red;'\""/>
		            </c:if>
		         <a href="list?page=${i} ${str}" >${i }</a>&nbsp;   
		    </c:forEach>
		    
   			<c:if test="${page!=page_cnt}">
				<a href="list?page=${page+1}">▶</a>
			</c:if>
			<c:if test="${page==page_cnt}">
				▶
			</c:if>
			
			<c:if test="${pend!=page_cnt}">
				<a href="list?page=${pend+1}">☞</a>
			</c:if>
			<c:if test="${pend==page_cnt}">
				☞
			</c:if>
		</td>
	</tr>
	<tr>
		<td colspan="4" align="center"><a href="write">글쓰기</a></td>
	</tr>

</table>
</body>
</html>