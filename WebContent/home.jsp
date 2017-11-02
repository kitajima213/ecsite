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
	<title>Home画面</title>
	<link rel="stylesheet" type="text/css" href="/ecsite/CSS/style.css">
	<style type="text/css">



		table {
			text-align:center;
			margin:0 auto;
		}

		.home {
			margin-left:170px;
			box-sizing: border-box;
		}




		.menu1 {
			background:#EFF8F9;
			float:left;
			border:1px; solid black;
			width:200px;
			height:200px;
			margin:40px;
			box-shadow:0px 0px 8px lightgray;
			cursor: pointer;
			border-radius:20px;
		}

		.menu2 {
			background:#EFF8F9;
			float:left;
			border:1px; solid black;
			width:200px;
			height:200px;
			margin:40px;
			box-shadow:0px 0px 8px lightgray;
			cursor: pointer;
			border-radius:20px;
		}

		.menu3 {
			background:#EFF8F9;
			float:left;
			border:1px; solid black;
			width:200px;
			height:200px;
			margin:40px;
			box-shadow:0px 0px 8px lightgray;
			cursor: pointer;
			border-radius:20px;
		}

		.menu4 {
			background:#EFF8F9;
			float:left;
			border:1px; solid black;
			width:200px;
			height:200px;
			margin:40px;
			box-shadow:0px 0px 8px lightgray;
			cursor: pointer;
			border-radius:20px;
		}

		.menu5 {
			background:#EFF8F9;
			float:left;
			border:1px; solid black;
			width:200px;
			height:200px;
			margin:40px;
			box-shadow:0px 0px 8px lightgray;
			cursor: pointer;
			border-radius:20px;
		}

		.menu6 {
			background:#EFF8F9;
			float:left;
			border:1px; solid black;
			width:200px;
			height:200px;
			margin:40px;
			box-shadow:0px 0px 8px lightgray;
			cursor: pointer;
			border-radius:20px;
		}

		.menu1 h3 {
			text-align:center;
			margin:0 auto;
			font-size:22px;
			color:gray;
		}

		.menu2 h3 {
			text-align:center;
			margin:0 auto;
			font-size:22px;
			color:gray;
		}

		.menu3 h3 {
			text-align:center;
			margin:0 auto;
			font-size:22px;
			color:gray;
		}

		.menu4 h3 {
			text-align:center;
			margin:0 auto;
			font-size:22px;
			color:gray;
		}

		.menu5 h3 {
			text-align:center;
			margin:0 auto;
			font-size:22px;
			color:gray;
		}

		.menu6 h3 {
			text-align:center;
			margin:0 auto;
			font-size:22px;
			color:gray;
		}

		.menu1:hover {
			box-shadow:0px 0px 25px lightgray;
			background:white;
		}
		.menu2:hover {
			box-shadow:0px 0px 25px lightgray;
			background:white;
		}
		.menu3:hover {
			box-shadow:0px 0px 25px lightgray;
			background:white;
		}

		.menu4:hover {
			box-shadow:0px 0px 25px lightgray;
			background:white;
		}

		.menu5:hover {
			box-shadow:0px 0px 25px lightgray;
			background:white;
		}

		.menu6:hover {
			box-shadow:0px 0px 25px lightgray;
			background:white;
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
			<b>Home</b>
		</div>
		<div class="home">

			<form action="HomeAction">

				<button class="menu1" type="submit"><h3>商品購入画面</h3></button>

			</form>
			<form action="PutItemAction">

				<button class="menu2" type="submit"><h3>商品追加画面</h3></button>

			</form>

			<form action="MyPageAction">

				<button class="menu3" type="submit"><h3>マイページ</h3></button>

			</form>

			<form action="ContactAction">

				<button class="menu4" type="submit"><h3>問い合わせ画面</h3></button>

			</form>

			<form action="ContactListAction">

				<button class="menu5" type="submit"><h3>問い合わせ一覧</h3></button>

			</form>

			<s:if test="#session.id != null">
				<form action="LogoutAction">

					<button class="menu6" type="submit"><h3>ログアウト</h3></button>

				</form>
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
	<h3>Copyright 2017 ProgrammerCollege all rights reserved.</h3>
	</footer>

</body>
</html>