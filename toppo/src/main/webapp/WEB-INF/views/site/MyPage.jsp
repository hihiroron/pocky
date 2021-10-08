<%@ page contentType="text/html; characterset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/common/jsp_header.jsp"%>




<!doctype html>
<html lang="ja">
<head>
<title>マイページ</title>
</head>
<body>

	<%@ include file="/WEB-INF/views/common/cart_header.jsp"%>

	<div align="center" class="body">
		<h2>マイページ</h2>
		<form:form modelAttribute="product">
			<div class="list-table">
				<sec:authorize var="a" access="isAuthenticated()" />
				<p>
					<sec:authentication property="principal.name" />
				</p>
				<table border="1">
					<tr class="header">
						<th align="center" width="200">情報を</th>
						<th align="center" width="200">編集</th>
						<th align="center" width="200">してみよう。</th>
					</tr>
				</table>
			</div>
		</form:form>
	</div>
</body>
</html>