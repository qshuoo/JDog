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
		<div class="modal fade" id="wait" aria-hidden="true" data-backdrop="static" style="display: none;">
			<div class="modal-dialog" style="wedth: 70%;height: 30%;">
				<div class="modal-content" align="center">
					<div align="center" class="modal-body"><p id="waitlog" style="font-size: 18px;">注册成功,5秒后跳转到登陆界面</p></div>
					<div align="center">
						<a href="login.jsp" class="btn btn-primary btn-lg btn-bloc">立即跳转</a>
					</div>
				</div>
			</div>
		</div>
		<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
			<div class="modal-dialog" style="width: 300px;">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
					</div>
					<div align="center" class="modal-body"><img src="img/wxsk.png" align="center" height="200px" width="200px" /></div>
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
					<div id="image">
						<img class="imgs" id="img1" src="img/01-1.jpg"/>
						<img class="imgs" id="img2" src="img/01-2.jpg"/>
						<img class="imgs" id="img3" src="img/01-3.jpg"/>
						<img class="imgs" id="img4" src="img/01-4.jpg"/>
					</div>	
				</div>
				<div class="col-md-6 column" style="padding-top: 80px;">
					<form class="form-horizontal" role="form">
						<div class="form-group">
							<h1>欢迎注册JDog</h1>
						</div>
						<div class="form-group col-md-11">
							<h3> JDog，每天都有新发现
						<a  data-toggle="modal" data-target="#myModal" style="float: right;" href="">联系我们</a>
					</h3>
						</div>
						<div id="div_name" class="form-group input-group-lg col-md-11" style="padding-top: 40px;">
							<input type="text" class="form-control" id="name" placeholder="填写用户名" />
							<span id="name_tip" class="glyphicon glyphicon-remove tip">用户名不能为空</span>
						</div>
						<span id="succ1" style="margin-top:50px;color:green;font-size:large;display: none;" class="col-md-1 glyphicon glyphicon-ok"></span>
						<div id="div_pwd" class="form-group input-group-lg col-md-11" style="padding-top: 20px;">
							<input type="password" class="form-control" id="pwd" placeholder="填写密码" />
							<span id="pwd_tip" class="glyphicon glyphicon-remove tip">密码不能为空</span>
						</div>
						<span id="succ2" style="margin-top:30px;color:green;font-size:large;display: none;" class="col-md-1 glyphicon glyphicon-ok"></span>
						<div id="div_confirm" class="form-group input-group-lg col-md-11" style="padding-top: 20px;">
							<input type="password" class="form-control" id="confirm" placeholder="确认密码" />
							<span id="confirm_tip" class="glyphicon glyphicon-remove tip">密码不对应</span>
						</div>
						<span id="succ3" style="margin-top:30px;color:green;font-size:large;display: none;" class="col-md-1 glyphicon glyphicon-ok"></span>
						<div id="div_phone" class="form-group input-group-lg col-md-11" style="padding-top: 20px;">
							<input type="phone" class="form-control" id="phone" placeholder="电话" />
							<span id="phone_tip" class="glyphicon glyphicon-remove tip">电话格式错误</span>
						</div>
						<span id="succ4" style="margin-top:30px;color:green;font-size:large;display: none;" class="col-md-1 glyphicon glyphicon-ok"></span>
						<div class="form-group col-md-11" style="padding-top: 20px;">
							<button id="reg" type="button" class="btn btn-primary btn-lg btn-block">立即注册</button>
						</div>
						<div style="display: none;">
							<a id="reg1" data-toggle="modal" data-target="#wait"></a>
						</div>
					</form>
				</div>
			</div>
		</div>
	</body>
</html>