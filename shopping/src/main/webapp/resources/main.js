/**
 * 
 */
function view(){
	document.getElementsByClassName("inner")[0].style.visibility="visible"
}
function hide(){
	document.getElementsByClassName("inner")[0].style.visibility="hidden"
}
function first_hide(){
	//document.getElementsByClassName("first")[0].style.display="none"
	$(".first").slideUp(1000)
}
// 전체카테고리 부분
function view_main(){
	document.getElementById("main_submenu").style.visibility="visible"
}
function hide_main(){
	document.getElementById("main_submenu").style.visibility="hidden"
}
function view_inner(n){
	document.getElementsByClassName("inner_menu")[n].style.visibility="visible"
}
function hide_inner(n){
	document.getElementsByClassName("inner_menu")[n].style.visibility="hidden"
}
function userid_dupcheck(form){
	var chk = new XMLHttpRequest()
	chk.open("get","userid_dupcheck?userid="+form.userid.value)
	chk.send()
	chk.onreadystatechange=function(){
		if(chk.readyState==4){
			if(chk.responseText==0){
				alert("아이디 사용가능")
				document.getElementById("uid").innerText="아이디 중복 확인"
				document.getElementById("uid").style.color="green"
			}else{
				alert("아이디 사용 불가능")
				document.getElementById("asdf").innerText="아이디 중복 확인"
				document.getElementById("uid").style.color="red"
			}
		}
	}
}
function email_dupcheck(form){
	var chk = new XMLHttpRequest()
	chk.open("get","email_dupcheck?email="+form.email.value)
	chk.send()
	chk.onreadystatechange=function(){
		if(chk.readyState==4){
			if(chk.responseText==0){
				alert("이메일 사용가능")
				document.getElementById("ema").innerText="이메일 중복 확인"
				document.getElementById("ema").style.color="green"
			}else{
				alert("이메일 사용 불가능")
				document.getElementById("ema").innerText="이메일 중복 확인"
				document.getElementById("ema").style.color="red"
			}
		}
	}
}
//pro_content.jsp
function suchange(n, p) {
	//상품의 숫자를 증가, 감소 => 상품 금액 변경
	var su = parseInt(document.getElementById("con_su").innerText)
	if (n==0){ // 감소
		if (su>1){
			su--
			document.getElementById("con_su").innerText=su
			document.getElementById("con_price").innerText=comma_change(su*p)
		}
	} else{ // 증가
		su++
		document.getElementById("con_su").innerText=su
		document.getElementById("con_price").innerText=comma_change(su*p)
	}
	
}
function comma_change(num){ // 숫자에 comma를 넣고 리턴해주는 함수
	return new Intl.NumberFormat().format(num)
}
//pro_content에서 상품 이미지 변경
function img_change(img){
	document.getElementById("con_img").src="../resources/pimg/"+img
		
}




