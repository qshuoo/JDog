<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script src="https://cdn.bootcss.com/jquery/2.1.1/jquery.min.js"></script>
<link href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
<script src="https://cdn.bootcss.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script>var username = '<%=session.getAttribute("UserName")%>';</script>
<script type="text/javascript" src="js/head.js"></script>
</head>
<body>
	<div class="container">
			<div class="row clearfix">
				<div class="col-md-12 column">
					<nav class="navbar navbar-default" role="navigation" style="margin-top: 10px; height: 70px;padding-top: 8px; font-size: 20px;">
						<div class="navbar-header">
							<a class="navbar-brand" href="#">JDog</a>
						</div>

						<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
							<ul class="nav navbar-nav">
								<li>
									<a href="index.jsp">首页</a>
								</li>
								<li>
									<a href="#">购物车</a>
								</li>
							</ul>
							<ul class="nav navbar-nav navbar-right">
								<li>
									<a href="#">成为会员</a>
								</li>
								<li class="tologin" style="display:none;">
									<a href="login.jsp">登陆</a>
								</li>
								<li class="dropdown" style="display:none;">
									<a href="#" class="dropdown-toggle" data-toggle="dropdown"><%=session.getAttribute("UserName")%><strong class="caret"></strong></a>
									<ul class="dropdown-menu">
										<li>
											<a href="#">个人中心</a>
										</li>
										<li>
											<a href="LogoffServlet">注销</a>
										</li>
									</ul>
								</li>
							</ul>
						</div>
					</nav>
				</div>
			</div>
		</div>
</body>
</html>