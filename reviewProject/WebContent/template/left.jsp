<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<c:if test="${memId==null }">
	<jsp:include page="../review/loginForm.jsp" />
</c:if>
<c:if test="${memId!=null }">
	<jsp:include page="../review/loginOK.jsp" />
</c:if>