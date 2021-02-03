<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script>
	function cal_score (){
		var kor = document.getElementById("kor").value
		var eng = document.getElementById("eng").value
		var url = "ajax_cal?kor="+kor+"&eng="+eng
		var chk = new XMLHttpRequest()
		chk.open("get",url)
		chk.send()
		chk.onreadystatechange = function(){
			if(chk.readyState==4){
				document.getElementById("total_score").innerText=chk.responseText
			}
		}
	}
</script>
</head>
<body>
	국어<input type="text" id="kor"><p>
	영어<input type="text" id="eng"><p>
	<input type="button" onclick="cal_score()" value="합계"><p>
	합계<span id="total_score"></span>
</body>
</html>