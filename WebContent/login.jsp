<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8" />
<title>欢迎登录JDog</title>
<link rel="stylesheet"
	href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://cdn.bootcss.com/jquery/2.1.1/jquery.min.js"></script>
<script
	src="https://cdn.bootcss.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script type="text/javascript" src="js/login.js"></script>
</head>

<body>
	<div class="container">
		<div class="row clearfix">
			<div class="col-md-6 column"></div>
			<div class="col-md-6 column" style="padding-top: 80px;">

				<form class="form-horizontal" role="form">
					<div class="form-group">
						<h1>欢迎登录JDog</h1>
					</div>
					<div class="form-group">
						<h3>JDog,每天都有新发现</h3>
					</div>
					<div id="div_name" class="form-group input-group-lg"
						style="padding-top: 40px;">

						<input id="name" type="text" class="form-control"
							placeholder="用户名" /> <span id="name_tip"
							class="glyphicon glyphicon-remove"
							style="color: #BD4147; display: none; padding-top: 10px;">用户名不能为空</span>

					</div>
					<div id="div_pwd" class="form-group input-group-lg"
						style="padding-top: 20px;">
						<input id="pwd" type="password" class="form-control"
							placeholder="密码" /> <span id="pwd_tip"
							class="glyphicon glyphicon-remove"
							style="color: #BD4147; display: none; padding-top: 10px;">密码不能为空</span>
					</div>
					<div id="myAlert" class="form-group alert alert-warning"
						style="display: none; color: #BD4147;">
						<a href="#" class="close" data-dismiss="alert">&times;</a> <strong>用户名或密码不正确</strong>
					</div>
					<div class="form-group" style="padding-top: 20px;">
						没有账号？ <a href="#">点此注册</a>
					</div>
					<div class="form-group" style="padding-top: 20px;">
						<button id="login" type="button"
							class="btn btn-primary btn-lg btn-block">点击登录</button>
					</div>

				</form>
			</div>
		</div>

	</div>

</body>
</html>