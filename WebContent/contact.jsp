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
	<title>Contact</title>
	<link rel="stylesheet" type="text/css" href="/ecsite/CSS/style.css">
	<style type="text/css">

		.a1{
			text-align:center;
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
			<b>&nbsp; Contact &nbsp; </b><div class="EM"><s:if test="errorMassage != ''">  <!-- エラーメッセが未入力だったらエラーメッセ表示しない -->
				<s:property value="errorMassage" escape="false" />
				</s:if></div>
		</div>

		<s:form action="ContactTransmissionAction">
			<p>お名前<br />
    		<input type="text" name="user_name" value="" size="40" /></p>
			<p>メールアドレス<br />
   			<input type="text" name="user_email" value="" size="40"/></p>
			<p>メッセージタイトル<br />
    		<input type="text" name="message_title" value="" size="40" /></p>
			<p>メッセージ本文<br />
   			<textarea name="message_main" cols="40" rows="10" ></textarea></p>
			<p><input type="checkbox" name="check" value="1" />メッセージの内容はこれでよろしいでしょうか？<br />
			<br>OKでしたらチェックを付けて確認ボタンをクリックしてください</p>
			<p><input type="submit" value="確認" /></p>
		</s:form>

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
					<li>お問い合わせ一覧は<a href='<s:url action="ContactListAction" />'>こちら</a></li>
				</ul>
		</div>
	</div>

	<footer>
	<h3>Copyright 2017 ProgrammerCollege all rights reserved.</h3>
	</footer>

</body>
</html>