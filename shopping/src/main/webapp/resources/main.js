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