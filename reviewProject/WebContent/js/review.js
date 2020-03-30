function checkWrite() {
	if(document.writeForm.name.value=="")
		alert("이름을 입력하세요");
	else if(document.writeForm.id.value=="")
		alert("아이디를 입력하세요");
	else if(document.writeForm.pwd.value=="")
		alert("비밀번호를 입력하세요");
	else if(document.writeForm.pwd.value != document.writeForm.repwd.value)
		alert("비밀번호가 맞지 않습니다")
	else if(document.writeForm.check.value!=document.writeForm.id.value)
		alert("중복체크 하세요");
	else
		document.writeForm.submit();
}

function checkLogin() {
	if(document.loginForm.id.value=="")
		alert("아이디를 입력하세요");
	else if(document.loginForm.pwd.value=="")
		alert("비밀번호를 입력하세요");
	else
		document.loginForm.submit();
}

function checkId() {
	var sId = document.writeForm.id.value;
	if(sId=="")
		alert("먼저 아이디를 입력하세요");
	else
		window.open("/reviewProject/review/checkId.do?id="+sId,
				"",
				"width=300 height=100 left=500 top=150 locations=yes");
}

function checkIdClose(id) {
	opener.writeForm.id.value = id;
	opener.writeForm.check.value = id;
	window.close();
	opener.writeForm.pwd.focus();
}

function checkPost(){
	window.open("/reviewProject/review/checkPost.do","","width=500 height=500 scrollbars=yes");
}

function checkPostClose(zipcode, address){
	opener.document.getElementById("daum_zipcode").value = zipcode;
	opener.document.getElementById("daum_addr1").value = address;
	window.close();
	opener.document.getElementById("daum_addr2").focus();
}