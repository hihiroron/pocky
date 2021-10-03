<%@ page contentType="text/html; characterset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/common/jsp_header.jsp"%>




<!doctype html>
<html lang="ja">
<head>
<title>Doubbitへようこそ。</title>
</head>
<body>

	<%@ include file="/WEB-INF/views/common/cart_header.jsp"%>

	<div align="center" class="body">
		<h1>Doubbitへようこそ。</h1>
		<form:form modelAttribute="product">
			<div class="list-table">
				<table border="1">

					<tr>
						<th><img width="600"
							src="/toppo/resources/images/S__55762983.jpg"></th>
						<th>
							<p class="login">
								<a href="/toppo/Login">ログイン</a>
							</p>
							<p class="login">
								<a href="/toppo/Entry/add">新規ユーザ登録</a>
							</p>
						</th>
					</tr>
				</table>
			</div>
		</form:form>
	</div>
</body>
</html>