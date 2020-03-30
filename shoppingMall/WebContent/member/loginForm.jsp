<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<div id="layout_contents">
<form method="post" name="loginForm" id="loginForm" action="./loginForm.do" >
<div class="xans-member-login ">
	<h3>members login</h3>
 	<ul class="snsArea">
		<span class="join_info"><a href="./joinForm.do"><strong>아직 회원이 아니신가요? </strong><br/>멤버쉽 로그인 이후 다양한 혜택 정보 확인이 가능합니다.</a></span>
		<p class="join"><a href="./joinForm.do">회원가입</a></p>
	</ul>
	<div class="login"> 
		<fieldset>
			<a onclick="checkLogin()" class="login">LOGIN</a>
			<label class="id ePlaceholder" title="Username">
				<input type="text" name="member_id" id="member_id" class="inputTypeText" />
				<div id="msg"></div>
			</label>
			<label class="password ePlaceholder" title="Password">
				<input type="password" id="member_passwd" name="member_passwd" />
				<div id="msg"></div>
			</label>
			<ul>
				<li><a href="/member/id/find_id.html"><i class="far fa-user-circle"></i> Find ID</a></li>
				<li><a href="/member/passwd/find_passwd_info.html"><i class="fas fa-lock"></i> Find PW</a></li>
				<p class="security"><img src="//img.echosting.cafe24.com/design/skin/default/member/ico_access.gif" alt="보안접속" /> 보안접속</p>
			</ul>
		</fieldset>
	</div>
</div>
</form>
</div>  
<div class="orderhistorynologin"></div>
















