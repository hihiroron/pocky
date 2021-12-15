<%@ page contentType="text/html; characterset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/common/jsp_header.jsp"%>




<!doctype html>
<html lang="ja">
<head>
<title>Doubbitへようこそ。</title>
</head>
<body>


	<div align="center" class="body">
		<div class="introduce" style="margin-top: 50px">
			<h1>Doubbitへようこそ。</h1>
			<form:form modelAttribute="product">
				<div class="list-table">
					<table border="1">

						<tr>
							<th><img width="600"
								src="/toppo/resources/images/S__55762983.jpg"></th>
							<th>
								<div class="loginIntroduce">
									<p class="loginIntr">
										<a href="/toppo/Login">ログイン</a>
									</p>
									<p class="loginIntr">
										<a href="/toppo/Entry/add">新規登録</a>
									</p>
								</div>
							</th>
						</tr>
					</table>
				</div>
			</form:form>
		</div>
	</div>
</body>
</html>