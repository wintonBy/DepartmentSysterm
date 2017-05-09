<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/bootstrap-3.3.7/css/bootstrap.min.css">
<link rel="stylesheet"	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css">
<link rel="stylesheet"	href="<%=request.getContextPath()%>/resources/css/home.css">
<title>管理平台</title>
<script type="text/javascript" src="<%=request.getContextPath()%>/resources/jQuery/js/jquery-3.2.1.min.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/resources/bootstrap-3.3.7/js/bootstrap.min.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/resources/js/home.js" ></script>
</head>

<body>
	<nav class="navbar navbar-default no-margin">
		<div class="navbar-header fixed-brand">
			<button type="button" class="navbar-toggle collapsed"
				data-toggle="collapse" id="menu-toggle">
				<span class="glyphicon glyphicon-th-large" aria-hidden="true"></span>
			</button>
			<a class="navbar-brand" href="#"><i class="fa fa-rocket fa-4"></i>M-33</a>
		</div>
		<!-- navbar-header-->
		<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
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
				<li class="active"><a href="#"><span
						class="fa-stack fa-lg pull-left"><i
							class="fa fa-dashboard fa-stack-1x "></i></span> Dashboard</a>
					<ul class="nav-pills nav-stacked" style="list-style-type: none;">
						<li><a href="#">link1</a></li>
						<li><a href="#">link2</a></li>
					</ul></li>
				<li><a href="#"><span class="fa-stack fa-lg pull-left"><i
							class="fa fa-flag fa-stack-1x "></i></span>Shortcut</a>
					<ul class="nav-pills nav-stacked" style="list-style-type: none;">
						<li><a href="#"><span class="fa-stack fa-lg pull-left"><i
									class="fa fa-flag fa-stack-1x "></i></span>link1</a></li>
						<li><a href="#"><span class="fa-stack fa-lg pull-left"><i
									class="fa fa-flag fa-stack-1x "></i></span>link2</a></li>
					</ul></li>
				<li><a href="#"><span class="fa-stack fa-lg pull-left"><i
							class="fa fa-cloud-download fa-stack-1x "></i></span>Overview</a></li>
				<li><a href="#"> <span class="fa-stack fa-lg pull-left"><i
							class="fa fa-cart-plus fa-stack-1x "></i></span>Events
				</a></li>
				<li><a href="#"><span class="fa-stack fa-lg pull-left"><i
							class="fa fa-youtube-play fa-stack-1x "></i></span>About</a></li>
				<li><a href="#"><span class="fa-stack fa-lg pull-left"><i
							class="fa fa-wrench fa-stack-1x "></i></span>Services</a></li>
				<li><a href="#"><span class="fa-stack fa-lg pull-left"><i
							class="fa fa-server fa-stack-1x "></i></span>Contact</a></li>
			</ul>
		</div>
		<!-- /#sidebar-wrapper -->
		<!-- Page Content -->
		<div id="page-content-wrapper">
			<div class="container-fluid xyz">
				<div class="row">
					<div class="col-lg-12">
						<h1>
							Simple Admin Sidebar With Bootstrap by <a
								href="http://http://codepen.io/hughbalboa/">@hughbalboa</a>
						</h1>
						<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.
							Provident laudantium nobis cum dignissimos ex inventore, velit
							blanditiis. Quod laborum soluta quidem culpa officia eligendi,
							quam, recusandae iste aliquid amet odit!</p>
					</div>
				</div>
			</div>
		</div>
		<!-- /#page-content-wrapper -->
	</div>
	

</body>


</html>
