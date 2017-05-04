<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>管理平台</title>
</head>
<style>
.body{
	margin:0px; 
	padding:0px; 
	height: 750px; 
	font-family:'微软雅黑'
}

.top{
	width:100%; 
	height:70px; 
	background-color:#32CD99 
}

.top_user{
	width: 100px;
    height: 20px;
    padding-top: 30px;
    margin-left: 1300px;
    color: white;
    font-size: 15px
}

.left{
	width:200px; 
	height:703px; 
	background-color:#E8E7E7;
	float: left;
}

.content_ul{
	float: left;
    list-style: none;
    margin: 0px;
    padding: 0px;
    width: 100%;
    height: 703px;
}
</style>

<body class="body">
	<div class="top">
		<div class="top_user">
			您好，黄菊萍
		</div>
	</div>
	<div style="width: 1440px; height: 703px;">
		<ul class="content_ul">
			<li class="left">
				<ul id="menu" style="margin:0px; padding:0px"></ul>		<!-- 左侧菜单 -->
			</li>
			<li style="width: 1240px;height: 703px; float: left;">
				<%@ include file="/homepage.jsp"%>
			</li>
		</ul>
	
		<%-- <div class="left">
			<ul id="menu" style="margin:0px; padding:0px"></ul>		<!-- 左侧菜单 -->
		</div>
		<div class="right" style="width: 1223px;height: 703px;">
			<%@ include file="homepage.jsp"%>
		</div> --%>
	</div>
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
</body>
</html>