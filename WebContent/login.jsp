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

	<script type="text/javascript">
	<!--
	function ctext(obj){
	if(obj.value==obj.defaultValue){
	obj.value="";
	obj.style.color="#000";
	}
	}

	function stext(obj){
	if(obj.value==""){
	obj.value=obj.defaultValue;
	obj.style.color="gray";
	}
	}
	//-->
</script>

	<title>Login画面</title>
	<link rel="stylesheet" type="text/css" href="/ecsite/CSS/style.css">
	<style type="text/css">



body{
	font-size:12px;
}

input, button, label {
  font-family: 'Helvetica Neue', Helvetica, Arial, sans-serif;
  font-size: 15px;
  font-weight: 200;
  -webkit-box-sizing: border-box;
  -moz-box-sizing: border-box;
  box-sizing: border-box;



}


input[type=text], input[type=password] {
  padding: 0 10px;
  width: 300px;
  height: 40px;
  background: rgba(0, 0, 0, 0.16);
  border: 0;
  border-radius: 5px;
  box-shadow: inset 0 1px 4px rgba(0, 0, 0, 0.3), 0 1px rgba(255, 255, 255, 0.06);



}


label {
  width: 100px;
  line-height: 40px;
  padding-right: 10px;
  letter-spacing: 1px;


}

#loginUserId {
margin-left:29px;
}


.login-submit {

  width: 40px;
  height: 40px;
  padding: 5px;
  border-radius: 32px;
  -webkit-box-shadow: 0 0 4px rgba(0, 0, 0, 0.35);
  box-shadow: 0 0 4px rgba(0, 0, 0, 0.35);
  margin-left: auto;
  margin-right: auto;
}


.login-button {


  width: 40px;
  height: 40px;
  padding: 0 0 40px;
  text-indent: 120%;
  white-space: nowrap;
  overflow: hidden;
  background: lightblue;
  border: 0;
  border-radius: 24px;
  cursor: pointer;


}




#text-link {
  font-size:14px;
  display: inline-block;
  text-align: right;
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
			<b>Login</b>
		</div>
		<div>
			<h3>商品を購入する際にはログインをお願いします。</h3>
			<s:form action="LoginAction">
				<p><label for="login">Name:</label>
				<input type="text" name="loginUserId" id="loginUserId" value="例：田中太郎"
				onfocus="ctext(this)" onblur="stext(this)" style="color:gray"></p>
				<p><label for="password">Password:</label>
				<input type="password" name="loginPassword" id="loginPassword"
				onfocus="ctext(this)" onblur="stext(this)" style="color:gray"></p><br>
				<div class="login-submit"><button type="submit" class="login-button">Login</button></div>
			</s:form>
			<br/>
			<div id="text-link">
				<p>新規ユーザー登録は<a href='<s:url action="UserCreateAction" />'>こちら</a></p>
			</div>
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
					<li><p><a href='<s:url action="TestAction" />'>testページ</a></p></li>
				</ul>
		</div>
	</div>

	<footer>
	<h3>Copyright 2017 ProgrammerCollege all rights reserved.</h3>
	</footer>


</body>
</html>