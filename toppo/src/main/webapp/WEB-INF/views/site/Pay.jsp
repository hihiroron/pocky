<%@ page contentType="text/html; characterset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/common/jsp_header.jsp"%>


<!doctype html>
<html lang="ja">
<head>
<title>精算画面</title>
</head>
<body>
	<%@ include file="/WEB-INF/views/common/cart_header.jsp"%>

	<!-- </div> -->
	<div align="center" class="body">
		<h2>精算画面</h2>
		<b>送り先</b>
		<table>
			<tr>
				<td>ユーザID:</td>
				<td class=""><c:out value="${user.userId}" /></td>
			</tr>
			<tr>
				<td>お名前:</td>
				<td class=""><c:out value="${user.userName}" /></td>
			</tr>
			<tr>
				<td>郵便番号:</td>
				<td class=""><c:out value="${user.postCode}" /></td>
			</tr>
			<tr>
				<td>ご住所:</td>
				<td class=""><c:out value="${user.address}" /></td>
			</tr>
			<tr>
				<td>E-MAIL:</td>
				<td class=""><c:out value="${user.mail}" /></td>
			</tr>
		</table>
		<br> <br> <b>お買い上げ一覧</b>
		<div class="list-table">
		<table border="1">
			<tr class="header">
				<th width="200">商品名</th>
				<th width="150">価格</th>
				<th width="50">個数</th>
				<th width="150">小計</th>
			</tr>

			<c:forEach var="pro" items="${pro}">
			<tr class="record">
				
				<td align="left"><c:out value="${pro.productName}" /></td>
				
				
				<td align="right"><c:out value="${pro.price}" /></td>
				
				
				<td align="right"><c:out value="${pro.num}" /></td>
				
				
				<td align="right"><c:out value="${pro.total}" /></td>
				
			</tr>
			</c:forEach>
		</table>
		</div>
		<br> <b>合計金額： <c:out value="${total}" /> 円</b> <br> <br>
		<form id="command" action="/ShoppingSite/Pay" method="post">
			<input type="submit" id="submit-btn" name="ok" value="確定">
		</form>
		<br>
		<a href="/ShoppingSite/ProductList" class="nv_menu">商品一覧に戻る</a><br>
	</div>
</body>
</html>