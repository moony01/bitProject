<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div id="layout_contents">
<div class="xans-member-login xans-member-login_status">
<h3>members login</h3>
<c:if test='${loginResult != null}'>
	<div id="status_fail">
		로그인실패
	</div>
</c:if>
	
<c:if test='${loginResult == null }'>
	<div id="status_success">
		<a href="../main/index.do">
			로그인에 성공하였습니다.<br/>
			<strong>메인페이지로 돌아가시겠습니까?</strong>
		</a>
	</div>
</c:if>
</div>
</div>

<script src="../js/member.js" type="text/javascript"></script>
<script type="text/javascript">
window.onload = function(){
	//location.href='./login.do';
}
</script>