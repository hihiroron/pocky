<%@ page contentType="text/html; characterset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/common/jsp_header.jsp"%>




<!doctype html>
<html lang="ja">
<head>
<title>商品一覧画面</title>
</head>
<body>
	<%@ include file="/WEB-INF/views/common/cart_header.jsp"%>
	<div align="center" class="body">
		<h2>商品一覧画面</h2>
		<form:form modelAttribute="product">
		<div class="list-table">
		<table border="1">
			<tr class="header">
				<th align="center" width="80">商品ID</th>
				<th align="center" width="320">商品名</th>
				<th align="center" width="100">価格</th>
			</tr>
		</table>
		</div>
		</form:form>
	</div>
</body>
</html>