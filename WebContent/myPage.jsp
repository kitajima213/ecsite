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
	<title>MyPage画面</title>
	<link rel="stylesheet" type="text/css" href="/ecsite/CSS/style.css">
	<style type="text/css">
	/* ========TAG LAYOUT======== */


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
			<b>MyPage</b>
		</div>
		<div>
		<s:if test="myPageList == null">
			<h3>ご購入情報はありません。</h3>
		</s:if>
		<s:elseif test="message == null">
			<h3>ご購入情報は以下になります。</h3>
			<table border="1">
			<tr>
				<th>商品名</th>
				<th>値段</th>
				<th>購入個数</th>
				<th>支払い方法</th>
				<th>購入日</th>
			</tr>
			<s:iterator value="myPageList">   <!--  iteratorでくくったところを反復処理 -->

				<tr>
					<td><s:property value="itemName" /></td>
					<td><s:property value="total_price" /><span>円</span></td>
					<td><s:property value="total_count" /><span>個</span></td>
					<td><s:property value="pay" /></td>
					<td><s:property value="insert_date" /></td>
				</tr>
			</s:iterator>
			</table>
			<br>
			<s:form action="MyPageAction">
				<input type="hidden" name="deleteFlg" value="1">
				<s:submit value="削除" method="delete" />
			</s:form>
		</s:elseif>
		<s:if test="message != null">
			<h3><s:property value="message"/></h3>
		</s:if>




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