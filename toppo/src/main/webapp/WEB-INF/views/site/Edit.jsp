<%@ page contentType="text/html; characterset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/common/jsp_header.jsp"%>

<title>アカウント情報を変更</title>
</head>

<body>
	<%@ include file="/WEB-INF/views/common/cart_header.jsp"%>
	<div align="center" class="body">
		<h2>アカウント情報を変更</h2>
		<div class="cart">
			<table style="font-size: 10pt;">
				<tbody>
					<tr>
						<td colspan="2">カートには次の商品が入っています。</td>
					</tr>
					<%-- 					<c:forEach items="${productList}" var="item"> --%>

					<!-- 商品名 -->
					
					<c:forEach var="pro" items="${pro}">
						<tr>
							<td><c:out value="${pro.productName}" /></td>

							<!-- 個数 -->
							<td><c:out value="${pro.num}" /></td>
						</tr>
					</c:forEach>

					<%-- 					</c:forEach> --%>
				</tbody>
			</table>
		</div>

		<c:if test="${flag}">
			<br>
			<c:out value="${product.productName}" />を<c:out
				value="${product.num}" />個、カートに追加しました。<br>
		</c:if>

		<c:if test="${cartFlag}">
			<br>カートを空にしました。<br>
		</c:if>

		<br> <a href="/ShoppingSite/ProductList" class="nv_menu">一覧に戻る</a><br>
		<a href="/ShoppingSite/Pay" class="nv_menu">精算画面へ進む</a>
	</div>
	<br>
	<br>
</body>
</html>