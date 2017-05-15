<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ include file="../taglib.jsp"%>	
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/bootstrap-3.3.7/css/bootstrap.min.css">
<link rel="stylesheet"	href="<%=request.getContextPath()%>/resources/Font-Awesome-3.2.1/css/font-awesome.min.css">
<title>管理平台</title>
<script type="text/javascript" src="<%=request.getContextPath()%>/resources/jQuery/js/jquery-3.2.1.min.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/resources/bootstrap-3.3.7/js/bootstrap.min.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/resources/js/home.js" ></script>

<style type="text/css">
 /* Toggle Styles */
 
 .nav-pills>li>a {
    border-radius: 0;
 }
 #wrapper {
    padding-left: 0;
    -webkit-transition: all 0.5s ease;
    -moz-transition: all 0.5s ease;
    -o-transition: all 0.5s ease;
    transition: all 0.5s ease;
    overflow: hidden;
 }
 
 #wrapper.toggled {
    padding-left: 250px;
    overflow: hidden;
 }
 
 #sidebar-wrapper {
    z-index: 1000;
    position: absolute;
    left: 250px;
    width: 0;
    height: 100%;
    margin-left: -250px;
    overflow-y: auto;
    background: #000;
    -webkit-transition: all 0.5s ease;
    -moz-transition: all 0.5s ease;
    -o-transition: all 0.5s ease;
    transition: all 0.5s ease;
 }
 
 #wrapper.toggled #sidebar-wrapper {
    width: 250px;
 }
 
 #page-content-wrapper {
    position: absolute;
    padding: 15px;
    width: 100%;
    overflow-x: hidden;
 }
 
 .xyz {
    min-width: 360px;
 }
 
 #wrapper.toggled #page-content-wrapper {
    position: relative;
    margin-right: 0px;
 }
 
 .fixed-brand {
    width: auto;
 }
 /* Sidebar Styles */
 
 .sidebar-nav {
    position: absolute;
    top: 0;
    width: 250px;
    margin: 0;
    padding: 0;
    list-style: none;
    margin-top: 2px;
 }
 
 .sidebar-nav li {
    text-indent: 15px;
    line-height: 40px;
 }
 
 .sidebar-nav li a {
    display: block;
    text-decoration: none;
    color: #999999;
 }
 
 .sidebar-nav li a:hover {
    text-decoration: none;
    color: #fff;
    background: rgba(255, 255, 255, 0.2);
    border-left: red 2px solid;
 }
 
 .sidebar-nav li a:active,
 .sidebar-nav li a:focus {
    text-decoration: none;
 }
 
 .sidebar-nav > .sidebar-brand {
    height: 65px;
    font-size: 18px;
    line-height: 60px;
 }
 
 .sidebar-nav > .sidebar-brand a {
    color: #999999;
 }
 
 .sidebar-nav > .sidebar-brand a:hover {
    color: #fff;
    background: none;
 }
 
 .no-margin {
    margin: 0;
 }
 
 @media(min-width:768px) {
    #wrapper {
       padding-left: 250px;
    }
    .fixed-brand {
       width: 250px;
    }
    #wrapper.toggled {
       padding-left: 0;
    }
    #sidebar-wrapper {
       width: 250px;
    }
    #wrapper.toggled #sidebar-wrapper {
       width: 250px;
    }
    #wrapper.toggled-2 #sidebar-wrapper {
       width: 50px;
    }
    #wrapper.toggled-2 #sidebar-wrapper:hover {
       width: 250px;
    }
    #page-content-wrapper {
       padding: 20px;
       position: relative;
       -webkit-transition: all 0.5s ease;
       -moz-transition: all 0.5s ease;
       -o-transition: all 0.5s ease;
       transition: all 0.5s ease;
    }
    #wrapper.toggled #page-content-wrapper {
       position: relative;
       margin-right: 0;
       padding-left: 250px;
    }
    #wrapper.toggled-2 #page-content-wrapper {
       position: relative;
       margin-right: 0;
       margin-left: -200px;
       -webkit-transition: all 0.5s ease;
       -moz-transition: all 0.5s ease;
       -o-transition: all 0.5s ease;
       transition: all 0.5s ease;
       width: auto;
    }
 }
 .navbar-default{
 	background-color: #5cb85c;
 	border-color: #5cb85c;
 	color: #f6f6f6;
 }
 .navbar-header{
 	padding-left:10px;
 	padding-top:10px;
 	color: #f6f6f6;
 }
 .navbar-header a{
 	color: #f6f6f6;
 	font-size: 16px;
 }
 .navbar-header a:hover{
 	color: #f6f6f6;
 	text-decoration:none;
 	cursor: pointer;
 }
.navbar-default .navbar-toggle{
	border-color: #5cb85c;
	margin-right: 0px;
}
</style>

</head>


<body>
	<nav class="navbar-default no-margin"  >
		<div class="navbar-header fixed-brand" >
			<a id="username"><i class="icon-home icon-2x"></i>用户名</a>
		</div>
		<!-- navbar-header-->
		<div class="collapse navbar-collapse " id="bs-example-navbar-collapse-1">
			<ul class="nav navbar-nav">
				<li class="active">
					<button class="navbar-toggle collapse in" data-toggle="collapse"
						id="menu-toggle-2">
						<span class="icon-th icon-large" aria-hidden="true"></span>
					</button>
				</li>
			</ul>
			<!-- 右边功能按钮 -->
			<ul class="nav navbar-toolbar">
				<li class="active">
					<button class="navbar-toggle collapse in" data-toggle="collapse"
						>
						<span class="icon-off" aria-hidden="true"> 退出</span>
					</button>
				</li>
				<li class="active">
					<button class="navbar-toggle collapse in" data-toggle="collapse"
						>
						<span class="icon-wrench" aria-hidden="true"> 修改密码</span>
					</button>
				</li>
				<li class="active">
					<button class="navbar-toggle collapse in" data-toggle="collapse"
						>
						<span class="icon-bell-alt" aria-hidden="true"> 消息</span>
					</button>
				</li>
				<li class="active">
					<button class="navbar-toggle collapse in" data-toggle="collapse"
						>
						<span class="icon-fullscreen" aria-hidden="true"> 全屏</span>
					</button>
				</li>
			</ul>
		</div>
		
	</nav>
	<div id="wrapper">
		<!-- Sidebar -->
		<div id="sidebar-wrapper">
			<ul class="sidebar-nav nav-pills nav-stacked" id="menu">
				<c:forEach items="${menus}" var="menu">
					<li>
						<a href="#">
							<span class="fa-stack fa-lg pull-left">
								<i class="fa fa-dashboard fa-stack-1x "></i>
							</span>
							${menu.name}
						</a>
						<c:if test="${menu.childMenuList.size() > 0}">
							<ul class="nav-pills nav-stacked" style="list-style-type: none;">
								<c:forEach var="childMenu" items="${menu.childMenuList}">
									<li>
										<a href="#">${childMenu.name}</a>
									</li>
								</c:forEach>
							</ul>
						</c:if>
						
					</li>
				</c:forEach>
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
