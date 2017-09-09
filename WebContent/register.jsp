<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
		<meta charset="UTF-8">
		<title>注册JDog</title>
		<link rel="stylesheet" href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css">
		<link rel="stylesheet" href="css/style.css" />
		<script src="https://cdn.bootcss.com/jquery/2.1.1/jquery.min.js"></script>
		<script src="https://cdn.bootcss.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
		<script type="text/javascript" src="js/register.js"></script>

	</head>

	<body>
		<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
					</div>
					<div class="modal-body">图片</div>
					<div class="modal-footer">
						<h4 align="center" class="modal-title" id="myModalLabel">谢谢你请我吃糖果</h4>
					</div>

				</div>
				<!-- /.modal-content -->
			</div>
			<!-- /.modal -->
		</div>

		<div class="container">
			<div class="row clearfix">
				<div class="col-md-6 column">
				</div>
				<div class="col-md-6 column" style="padding-top: 80px;">
					<form class="form-horizontal" role="form">
						<div class="form-group">
							<h1>欢迎注册JDog</h1>
						</div>
						<div class="form-group">
							<h3> JDog，每天都有新发现。
						<a  data-toggle="modal" data-target="#myModal" style="float: right;" href="">联系我们</a>
					</h3>
						</div>
						<div id="div_name" class="form-group input-group-lg">
							<input type="text" class="form-control" id="name" placeholder="填写用户名" />

							<span id="name_tip" class="glyphicon glyphicon-remove tip">用户名不能为空</span>
						</div>
						<div id="div_pwd" class="form-group input-group-lg">
							<input type="password" class="form-control" id="pwd" placeholder="填写密码" />
							<span id="pwd_tip" class="glyphicon glyphicon-remove tip">密码不能为空</span>
						</div>
						<div id="div_confirm" class="form-group input-group-lg">
							<input type="password" class="form-control" id="confirm" placeholder="确认密码" />
							<span id="confirm_tip" class="glyphicon glyphicon-remove tip">密码不对应</span>
						</div>
						<div id="div_phone" class="form-group input-group-lg">
							<input type="phone" class="form-control" id="phone" placeholder="电话" />
							<span id="phone_tip" class="glyphicon glyphicon-remove tip">电话格式错误</span>
						</div>
						<div class="form-group">
							<button type="button" class="btn btn-primary btn-lg btn-block">立即注册</button>
						</div>
					</form>
				</div>
			</div>
		</div>
	</body>
</html>