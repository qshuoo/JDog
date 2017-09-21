<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored ="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://cdn.bootcss.com/jquery/2.1.1/jquery.min.js"></script>
<script src="https://cdn.bootcss.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="css/index_style.css" />
<script type="text/javascript" src="js/head.js" ></script>

</head>
<body>
<nav class="navbar navbar-default" role="navigation">
			<div class="container-fluid">

				<div style="color: grey;">
					<!--向左对齐-->
					<div class="nav navbar-nav navbar-left" style="padding-top: 20px;padding-left: 20px;">
						<div id = "name_control" style="display: none;">欢迎您！用户【
						<span id = "judge">${UserName}</span>
						】</div>
						<span id = "login_control" style="display: none;" class="glyphicon glyphicon-log-in"><a href="login.jsp" style="margin-left: 10px;">请登录</a></span>
					</div>

					<!--向右对齐-->

					<div class="nav navbar-nav navbar-right" style="padding-top: 20px;padding-left: 20px;">
						<ul class="nav navbar-nav">
							<li style="padding-right: 20px;">
								<span class="glyphicon glyphicon-user"><a href="#" style="margin-left: 10px;">用户中心</a></span>
							</li>
							<li style="padding-right: 20px;">
								<span class="glyphicon glyphicon-off"><a href="LogoffServlet" style="margin-left: 10px;">注销</a></span>
							</li>
						</ul>
					</div>

				</div>
			</div>
		</nav>

		<div style="padding-left: 40px;">
			<a href="#" style="font-size: xx-large;color: #BD2130;">JDog</a>
			<font face="楷体" size="3" color="gray">每天都有新发现</font>
		</div>

		<nav class="navbar navbar-default" role="navigation" style="margin-top: 20px;">
			<div class="container-fluid" style="border: 1px solid white;">

				<div>
					<!--向左对齐-->
					<ul class="nav navbar-nav navbar-left" style="padding-left: 15px;">
						<li class="head-list" style="width: 80px;text-align: center;">
								<a href="index.jsp">主页</a>

						</li>
						<li class="head-list" style="width: 80px;text-align: center;">
								<a href="ProductServlet?start=-1">产品</a>

						</li>
						<li class="head-list" style="width: 80px;text-align: center;">
								<a href="#">购物车</a>

						</li>
						<li class="head-list" style="width: 80px;text-align: center;">
								<a href="#">结算</a>
						</li>
					</ul>
					<!--向右对齐-->
					<ul class="nav navbar-nav navbar-right">
						<form class="navbar-form navbar-left" role="search">
							<div class="form-group">
								<input type="text" class="form-control" placeholder="Search">
							</div>
							<button type="submit" class="btn btn-default"><span class="glyphicon glyphicon-search"></span></button>
						</form>
					</ul>
				</div>
			</div>
		</nav>
</body>
</html>