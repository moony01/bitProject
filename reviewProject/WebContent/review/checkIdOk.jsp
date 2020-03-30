<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

${id }는 사용 가능
<br><br>
<input type="button" value="사용하기" onclick="checkIdClose('${id}')">
</body>
<script type="text/javascript" src="../js/review.js">
function checkIdClose(){
	opener.writeForm.id.value = "${requestScope.id}";
	window.close();
	opener.writeForm.pwd.focus();
}
</script>
