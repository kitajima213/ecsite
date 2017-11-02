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
	<title>BuyItem画面</title>
	<link rel="stylesheet" type="text/css" href="/ecsite/CSS/style.css">
	<style type="text/css">


		table {

			width:82%;
			table-layout: fixed;
			margin:0 auto;
			font-size:18px;
			color: gray;
    		background: #EFF8F9;

		}


		.buybutton {
			font-size:15px;
			padding: 10px 12px;
			margin-bottom:15px;
			background-color:white;
			width:140px;
			border:1px solid #ECEDD0;
			cursor: pointer;
		}

		.item-name {
			background: lightblue;
			height:38px;
			text-align:left;
			margin-left:20px;
		}
		.item-img {
			text-align:left;

		}

		.item-type {
			text-align:left;

		}

		.item-detail {
			padding-top:50px;
			float:right;
			width:76%;
			margin-right:30px;


		}

		.image {
			text-align:left;
			width:120px;
			height:160px;
		}

		.right {
			text-align:right;
		}

	</style>
</head>
<body>
	<div class="header1">

	</div>
	<div class="header2">
		<h1 class="title">GAMESTORE</h1>
		<form class="search"action="ItemSearchAction">
			<input type="text" name="searchName" maxlength="30" size="17" placeholder="検索">
			<input type="submit" value="検索">
		</form>
	</div>
	<div id="main">
		<div id="top">
			<b>商品選択画面</b>
		</div>



				<table>
				<s:iterator value="buyItemDTOList">
				<s:form action="BuyItemAction">
				<tr>
				<td class="item-name">
				<s:property value="itemName" />
				</td>
				</tr>
				<tr>
				<td class="item-img">
				<img class="image" src='<s:property value="img" />'>
				<div class="item-detail">
				<s:property value="itemDetail" />
				</div>
				</td>
				</tr>
				<tr>
				<td class="item-type">

				<s:property value="itemType" />
				</td>


				</tr>

				<tr><td class="right">
						<s:property value="itemPrice" /><span>円</span>
						<input type="hidden" value="<s:property value='itemName'/>" name="itemName">
						<input type="hidden" value="<s:property value='itemPrice'/>" name="itemPrice">
						<button class="buybutton" type="submit">購入する</button>
					</td>
				</tr>


				</s:form>
				</s:iterator>

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
				<li><form action="ItemSearchAction">
					<input type="text" name="name" maxlength="30" size="17" placeholder="検索">
					<input type="submit" value="検索"></form>
				</li>
			</ul>
		<h3>商品カテゴリー</h3>
		<ul>
			<li><a href='<s:url action="ItemCategoryAction"><s:param name="itemCategory" value="1"/></s:url>'><button class="button" type="submit">PS4</button></a></li>
			<li><a href='<s:url action="ItemCategoryAction"><s:param name="itemCategory" value="2"/></s:url>'><button class="button" type="submit">PSVITA</button></a></li>
			<li><a href='<s:url action="ItemCategoryAction"><s:param name="itemCategory" value="3"/></s:url>'><button class="button" type="submit">Switch</button></a></li>
			<li><a href='<s:url action="ItemCategoryAction"><s:param name="itemCategory" value="4"/></s:url>'><button class="button" type="submit">Wiiu</button></a></li>
			<li><a href='<s:url action="ItemCategoryAction"><s:param name="itemCategory" value="5"/></s:url>'><button class="button" type="submit">3ds</button></a></li>
		</ul>

		<h3></h3>

		</div>
	</div>



	<footer>
	<h3>Copyright 2017 ProgrammerCollege all rights reserved.</h3>
	</footer>

</body>
</html>