<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<style>
#list_section {width:1100px; margin:auto;}
</style>
<div id="list_section">
	<h2>${list }</h2>
	<table width="1000" aling="center">
	<tr>
	<c:set var="ck" value="1"/>
	<c:forEach var="pdto" items="${list}"> 
		<td><img src="../resouces/pimg/${pdto.mimg}" width="300" height="350"></td>
		<span>${pdto.title}</span>
	<c:if test="${ck%3==0}">
	</tr>
	<tr>	
	</c:if> 
		<c:set var="ck" value="${ck+1}"/>
	</c:forEach>
	</tr>
	</table>

</div> 