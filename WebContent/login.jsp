<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
<title>登录</title>
<link rel="stylesheet" href="css/style.css">
<script type="text/javascript" src="js/jquery-3.2.1.min.js"></script>
<script type="text/javascript">
	$(document).ready(function() {
		$("#login").click(function(){
			$(".org_box").fadeIn();
		});

	});
</script>
</head>
<body>
	<div class="org_box">
		<span class="org_bot_inf">用户名或密码输入错误，请重新输入</span> <span
			class="org_bot_cor"></span>

	</div>
	<div class="container">
		<div class="login">
			<h1>登录</h1>

			<form method="post" action="#" >
				<p>
					<input type="text" name="login" value=""
						placeholder="Username or Email">
				</p>
				<p>
					<input type="password" name="password" value=""
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
	</div>


</body>
</html>