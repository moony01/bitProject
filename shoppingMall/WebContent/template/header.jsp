<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<div class="headerScroll">
	<div class="inner">
		<h1 class="xans-layout-logotop"><a href="/shoppingMall/main/index.do"><img src="../image/hlogo.png"/></a></h1>
		<nav>
			<div id="spreadMenu2">
				<dl>
					<a href="/shoppingMall/community/notice.do">COMMUNITY</a>
					<ul>
						<li><a href="/shoppingMall/community/notice.do">NOTICE</a></li>
						<li><a>FAQ</a></li>
						<li><a>PRODUCT</a></li>
					</ul>
				</dl>
			</div>
		</nav>
	</div>
		
	<div class="top-header wow fadeInDown animated">
		<div class="shop-icons">
			<ul>
				<li title="즐겨찾기"><a href="/link/bookmark.html" target="_blank" onclick="winPop(this.href); return false;"><i class="fa fa-bookmark"></i></a></li>
			</ul>
		</div>                        
		                        
		<div class="top-header-right-info">
		
			<c:if test="${cookie.loginCookie.value == null }">
				<ul>
					<li class="xans-layout-statelogoff "><a href="/shoppingMall/member/login.do">Login</a></li>
					<li class="xans-layout-statelogoff "><a href="/shoppingMall/member/joinForm.do">Join</a></li>
				</ul>
			</c:if>
			
			<c:if test="${cookie.loginCookie.value != null }">
				<div style="position: relative; top: 20px; color: aliceblue;">로그인상태입니다</div>
			</c:if>
		

		</div>
		
		
		
		
	</div>
</div>


















