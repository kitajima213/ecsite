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
	<title>ContactConfirm</title>
	<link rel="stylesheet" type="text/css" href="/ecsite/CSS/style.css">
	<style type="text/css">


		table {
			text-align:center;
			margin:0 auto;
		}



		#box {
			border: 1px solid #000000;
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
			<b>お問い合わせ内容確認画面</b>
		</div>
		<div>
			<h3>送信する内容は以下でよろしいですか。</h3>
			<table>
				<s:form action="ContactTransmissionComplateAction">
					<tr id="box">
						<td>
							<label>お名前:</label>
						</td>
						<td>
							<s:property value="user_name" escape="false" />
						</td>
					</tr>
					<tr id="box">
						<td>
							<label>メールアドレス:</label>
						</td>
						<td>
							<s:property value="user_email" escape="false" />
						</td>
					</tr>
					<tr id="box">
						<td>
							<label>メッセージタイトル:</label>
						</td>
						<td>
							<s:property value="message_title" escape="false" />
						</td>
					</tr>
					<tr id="box">
						<td>
							<label>メッセージ本文:</label>
						</td>
						<td>
							<s:property value="message_main" escape="false" />
						</td>
					</tr>
					<tr>
						<td>
							<s:submit value="送信" />
						</td>
					</tr>
				</s:form>
			</table>
		</div>
		<br>
		<div id="text-link">
			<p>一つ前へ戻る場合は<a href='<s:url action="ContactAction" />'>こちら</a></p>
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