<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta name="viewport"content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">
<title>欢迎登录</title>
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/bootstrap-3.3.7/css/bootstrap.min.css">

<script type="text/javascript" src="<%=request.getContextPath()%>/resources/jQuery/js/jquery-3.2.1.min.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/resources/js/md5.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/resources/layer/layer.js"></script>

<!--validate css  -->
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/validator/css/jquery.validate.css" />
<!-- validate scripts -->
<script src="<%=request.getContextPath()%>/resources/validator/js/jquery.validate.js"></script>
<script src="<%=request.getContextPath()%>/resources/validator/js/jquery.metadata.js"></script>
<script src="<%=request.getContextPath()%>/resources/validator/js/jquery.validate.expand.js"></script>

<style type="text/css">
body {
	background-color: #f6f6f6;
}
.container-fluid{
	width: 360px;
	margin-top: 100px;
}
.btn{
	color:#ffffff;
	background-color: #5cb85c;
}
.btn:HOVER {
	background-color: #47a447
}

</style>
</head>
<body>
<div class="container-fluid" style="margin-top: 160px">
	<h3  class="text-center" style="color:#6f6f6f ">互动电视技术部</h3>
</div>

<div class="container-fluid" >
	<form  class="form-horizontal" role="form" id="loginForm" name="loginForm">
		<div class="form-group">
			<input type="text" class="form-control" id="username" name="username" placeholder="用户名"/>
		</div>
		<div class="form-group">
			<input type="password" class="form-control" id="password" name="password" placeholder="密码"/>
		</div>
		<div class="form-group">
			<input type="submit" class="btn" style="width: 100%" value="登录" onclick="login()"/>
		</div>
	</form>
</div>

<div class="container-fluid" style="margin-top: 50px;">
	<div class="form-group" style="border-top: 1px solid #CDC9C9;padding-top: 10px;">
		<center><a href="">联系我们</a>&nbsp&nbsp&nbsp&nbsp<span style="color:#CDC9C9; ">|</span>&nbsp&nbsp&nbsp&nbsp<a href="">关于作者</a></center>
	</div>
</div>
<footer class="text-center" style="margin-top: 100px; color:#66CDAA" ><small>脚步未曾停止，我们一直在前进的路上...</small></footer>
</body>
<!-- 页面js -->
<script type="text/javascript">
	function login(){
		var loading = layer.load(1, {
			  shade: [0.1,'#fff'] //0.1透明度的白色背景
		});
		
		/* if(!validateLoginForm().form()){
			layer.close(loading);
			return;
		} */
		
		$("#loginForm").validate({
			rules:{
				username:{
					"required":true
				},
				password:{
					"required":true
				}
			},
			messages:{
				username:{
					"required":""
				},
				password:{
					"required":""
				}
			},
			submitHandler:function(form){
				var username = $("#username").val();
				var password = $("#password").val();
				var md5Password = hex_md5(password);
				$.post('user/login.do',{'username':username,'password':md5Password},function(data){
					if(data.result){
						//登录成功
						location.href = ("user/goHome.do");
					}else{
						//登录失败
						layer.msg(data.errorMsg);
					}
				},'json');
			}
		})
		
		layer.close(loading);
	}
	
	//校验登录form
	function validateLoginForm(){
		return $("#loginForm").validate({
			rules:{
				username:{
					"required":true
				},
				password:{
					"required":true
				}
			},
			messages:{
				username:{
					"required":""
				},
				password:{
					"required":""
				}
			}
		})
	}
</script>
</html>
