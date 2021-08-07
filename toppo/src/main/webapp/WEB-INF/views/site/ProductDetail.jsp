<%@ page contentType="text/html; characterset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/common/jsp_header.jsp"%>


<!doctype html>
<html lang="ja">
<head>
<title>商品詳細画面</title>
</head>
<body>
	<%@ include file="/WEB-INF/views/common/cart_header.jsp"%>
	<div align="center" class="body">
		<h2>商品詳細画面</h2>
		<form:form id="itemSet" modelAttribute="product">

			<spring:bind path="product.*">
				<c:if test="${status.errors.hasErrors()}">
					<div class="ErrorMessage">
						<p>
							<font color="red"><form:errors path="*" /></font>
						</p>
					</div>
				</c:if>
			</spring:bind>
			<c:if test="${maxFlag}">
			<font color="red">各商品1000個以上は入れられません</font>
			</c:if>

			<input id="item.itemId" name="item.itemId" value="1" type="hidden"
				value="0" />
			<table>
				<tr>
					<td><img
						src="/ShoppingSite/resources/images/${proDetail.image}"></td>
					<td align="center">
						<table>
							<tr height="50">
								<td width="80">商品名</td>
								<td width="160">${proDetail.productName}<button
										type="button" id="Button" class="btn btn-lg btn-danger"
										data-toggle="modal" data-target="#modal1">Click</button>
								</td>
							</tr>
							<tr height="50">
								<td width="80">価格</td>
								<td width="160">${proDetail.price}円</td>
							</tr>
							<tr height="50">
								<td width="80">コメント</td>
								<td width="160">${proDetail.detail}</td>
							</tr>
							<tr>
								<td colspan="2" align="center" width="230">
									<table>
										<tr>
											<td><input id="quantity" type="text" name="num" value=""
												size="3" maxlength="3" />個
												<button type="submit" name="cart">カートにいれる</button></td>
										</tr>
									</table>
								</td>
							</tr>
							<tr>
								<td colspan="2" align="center" width="240"><a
									href="ProductList" class="nv_menu">一覧に戻る</a></td>
							</tr>
						</table>
					</td>
				</tr>
			</table>
			<input id="itemName" type="hidden" value="${proDetail.productName}">
			<input id="description" type="hidden" value="${proDetail.detail}">
		</form:form>
	</div>

	<div class="modal fade" id="modal1" tabindex="-1" role="dialog"
		aria-labelledby="label1" aria-hidden="true">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="label1">商品詳細</h5>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
					<h4>${proDetail.productName}</h4>
					<div>
						<input class="form-control" type="text" disabled
							value="${proDetail.detail}">
					</div>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-secondary"
						data-dismiss="modal">Close</button>
				</div>
			</div>
		</div>
	</div>
</body>
</html>