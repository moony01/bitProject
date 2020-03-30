<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<div id="layout_contents">
	<div class="board_wrap">
		<form name="boardWriteForm" method="post" action="/shoppingMall/community/noticeWrite.do">
		<!-- 
		p태그에있는 데이터를 자바스크립트를 통해서 아래 textarea로 데이터를 보낸후 form태그와 함께 java로 전송한다
		 -->
		<table border="1" cellspacing="0" cellpadding="5">
			<tr>
				<th>제목</th>
				<td><input type="text" name="subject" id="subject" size="50"></td>
			</tr>
			<tr>
				<th>내용</th>
				<td><div id="summernote"></div></td>
			</tr>
			<tr>
				<td colspan="2" align="center">
					<input type="button" value="글쓰기" onclick="checkBoard()">
					<input type="reset" value="다시작성">
				</td>
			</tr>
		</table>
		
		</form>
	</div>
</div>
<script src="http://netdna.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.js"></script> 
<script src="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.8/summernote.js"></script>
<script src="../js/notice.js" type="text/javascript"></script>
</body>

</html>