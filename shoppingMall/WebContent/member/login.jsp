<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<jsp:include page="../template/headSet.jsp"/>
<title>로그인페이지</title>
</head>

<body>
<div id="top"></div>
<!-- HEADER : START -->
<jsp:include page="../template/header.jsp"/>
<!-- HEADER : END -->

<!-- CONTENT : START -->
<jsp:include page="${display }"/>
<!-- CONTENT : END -->

<!-- FOOTER : START -->
<jsp:include page="../template/bannerFooter.jsp"/>
<jsp:include page="../template/footer.jsp"/>
<!-- FOOTER : END -->

<jsp:include page="../template/topBtn.jsp"/>
</body>
<script src="../js/member.js" type="text/javascript"></script>
<script type="text/javascript">
//이메일 입력방식 선택
$('#email3').change(function(){
	$("#email3 option:selected").each(function(){
		if($(this).val()=='etc'){ //직접입력인경우
			$("#email2").val('');
			$("#email2").attr("disabled", false);
		} else {
			$("#email2").val($(this).text());
			$("#email2").attr("disabled", false);
			$("#email2").attr("readonly", true);
		}
	});
});

//체크박스 전체선택
$("#sAgreeAllChecked").click(function(){
	if($("#sAgreeAllChecked").prop("checked")){
		$("input[name=agree_check]").prop("checked", true);
	} else {
		$("input[name=agree_check]").prop("checked", false);
	}
})


</script>
</html>






































