<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div id="layout_contents">
	<div class="board_wrap">
		<div class="xans-board-title">
			<div class="path">
				<span>현재 위치</span>
				<ol>
					<li><a href="/">홈</a></li>
					<li><a href="/board/index.html">게시판</a></li>
					<li title="현재 위치"><strong>Reviews</strong></li>
				</ol>
			</div>
			<div class="titleArea">
				<h2>
					<font color="#555555">Notice</font>
				</h2>
				<p>공지사항입니다.</p>
			</div>
			<p class="imgArea"></p>
		</div>
	
		<table border="1" frame="hsides" rules="rows" cellspacing="0" cellpadding="5">
			<colgroup class="xans-board-listheader">
				<col style="width:10%;">
				<col style="width:50%;">
				<col style="width:10%;">
				<col style="width:10%;">
				<col style="width:10%;">
				<col style="width:10%;">
			</colgroup>
			<tr>
				<th>번호</th>
				<th>제목</th>
				<th>작성자</th>
				<th>작성일</th>
				<th>조회</th>
			</tr>
			<tr>
				<td align="center"></td>
				<td align="left"></td>
				<td align="center"></td>
				<td align="center"></td>
				<td align="center"></td>
			</tr>
		</table>
		
		<div style="width:700px; text-align: center;">
			
		</div>
		
		<form name="" method="post" action="/miniproject/board/boardSearch.do">
			<div style="text-align: center;">
			<input type="hidden" name="pg" value="1">
			<select name="searchOption" id="searchOption" style="width: 80px;">
				<option value="subject">제목
				<option value="id">아이디
			</select>
			<input type="text" name="keyword" value="" placeholder="검색어 입력">
			<input type="submit" value="검색">
			</div>
		</form>
		
		<c:if test="${memId eq 'admin' }">
			<div><a href="/shoppingMall/community/noticeWriteForm.do">글쓰기</a></div>
		</c:if>
	</div>
</div>




