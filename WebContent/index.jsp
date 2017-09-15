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
	<jsp:include page="head.jsp"></jsp:include>
		

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

		
	<jsp:include page="tail.jsp" ></jsp:include>
	</body>
</html>