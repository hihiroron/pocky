<%@ page contentType="text/html; characterset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/common/jsp_header.jsp"%>


<!doctype html>
<html lang="ja">
<head>
<title>ログイン画面</title>
</head>


<body>
	<%@ include file="/WEB-INF/views/common/cart_header.jsp"%>
	<div align="center" class="body">
		<h2>ログイン完了画面</h2>
		<sec:authorize access="isAuthenticated()">
				ようこそ、<sec:authentication property="principal.name" />
		</sec:authorize>
		<%-- username --%>
		さん！<br> <br> <a href="/ShoppingSite/ProductList"
			class="nv_menu">一覧に戻る</a><br> <a href="/ShoppingSite/Pay"
			class="nv_menu">精算画面へ進む</a>
	</div>
</body>
</html>