<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<style>
#list_section {width: 1100px; margin: auto;}
#list_section td{width: 310px; height:400px;}
</style>
<div id="list_section">
	<table width="1000" align="center">
		<tr>
			<c:set var="ck" value="1" />
			<c:forEach var="pdto" items="${list}">
				<td style="cursor:pointer" onclick="location='pro_content?pcode=${pdto.pcode}'">
					<img src="../resources/pimg/${pdto.mimg}" width="310" height="350">
					${pdto.title}<p>
					<fmt:formatNumber value="${pdto.price}"/>원<p>
					${pdto.subtitle}
				</td>
				<c:if test="${ck%3==0}">
		</tr>
		<tr>
			</c:if>
			<c:set var="ck" value="${ck+1}" />
			</c:forEach>
		</tr>
	</table>

</div>
