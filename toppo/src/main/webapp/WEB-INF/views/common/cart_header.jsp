<%@ page contentType="text/html; characterset=UTF-8"
	pageEncoding="UTF-8"%>



<div class="sigt-content">
	<p class="headerImg">
		<a href="/toppo/Home"><img width="40" src="/toppo/resources/images/S__55762983.jpg"></a>
	</p>

	<sec:authorize var="a" access="isAuthenticated()" />
	<c:choose>
		<c:when test="${a}">

			<p class="login">
				<a href="/toppo/Logout">ログアウト</a>
			</p>
			<!-- <div class="aaa">
				<sec:authentication property="principal.name" />
			</div> -->
			<p class="login">
				<a href="/toppo/Logout">マイページ</a>
			</p>
		</c:when>
		<c:otherwise>
			<p class="login">
				<a href="/toppo/Login">ログイン</a>
			</p>
			<p class="login">
				<a href="/toppo/Entry/add">新規登録</a>
			</p>
		</c:otherwise>
	</c:choose>

	<div class="clear-element"></div>
	<!-- <div class="menu">
		<ul class="nav">
			<li><a href="/toppo/ProductList">商品リスト</a></li>
			<li><a href="/toppo/Pay">精算画面</a></li>
			<li><a href="/toppo/ProductCart">カートを確認</a></li>
			<li><a href="/toppo/reset">カートのクリア</a></li>
		</ul>
	</div> -->
</div>