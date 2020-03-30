var content = null;

$(document).ready(function() {
	$('#summernote').summernote({
		height: 300
	});
});

function checkBoard() {
	content = $('.note-editable p').text();
	
	if(document.getElementById("subject").value == "") {
		alert("제목을 입력하세요.");
		document.getElementById("subject").focus();
	
	}else if(content == "") {
		alert("내용을 입력하세요.");
	}else{
		document.forms[0].submit();
	}
}