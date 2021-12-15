<%@ page contentType="text/html; characterset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/common/jsp_header.jsp"%>

<!doctype html>
<html lang="ja">
<head>
<title>アカウントを作成</title>
</head>
<body>
	<%@ include file="/WEB-INF/views/common/cart_header.jsp"%>
	<div align="center" class="body">
		<!-- セッションスコープの取得 -->
		<%-- 		<form:form modelAttribute="userform" action="/ShoppingSite/userEntry" method="post"> --%>
		<form:form modelAttribute="userform">
			<h1>Entry <img width="40" src="/toppo/resources/images/S__55762983.jpg"></h1>
			<spring:bind path="userform.*">
				<c:if test="${status.errors.hasErrors()}">
					<div class="ErrorMessage">
						<p>
							<font color="red"> 入力情報に誤りが有ります。 </font>
						</p>
					</div>
				</c:if>
			</spring:bind>
			<table>
			
			<tr height="40px">
					<td class="Item">アカウント選択</td>
					<td class="Disp"><label><form:radiobuttons path="frontBackId" items="${frontBackMap}" />
							<font color="red"><span id="userName.errors"><form:errors
										path="frontBackId" /></span> </font> </label></td>
									
					
				</tr>
			
				<tr height="40px">
					<td class="Item">ユーザーID</td>
					<td class="Disp"><label><form:input path="userId" />
							<font color="red"><span id="userName.errors"><form:errors
										path="userId" /></span> </font> </label></td>

				</tr>
				
				
				<tr height="40px">
					<td class="Item">名前</td>
					<td class="Disp"><label><form:input path="userName" />
							<font color="red"><span id="userName.errors"><form:errors
										path="userName" /></span> </font> </label></td>

				</tr>
				

				<tr height="40px">
					<td class="Item">E-MAIL</td>
					<td class="Disp"><label><form:input path="mail" /> <font
							color="red"><span id="eMail.errors"><form:errors
										path="mail" /></span></font> </label></td>
				</tr>

				<tr height="40px">
					<td class="Item">パスワード</td>
					<td class="Disp"><label><form:password path="password"
								name="password" id="password" /> <font color="red"><span
								id="password.errors"><form:errors path="password" /> </span></font> </label></td>
				</tr>

			</table>
			<table>
				<tr>
					<td height="40px" align="center"><input type="submit"
						name="regist" class="shop-btn" value="登録"></td>
					<td height="40px" align="center"><input type="submit"
						name="reset" class="shop-btn" value="リセット"></td>
				</tr>
			</table>
		
		</form:form>

	</div>
</body>
</html>
