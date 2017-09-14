<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
		<meta charset="UTF-8">
		<title>主页</title>
		<link rel="stylesheet" href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css">
		<script src="https://cdn.bootcss.com/jquery/2.1.1/jquery.min.js"></script>
		<script src="https://cdn.bootcss.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
		<link rel="stylesheet" href="css/index_style.css" />
		<script type="text/javascript" src="js/indexcontrol.js" ></script>

	</head>

	<body>
		<nav class="navbar navbar-default" role="navigation">
			<div class="container-fluid">

				<div style="color: grey;">
					<!--向左对齐-->
					<div class="nav navbar-nav navbar-left" style="padding-top: 20px;padding-left: 20px;">
						<span style="display: none;">欢迎您！用户【#】</span>
						<span class="glyphicon glyphicon-log-in"><a href="#" style="margin-left: 10px;">请登录</a></span>
					</div>

					<!--向右对齐-->

					<div class="nav navbar-nav navbar-right" style="padding-top: 20px;padding-left: 20px;">
						<ul class="nav navbar-nav">
							<li style="padding-right: 20px;">
								<span class="glyphicon glyphicon-user"><a href="#" style="margin-left: 10px;">用户中心</a></span>
							</li>
							<li style="padding-right: 20px;">
								<span class="glyphicon glyphicon-off"><a href="#" style="margin-left: 10px;">注销</a></span>
							</li>
						</ul>
					</div>

				</div>
			</div>
		</nav>

		<div style="padding-left: 40px;">
			<a href="#" style="font-size: xx-large;color: #BD2130;">JDog</a>
			<font face="楷体" size="3" color="gray">，每天都有新发现</font>
		</div>

		<nav class="navbar navbar-default" role="navigation" style="margin-top: 20px;">
			<div class="container-fluid" style="border: 1px solid white;">

				<div>
					<!--向左对齐-->
					<ul class="nav navbar-nav navbar-left" style="padding-left: 15px;">
						<li id="li1" style="width: 80px;text-align: center;">
								<a href="#">主页</a>

						</li>
						<li id="li2" style="width: 80px;text-align: center;">
								<a href="#">产品</a>

						</li>
						<li id="li3" style="width: 80px;text-align: center;">
								<a href="#">购物车</a>

						</li>
						<li id="li4" style="width: 80px;text-align: center;">
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

		<div id="myCarousel" class="carousel slide">
			<!-- 轮播（Carousel）指标 -->
			<ol class="carousel-indicators">
				<li style="background-color: #28A745;" data-target="#myCarousel" data-slide-to="0" class="active"></li>
				<li style="background-color: #28A745;" data-target="#myCarousel" data-slide-to="1"></li>
				<li style="background-color: #28A745;" data-target="#myCarousel" data-slide-to="2"></li>
				<li style="background-color: #28A745;" data-target="#myCarousel" data-slide-to="3"></li>
			</ol>
			<!-- 轮播（Carousel）项目 -->
			<div class="carousel-inner">
				<div align="center" class="item active">
					<img align="center" src="img/h4-slide.png" alt="First slide">
				</div>
				<div align="center" class="item">
					<img src="img/h4-slide2.png" alt="Second slide">
				</div>
				<div align="center" class="item">
					<img src="img/h4-slide3.png" alt="Third slide">
				</div>
				<div align="center" class="item">
					<img src="img/h4-slide4.png" alt="Third slide">
				</div>
			</div>
			<!-- 轮播（Carousel）导航 -->
			<a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
				<span class="glyphicon glyphicon-chevron-left" style="color: #17A2B8;" aria-hidden="true"></span>
				<span class="sr-only">Previous</span>
			</a>
			<a class="right carousel-control" href="#myCarousel" style="color: #17A2B8;" role="button" data-slide="next">
				<span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
				<span class="sr-only">Next</span>
			</a>
		</div>

		<div class="container" align="center" style="padding-top: 50px;color: white;">
			<div class="col-md-3">
				<div id="card1" style="height: 110px;background-color: #17A2B8;">
					<font style="font-size: xx-large;padding-top: 20px;" class="glyphicon glyphicon-refresh"><br />7天退货</font>
				</div>

			</div>
			<div class="col-md-3">
				<div id="card2" style="height: 110px;background-color: #28A745;">
					<font style="font-size: xx-large;padding-top: 20px;" class="glyphicon glyphicon-home"><br />送货上门</font>

				</div>
			</div>
			<div class="col-md-3">
				<div id="card3" style="height: 110px;background-color: #BD4147;">
					<font style="font-size: xx-large;padding-top: 20px;" class="glyphicon glyphicon-lock"><br />安全付款</font>

				</div>
			</div>
			<div class="col-md-3">
				<div id="card4" style="height: 110px;background-color: #FFC107;">
					<font style="font-size: xx-large;padding-top: 20px;" class="glyphicon glyphicon-briefcase"><br />最新商品</font>
				</div>
				<br />
			</div>

		</div>

		<div align="center" style="color: gray;height: 80px;">
			<hr width="95%" style="border: 1px solid gray;" /> Copyright@JDog 2017-2022, All Rights Reserved
			<span class="glyphicon glyphicon-leaf"></span> 京ICP证12138号 经营许可证
		</div>

	</body>
</html>