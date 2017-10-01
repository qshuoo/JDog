<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>商品详情</title>
		<link rel="stylesheet" href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css">
		<script src="https://cdn.bootcss.com/jquery/2.1.1/jquery.min.js"></script>
		<script src="https://cdn.bootcss.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
		<link rel="stylesheet" href="css/index_style.css" />
		<script type="text/javascript" src="js/head.js"></script>
		<script>
			$(document).ready(function(){
				$("#minus").click(function(){
					var num = $("#num").val();
					if (num > 1) {
						$("#num").val(num-1);
					}
					
				});
				
				$("#add").click(function(){
					var num = Number($("#num").val());
					//if (num > 2) {
						$("#num").val(num+1);
					//}
					
				});
			});
		</script>
</head>
<body>

<%@include file="head.jsp"%>

<!--标题-->
	<div class="container">
		<div class="col-md-12">
			<div class="col-md-5">
				<hr style="height: 3px; background: #495057; margin-top: 8%" />

			</div>
			<div class="col-md-2">
				<h1 align="center" style="color: #495057;">商品详情</h1>
			</div>
			<div class="col-md-5">
				<hr style="height: 3px; background: #495057; margin-top: 8%;" />
			</div>
		</div>
	</div>

	<!--商品详情-->
	<div class="container">
		<div class="col-md-4">

		</div>
		<div class="col-md-4">
			<table class="table">
				<caption></caption>
				<tbody>
					<tr>
						<td rowspan="4">
							<img src="img/product-5.jpg" />
						</td>
						<td>
							<div style="padding-top: 30px;">
								<strong>名称</strong>
							</div>
						</td>
					</tr>
					<tr>
						<td style="border: 0px;"><strong>￥6666</strong></td>
					</tr>
					<tr>
						<td style="border: 0px;">
							<button id="minus" style="width: 20px;" class="btn btn-primary btn-xs">-</button>
							&nbsp;<input id="num" type="text" value="1" style="width: 30px;" />&nbsp;
							<button id="add" style="width: 20px;" class="btn btn-primary btn-xs">+</button>

						</td>
					</tr>
					<tr>
						<td style="border: 0px;">
							<button style="margin-top: 10px;" class="btn btn-default btn-sm">加入购物车</button>
						</td>
					</tr>
					<tr>
						<td colspan="2">简介</td>
					</tr>
				</tbody>
			</table>
		</div>
	</div>


<%@include file="tail.jsp"%>

</body>
</html>