<%@ page contentType="text/html; characterset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/common/jsp_header.jsp"%>

<!doctype html>
<html lang="ja">
<head>
<title>ユーザー登録確認画面</title>
</head>
<body>
	<%@ include file="/WEB-INF/views/common/cart_header.jsp"%>
	<!-- </div> -->
	<div align="center" class="body">
		<h2>ユーザー登録確認画面</h2>
		<form method="post">
			<div class="ContentBox ContentArea RecordStyle">
				<table>
					<tbody>
						<tr>
							<td class="Item">ユーザーID</td>
							<td class="Disp"><c:out value="${userform.userId}" />
						</tr>

						<tr>
							<td class="Item">パスワード</td>
							<td class="Disp"><c:out value="${secret}" /></td>
						</tr>
						<tr>
							<td class="Item">名前</td>
							<td class="Disp"><c:out value="${userform.userName}" /></td>
						</tr>
						<tr>
							<td class="Item">住所</td>
							<td class="Disp"><c:out value="${userform.address}" /></td>
						</tr>
						<tr>
							<td class="Item">メールアドレス</td>
							<td class="Disp"><c:out value="${userform.mail}" /></td>
						</tr>
						<tr class="EvenNumber">
							<td class="Item">お仕事</td>
							<td class="Disp">
								<!--        後で確認          --> <c:out value="${jobMap}" />
							</td>
						</tr>
						<tr>
							<td class="Item">生年月日</td>
							<td class="Disp"><c:out value="${userform.birth}" /></td>
						</tr>
					</tbody>
				</table>
			</div>

			<table>
				<tr>
					<td height="40px" align="center"><input type="submit"
						name="decide" class="shop-btn" value="確定"></td>
					<td height="40px" align="center"><input type="submit"
						name="return" class="shop-btn" value="戻る"></td>
				</tr>
			</table>

			<a href="/ShoppingSite/ProductList" class="nv_menu">一覧に戻る</a>
			</form>
<%-- 		</form:form> --%>
	</div>
</body>
</html>