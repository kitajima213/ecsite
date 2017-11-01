<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>

<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta http-equiv="Content-Style-Type" content="text/css" />
	<meta http-equiv="Content-Script-Type" content="text/javascript" />
	<meta http-equiv="imagetoolbar" content="no" />
	<meta name="description" content="" />
	<meta name="keywords" content="" />
	<meta charset="utf-8">
	<title>PutItem画面</title>
	<link rel="stylesheet" type="text/css" href="/ecsite/CSS/style.css">
	<style type="text/css">


		table {
			text-align:center;
			margin:0 auto;
		}


	</style>
</head>
<body>
	<div id="header1">
	 	<div id="pr1">
	 	</div>
	 	<div id="pr1">
		</div>
		<div id="pr1">
		</div>
		<div id="pr1">
		</div>
	</div>
	<div id="header2">
		<div id="pr2"></div>
		<div id="pr2"></div>
		<div id="pr2"></div>
		<div id="pr2"></div>
	</div>
	<div id="main">
		<div id="top">
			<b>商品追加画面 &nbsp;</b><div class="EM"><s:if test="errorMassage != ''">  <!-- エラーメッセが未入力だったらエラーメッセ表示しない -->
				<s:property value="errorMassage" escape="false" />
			</s:if></div>
		</div>
		<div>

			<table>
			<s:form action="PutItemConfirmAction">
				<tr>
					<td>
						<label>ゲームハード:</label>
					</td>
					<td>
						<input type="text" name="putItemType" value="" />
					</td>
				</tr>
				<tr>
					<td>
						<label>商品名:</label>
					</td>
					<td>
						<input type="text" name="putItemName" value="" />
					</td>
				</tr>
				<tr>
					<td>
						<label>商品説明:</label>
					</td>
					<td>
						<input type="text" name="putItemDetail" value="" />
					</td>
				</tr>
				<tr>
					<td>
						<label>値段:</label>
					</td>
					<td>
						<input type="number" name="putItemPrice" value="" />
					</td>
				</tr>
				<tr>
					<td>
						<label>在庫:</label>
					</td>
					<td>
						<input type="number" name="putItemStock" value="" />
					</td>
				</tr>
				<s:submit value="確認"/>
			</s:form>
			</table>
		</div>
	</div>

	<div id="sub">
		<div id="sidemenu">
			<h3>Link</h3>
				<ul>
					<li><a href='<s:url action="GoHomeAction" />'><button class="button" type="submit">HOME</button></a></li>
					<li><a href='<s:url action="MyPageAction" />'><button class="button" type="submit">MYPAGE</button></a></li>
					<li><a href='<s:url action="HomeAction" />'><button class="button" type="submit">BUY</button></a></li>
					<li><a href='<s:url action="PutItemAction" />'><button class="button" type="submit">PUT</button></a></li>
					<li><a href='<s:url action="ContactAction" />'><button class="button" type="submit">CONTACT</button></a></li>
				</ul>
			<h3></h3>
				<ul>
					<li></li>
				</ul>
		</div>
	</div>

	<footer>
	</footer>

</body>
</html>