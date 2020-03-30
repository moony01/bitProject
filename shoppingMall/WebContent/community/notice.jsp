<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<jsp:include page="../template/headSet.jsp"/>
<title>공지사항</title>
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
</html>