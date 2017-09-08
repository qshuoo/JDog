<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
<title>登录</title>
<link rel="stylesheet" href="css/style.css">
<script type="text/jscript" src="js/jquery-3.2.1.min.js"></script>
<script type="text/javascript" src="js/login.js"></script>

</head>

<body>

	<div class="container">


		<div class="login">

			<h1>登录</h1>

			<form method="post">
				<p>
					<input type="text" id="uname" name="username" value=""
						placeholder="Username">
				</p>
				<p>
					<input type="password" id="pwd" name="password" value=""
						placeholder="Password">
				</p>
				<p class="remember_me">
					<label> <input type="checkbox" name="remember_me"
						id="remember_me"> 记住我
					</label>
				</p>
				<p class="button">
					<input id="login" type="button" name="button" value="登录">
				</p>
			</form>
			<p>
				没有账号? <a href="index.html">点此注册</a>.
			</p>
		</div>
		<div class="errinf">
			<span class="errinf_cor"></span> <span class="errinf_tip">用户名或密码不正确，请重新输入</span>
			<span class="errinf_close">×</span>
		</div>
		<div class="nameinf">
			<span class="nameinf_cor"></span> <span class="nameinf_tip">用户名不能为空</span>
			<span class="nameinf_close">×</span>
		</div>
		<div class="pwdinf">
			<span class="pwdinf_cor"></span> <span class="pwdinf_tip">密码不能为空</span>
			<span class="pwdinf_close">×</span>
		</div>
	</div>

</body>
</html>