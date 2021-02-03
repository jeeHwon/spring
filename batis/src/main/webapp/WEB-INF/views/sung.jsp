<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script>
	function cal_score (i){
		var mid_test = document.getElementsByClassName("mid_test")[i].value
		var fin_test = document.getElementsByClassName("fin_test")[i].value
		var attend_check = document.getElementsByClassName("attend_check")[i].value
		var report = document.getElementsByClassName("report")[i].value
		
		var url = "cal_score?mid_test="+mid_test+"&fin_test="+fin_test+"&attend_check="+attend_check+"&report="+report
		var chk = new XMLHttpRequest()
		chk.open("get",url)
		chk.send()
		chk.onreadystatechange = function(){
			if(chk.readyState==4){
				document.getElementsByClassName("total_score")[i].value=chk.responseText
			}
		}
	}
</script>
</head>
<body>
	<h2>성적입력기</h2>
	<table width="600">
	<tr>
		<td>중간고사(30)</td>
		<td>기말고사(30)</td>
		<td>출석(20)</td>
		<td>레포트(20)</td>
		<td>합계</td>
	</tr>
	<c:forEach var="i" begin="1" end="10">
	<tr>
		<td><input type="text" size="4" class="mid_test"></td>
		<td><input type="text" size="4" class="fin_test"></td>
		<td><input type="text" size="4" class="attend_check"></td>
		<td><input type="text" size="4" class="report"></td>
		<td>
			<input type="button" onclick="cal_score(${i-1})" value="합계">
			<input type="text" size="4" class="total_score"> 
		</td>
	</tr>
	</c:forEach>
	</table>
</body>
</html>