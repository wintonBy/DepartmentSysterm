<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/bootstrap-3.3.7/css/bootstrap.min.css">
<link rel="stylesheet"	href="<%=request.getContextPath()%>/resources/Font-Awesome-3.2.1/css/font-awesome.min.css">
<link rel="stylesheet"	href="<%=request.getContextPath()%>/resources/css/home.css">
<title>管理平台</title>
<script type="text/javascript" src="<%=request.getContextPath()%>/resources/jQuery/js/jquery-3.2.1.min.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/resources/bootstrap-3.3.7/js/bootstrap.min.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/resources/js/home.js" ></script>
</head>

<body>
	<nav class="navbar-default no-margin" style="background-color: #5cb85c;border-color:#5cb85c; color:#f6f6f6 " >
		<div class="navbar-header fixed-brand" >
			<button type="button" class="navbar-toggle collapsed"
				data-toggle="collapse" id="menu-toggle">
				<span class="glyphicon glyphicon-th-large" aria-hidden="true"></span>
			</button>
				<div style="padding-left: 20px; padding-top: 10px;">
					<span class="icon-home icon-2x"></span>
				</div>
		</div>
		<!-- navbar-header-->
		<div class="collapse navbar-collapse " id="bs-example-navbar-collapse-1">
			<ul class="nav navbar-nav">
				<li class="active">
					<button class="navbar-toggle collapse in" data-toggle="collapse"
						id="menu-toggle-2">
						<span class="glyphicon glyphicon-th-large" aria-hidden="true"></span>
					</button>
				</li>
			</ul>
		</div>
	</nav>
	<div id="wrapper">
		<!-- Sidebar -->
		<div id="sidebar-wrapper">
			<ul class="sidebar-nav nav-pills nav-stacked" id="menu">
				
			</ul>
		</div>
		<!-- /#sidebar-wrapper -->
		<!-- Page Content -->
		<div id="page-content-wrapper">
			<div class="container-fluid xyz">
				<div class="row">
					<div class="col-lg-12">
						<h1>
							欢迎登陆
						</h1>
					</div>
				</div>
			</div>
		</div>
		<!-- /#page-content-wrapper -->
	</div>
	

</body>


</html>
