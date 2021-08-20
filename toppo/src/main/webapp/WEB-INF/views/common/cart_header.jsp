<%@ page contentType="text/html; characterset=UTF-8"
	pageEncoding="UTF-8"%>



<div class="sigt-content">
	<sec:authorize var="a" access="isAuthenticated()" />
	<c:choose>
		<c:when test="${a}">

			<p class="login">
				<a href="/ShoppingSite/Logout">ログアウト</a>
			</p>
			<div class="aaa">
				ようこそ
				<sec:authentication property="principal.name" />
				さん
			</div>
		</c:when>
	<c:otherwise>
		<p class="login">
			<a href="/ShoppingSite/Login">ログイン</a>
		</p>
		<p class="login">
			<a href="/ShoppingSite/Entry/add">新規ユーザ登録</a>
		</p>
	</c:otherwise>
	</c:choose>
	<div class="clear-element"></div>
	<div class="menu">
		<ul class="nav">
			<li><a href="/ShoppingSite/ProductList">商品リスト</a></li>
			<li><a href="/ShoppingSite/Pay">精算画面</a></li>
			<li><a href="/ShoppingSite/ProductCart">カートを確認</a></li>
			<li><a href="/ShoppingSite/reset">カートのクリア</a></li>
		</ul>
	</div>
</div>