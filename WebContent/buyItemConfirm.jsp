
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
	<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
	<title>BuyItemConfirm画面</title>
	<link rel="stylesheet" type="text/css" href="/ecsite/CSS/style.css">
	<style type="text/css">

		table {
			width:500px;
			text-align:left;
			margin:0 auto;
			font-size:20px;
		}

		.right {
			text-align:right;
		}


	</style>
	<script type="text/javascript">
		function submitAction(url) {
			$('form').attr('action', url);
			$('form').submit();
		}
	</script>
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
			<b>確認画面</b>
		</div>

			<table>
			<s:form>
				<tr>
					<td>商品名</td>
					<td>
					<div class="right">
					<s:property value="session.itemName" />
					</div>
					</td>
				</tr>
				<tr>
					<td>値段</td>
					<td>
					<div class="right">
					<s:property value="session.itemPrice" />
					</div>
					</td>
				</tr>
				<tr>
					<td>購入個数</td>
					<td>
					<div class="right">
					<s:property value="session.count" /><span>個</span>
					</div>
					</td>
				</tr>
				<tr>
					<td>合計</td>
					<td>
					<div class="right">
					<s:property value="session.total_price" /><span>円</span>
					</div>
					</td>
				</tr>
				<tr>
					<td>支払い方法</td>
					<td>
						<div class="right">
						<s:property value="session.pay"/>
						</div>
					</td>
				</tr>

				<tr>

					<td><input type="button" value="戻る" onclick="submitAction('HomeAction')" /></td>
					<td>
					<div class="right">
					<input type="button" value="購入" onclick="submitAction('BuyItemComplateAction')" />
					</div>
					</td>
				</tr>
			</s:form>
			</table>
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
	<h3>Copyright 2017 ProgrammerCollege all rights reserved.</h3>
	</footer>

</body>
</html>