<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<script src="../resources/chartjs/dist/Chart.js"></script>

<div id="section" class="right_col">
  <canvas id="canvas" width="770" height="385" style="display: block; width: 770px; height: 385px;"></canvas>
  <table class="table">
    <tbody>
		<tr>
			<th> 재료명 </th>
			<th> 단 위 </th>
			<th> 가 격 </th>
			<th> 가격 증감률 </th>
		</tr>
		<c:forEach var="pdto" items="${list}">
		<tr>
			<td> ${pdto.food_name} </td>
			<td> ${pdto.unit} </td>
			<td> ${pdto.food_price} </td>
			<td style="color:blue"> ${pdto.price_percent} ▼ </td>
		</tr>
		</c:forEach> 
	</tbody>
  </table>
</div>
<script>
var label = new Array();
var food1_price = new Array();
var food1_name= new Set();
<c:forEach var="food1" items="${food1}">
	label.push("${food1.price_date}");
	food1_price.push("${food1.food_price}");
	food1_name.add("${food1.food_name}");
</c:forEach>
food1_price=food1_price.reverse();
label=label.reverse();

var food2_price = new Array();
var food2_name= new Set();
<c:forEach var="food2" items="${food2}">
	food2_price.push("${food2.food_price}");
	food2_name.add("${food2.food_name}");
</c:forEach>
food2_price=food2_price.reverse();

var food3_price = new Array();
var food3_name= new Set();
<c:forEach var="food3" items="${food3}">
	food3_price.push("${food3.food_price}");
	food3_name.add("${food3.food_name}");
</c:forEach>
food3_price=food3_price.reverse();

var food4_price = new Array();
var food4_name= new Set();
<c:forEach var="food4" items="${food4}">
	food4_price.push("${food4.food_price}");
	food4_name.add("${food4.food_name}");
</c:forEach>
food4_price=food4_price.reverse();

var food5_price = new Array();
var food5_name= new Set();
<c:forEach var="food5" items="${food5}">
	food5_price.push("${food5.food_price}");
	food5_name.add("${food5.food_name}");
</c:forEach>
food5_price=food5_price.reverse();

new Chart(document.getElementById("canvas"),
		{"type":"line",
		"data":{"labels":label,
			"datasets":[{"label":food1_name.values().next().value,"data":food1_price,"fill":false,"borderColor":"blue","lineTension":0.1},
			{"label":food2_name.values().next().value,"data":food2_price,"fill":false,"borderColor":"red","lineTension":0.1},
			{"label":food3_name.values().next().value,"data":food3_price,"fill":false,"borderColor":"yellow","lineTension":0.1},
			{"label":food4_name.values().next().value,"data":food4_price,"fill":false,"borderColor":"green","lineTension":0.1},
			{"label":food5_name.values().next().value,"data":food5_price,"fill":false,"borderColor":"grey","lineTension":0.1},
			]},
		"options":{responsive:false}});
	/* window.onload=function aa(){
		alert(food1_name.size);
	}  */
</script>	