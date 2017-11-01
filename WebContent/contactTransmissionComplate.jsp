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
	<title>ContactComplate</title>
	<link rel="stylesheet" type="text/css" href="/ecsite/CSS/style.css">
	<style type="text/css">


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
			<b>送信しました</b>
		</div>
		<div id="text-link">
			<p>お問い合わせ一覧は<a href='<s:url action="ContactListAction"/>'>こちら</a></p>
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