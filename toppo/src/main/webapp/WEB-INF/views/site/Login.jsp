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
	<!-- </div> -->
	<div align="center" class="body">
		<h2>ログイン画面</h2>
		<form name="f" action="j_spring_security_check" method="post">

			<c:if test="${SPRING_SECURITY_LAST_EXCEPTION != null}">
				<div class="ErrorMessage">
					<p>ID、またはパスワードが異なります。</p>
				</div>
				<c:remove var="SPRING_SECURITY_LAST_EXCEPTION" scope="session" />
			</c:if>
			<table>
				<tr height="40px">
					<td>ユーザーID</td>
					<td><input type="text" name="USER_ID" class="userId" maxlength="50"/> <font
						color="red"> </font></td>
				</tr>
				<tr height="40px">
					<td>パスワード</td>
					<td><input type="password" name="PASSWORD" class="password" maxlength="50"/>
						<font color="red"> </font></td>
				</tr>
			</table>
			<table>
				<tr>
					<td align="center"><input class="shop-btn" type="submit"
						value="ログイン"></td>
					<td align="center"><input class="shop-btn" type="reset"
						value="リセット"></td>
				</tr>
			</table>
		</form>
	</div>
</body>
</html>
