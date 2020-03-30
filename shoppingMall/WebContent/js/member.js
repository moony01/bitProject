function checkLogin() {
	if(document.loginForm.member_id.value==""){
		$('.id #msg').text('아이디를 입력하세요');
	} else if(document.loginForm.member_passwd.value==""){
		$('.id #msg').text('');
		$('.password #msg').text('비밀번호를 입력하세요');
	} else
		document.loginForm.submit();
}

function memberJoinAction() {
	var id = document.getElementById('member_id').value;
	var pw = document.getElementById('passwd').value;
	
	var regType1 = /^[a-z0-9+]{4,12}$/;
	
	var pw_passed = true;
	var pw_msg = "";
	var pattern1 = /[0-9]/;
	var pattern2 = /[a-zA-Z]/;
	var pattern3 = /[~!@#$%<>^&*]/;
	
	if(document.joinForm.member_id.value==""){
		$('#member_id').focus();
		$('#idMsg').text('아이디를 입력하세요.');
	} else if(!regType1.test(id)){
		$('#member_id').focus();
		$('#idMsg').text('영문소문자/숫자, 4~16자를 입력하세요.');
	} else if(document.joinForm.passwd.value==""){
		$('#idMsg').text('');
		$('#passwd').focus();
		$('#pwdMsg').text('비밀번호를 입력하세요.');
	} else if(document.joinForm.passwd.value != document.joinForm.user_passwd_confirm.value){
		$('#pwdMsg').text('');
		$('#user_passwd_confirm').focus();
		$('#confirm_pwdMsg').text('비밀번호를 확인하세요.');
	} else if(!pattern1.test(pw) || !pattern2.test(pw) || !pattern3.test(pw) || pw.length < 6 || pw.length > 16){
		$('#passwd').focus();
		$('#pwdMsg').text('영문 대소문자/숫자/특수문자 중 2가지 이상 조합, 10자~16자로 입력하세요.');
		$('#confirm_pwdMsg').text('영문 대소문자/숫자/특수문자 중 2가지 이상 조합, 10자~16자로 입력하세요.');
	} else if(document.joinForm.name.value==""){
		$('#pwdMsg, #confirm_pwdMsg').text('');
		$('#name').focus();
		$('#nameMsg').text('이름을 입력해주세요.');
	}else if(document.joinForm.mobile1.value=="" || document.joinForm.mobile2.value=="" || document.joinForm.mobile3.value==""){
		$('#nameMsg').text('');
		$('#mobile1').focus();
		$('#mobileMsg').text('전화번호를 입력하세요.');
	} else if(document.joinForm.email1.value=="" || document.joinForm.email2.value==""){
		$('#mobileMsg').text('');
		$('#email1').focus();
		$('#emailMsg').text('이메일을 입력하세요.');
	} else if(document.joinForm.zipcode.value=="" || document.joinForm.addr1.value=="" || document.joinForm.addr2.value==""){
		$('#emailMsg').text('');
		$('#daum_addr1').focus();
		$('#addrMsg').text('주소를 입력하세요.');
	} else if(document.joinForm.agree_check[1].checked == false){
		$('#addrMsg').text('');
		$('#agreeMsg1').text('동의하여주세요.');
	} else if(document.joinForm.agree_check[2].checked == false){
		$('#agreeMsg1').text('');
		$('#agreeMsg2').text('동의하여주세요.');
	} else {
		document.joinForm.submit();
	}
}

function checkPost(){
	window.open("/shoppingMall/member/checkPost.do", "", "width=500 height=500 scrollbars=yes");
}

function checkPostClose(zipcode, address){
//	opener.writeForm.zipcode.value = zipcode;
//	opener.writeForm.addr1.value = address;
//	window.close();
//	opener.writeForm.addr2.focus();
	
//	opener.document.forms[0].zipcode.value = zipcode;
//	opener.document.forms[0].addr1.value = address;
//	window.close();
//	opener.document.forms[0].addr2.focus();
	
	opener.document.getElementById("daum_zipcode").value = zipcode;
	opener.document.getElementById("daum_addr1").value = address;
	window.close();
	opener.document.getElementById("daum_addr2").focus();
}













