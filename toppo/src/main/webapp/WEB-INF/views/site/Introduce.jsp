<%@ page contentType="text/html; characterset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/common/jsp_header.jsp"%>




<!doctype html>
<html lang="ja">
<head>
<title>Doubitへようこそ。</title>
</head>
<body>

    <%@ include file="/WEB-INF/views/common/cart_header.jsp"%>

	<div align="center" class="body">
		<h2>Doubitへようこそ。</h2>
		<form:form modelAttribute="product">
		<div class="list-table">
		<table border="1">
			<tr class="header">
				<th align="center" width="200">新しい</th>
				<th align="center" width="200">体験を</th>
				<th align="center" width="200">始めよう</th>
			</tr>
		</table>
		</div>
		</form:form>
	</div>
</body>
</html>