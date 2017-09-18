<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
		<link rel="stylesheet" href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css">
		<script src="https://cdn.bootcss.com/jquery/2.1.1/jquery.min.js"></script>
		<script src="https://cdn.bootcss.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
		<script src="js/product.js"></script>
</head>
<body>
<%@include file="head.jsp" %>

<!--标题-->
		<div class="container">
			<div class="col-md-12">
				<div class="col-md-5">
					<hr style="height: 3px;background: #495057;margin-top: 8%" />

				</div>
				<div class="col-md-2">
					<h1 align="center" style="color: #495057;" >商品列表</h1>
				</div>
				<div class="col-md-5">
					<hr style="height: 3px;background: #495057;margin-top: 8%;" />
				</div>
			</div>
		</div>

		<!--商品-->
		<div class="container" style="padding-top: 3%;">
		<div align="center" class="col-md-12">
			<c:forEach var="plist" items="${Products}">
				<div class="col-sm-6 col-md-3">
					<div class="thumbnail">
						<img border="1px" src= "${plist.pimg}" alt="通用的占位符缩略图">
						<div class="caption">
							<h5><strong>${plist.pname}</strong></h5>
							<h6>${plist.price}</h6>
							<a href="#" class="btn btn-default" role="button">
								加入购物车
							</a>
						</div>
					</div>
				</div>
			</c:forEach>
			</div>
		</div>
		<!--分页-->
		<div align="center">

			<ul class="pagination">
				<li id="pageback">
					<a href="javascript:void(0);">&laquo;</a>
				</li>
				<li class="pagelist active" value="0">
					<a href="javascript:void(0);">1</a>
				</li>
				<c:forEach var="i" begin="1" end="${Pages}">
				<li class="pagelist" value="${i}">
					<a href="javascript:void(0);">${i+1}</a>
				</li>
				</c:forEach>
				<li id="pagego">
					<a href="javascript:void(0);">&raquo;</a>
				</li>
			</ul>
		</div>



<%@include file="tail.jsp" %>

</body>
</html>