<%@ page contentType="text/html; characterset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/common/jsp_header.jsp"%>




<!doctype html>
<html lang="ja">
<head>
<title>〜へようこそ。</title>
</head>
<body>

<%@ include file="/WEB-INF/views/common/jsp_header.jsp"%>

	<div align="center" class="body">
		<h2>〜へようこそ。</h2>
		<form:form modelAttribute="product">
		<div class="list-table">
		<table border="1">
			<tr class="header">
				<th align="center" width="80">新しい</th>
				<th align="center" width="320">体験</th>
				<th align="center" width="100">始めよう</th>
			</tr>
		</table>
		</div>
		</form:form>
	</div>
</body>
</html>