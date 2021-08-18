<%@ page contentType="text/html; characterset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/common/jsp_header.jsp"%>

<!doctype html>
<html lang="ja">
<head>
<title>ユーザー登録完了画面</title>
</head>
<body>
	<!-- </div> -->
	<div align="center" class="body">

		<h2>ユーザー登録完了画面</h2>
		<div class="InformationMessage">
			<p>登録完了しました。</p>
		</div>
		<!--
		使用するセッションスコープ
	 -->
		<%-- 		<form:form modelAttribute="userform"> --%>
		<form method="post">
			<div class="ContentBox ContentArea RecordStyle">
				<table>
					<tbody>
						<tr>
							<td>ユーザーID</td>
							<td><c:out value="${userform.userId}" />
						</tr>

						<tr>
							<td>パスワード</td>
							<td><c:out value="${secret}" /></td>
						</tr>
						<tr>
							<td>名前</td>
							<td><c:out value="${userform.userName}" /></td>
						</tr>
						<tr>
							<td>住所</td>
							<td><c:out value="${userform.address}" /></td>
						</tr>
						<tr>
							<td>E-MAIL</td>
							<td><c:out value="${userform.mail}" /></td>
						</tr>
						<tr>
							<td>お仕事</td>
							<td><c:out value="${jobMap}" /></td>
						</tr>
						<tr>
							<td>生年月日</td>
							<td><c:out value="${userform.birth}" /></td>
						</tr>
					</tbody>
				</table>
				<p>
					<a href="/ShoppingSite/ProductList" class="nv_menu">一覧に戻る</a> <a
						href="/ShoppingSite/Login">ログインする</a>
				</p>
			</div>
		</form>
		<%-- 		</form:form> --%>
	</div>
</body>
</html>