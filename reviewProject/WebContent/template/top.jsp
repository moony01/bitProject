<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<h3><img src="../image/peach.jpg" onclick="location.href='/reviewProject/main/index.do'" width="50" height="50">MVC를 이용한 복습프로젝트</h3>

<font size="2">
<c:if test="${memId!=null }">
	<a href="/reviewProject/board/boardWriteForm.do">글쓰기</a>&emsp;
	
	<c:if test="${memId eq 'admin' }">
		<a href="/reviewProject/imageboard/imageboardWriteForm.do">이미지등록</a>&emsp;
	</c:if>
	
	<a href="/reviewProject/imageboard/imageboardList.do?pg=1">이미지목록</a>&emsp;
</c:if>
<a href="/reviewProject/board/boardList.do?pg=1">목록</a>&emsp;
</font>

