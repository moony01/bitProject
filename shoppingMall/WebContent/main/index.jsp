<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
<!DOCTYPE html>
<html>
<head>
<jsp:include page="../template/headSet.jsp"/>
<title>기업형 업체홍보전문 TEN 05</title>
</head>

<body>
<div id="top"></div>
<!-- HEADER : START -->
<jsp:include page="../template/header.jsp"/>
<!-- HEADER : END -->

<!-- CONTENT : START -->
<div id="contents">
<jsp:include page="../template/visual.jsp"/>
<jsp:include page="../template/cntBox.jsp"/>
</div>
<!-- CONTENT : END -->

<!-- FOOTER : START -->
<jsp:include page="../template/bannerFooter.jsp"/>
<jsp:include page="../template/footer.jsp"/>
<!-- FOOTER : END -->

<jsp:include page="../template/topBtn.jsp"/>

<!--  BX SLIDE : JS -->  
<script src="../js/jquery.min.js"></script>
<script src="../js/jquery.bxslider.js"></script>
<script type="text/javascript">
$(document).ready(function(){
	$('.bxslider').bxSlider({
	    mode: 'fade',  
	    auto: true,
	    // autoControls: true, // 활성화시 오토 스탑,플레이 버튼 숨기기
		// pagerCustom: '#bx-pager', // 활성화시 콘트롤버튼 숨기기
		// captions: true, // 활성화시 택스트글자 보이기
		// nextSelector: '#slider-next', // 활성화시 우버튼 숨기기
	    // prevSelector: '#slider-prev', // 활성화시 좌버튼 숨기기
	    pause: 5000 
    });
	
	$('.bxslider_main').bxSlider({
	    auto: true,
	    minSlides: 1,
	    maxSlides: 6,
	    slideWidth:500,
		pagerCustom: '#bx-pager',
		moveSlides: 1,
	    slideMargin:5
	});
});
</script>
</body>
</html>
	