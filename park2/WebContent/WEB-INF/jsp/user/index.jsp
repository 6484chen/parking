﻿<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	
	<title>智能停车场管理系统</title>
	<meta name="keywords" content="" />
	<meta name="description" content="" /> 

	<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/vendor/bootstrap/css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/fonts/font-awesome-4.7.0/css/font-awesome.min.css">
	<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/fonts/iconic/css/material-design-iconic-font.min.css">
	<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/css/util.css">
	<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/css/main.css">
	
	<script type="text/javascript">
		
	</script>
</head>

<body>

	<div class="limiter">
		<div class="container-login100" style="background-image: url('images/bg-01.jpg');">
			<div class="wrap-login100 p-l-55 p-r-55 p-t-65 p-b-54">
				
				
				<form class="login100-form validate-form" method="post" action="${pageContext.request.contextPath }/userTest">
					<span class="login100-form-title p-b-49">登录</span>

					<div class="wrap-input100 validate-input m-b-23" data-validate="请输入用户名">
						<span class="label-input100">用户名</span><span color="red">${pass}</span>
						<input class="input100" type="text" id="name" name="name" placeholder="请输入用户名" />
						<span class="focus-input100" data-symbol="&#xf206;"></span>
					</div>

					<div class="wrap-input100 validate-input" data-validate="请输入密码">
						<span class="label-input100">密码</span>
						<input class="input100" type="password" id="passwd" name="passwd" placeholder="请输入密码">
						<span class="focus-input100" data-symbol="&#xf190;"></span>
					</div>

					<div class="text-right p-t-8 p-b-31">
						<a href="javascript:">忘记密码？</a>
					</div>

					<div class="container-login100-form-btn">
						<div class="wrap-login100-form-btn">
							<div class="login100-form-bgbtn"></div>
							<button class="login100-form-btn"  type="submit">登 录</button>
							
						</div>
					</div>

					<div class="txt1 text-center p-t-54 p-b-20">
						<span>第三方登录</span>
					</div>

					<div class="flex-c-m">
						<a href="https://login.weixin.qq.com/" class="login100-social-item bg1">
							<i class="fa fa-wechat"></i>
						</a>

						<a href="https://www.baidu.com/link?url=ynYIVxal-SBEKFRjkcf_46MqM3BIOUEyvhA7LsZPfZa&wd=&eqid=a3d83ad4004690e3000000035d161bbc" class="login100-social-item bg2">
							<i class="fa fa-qq"></i>
						</a>

						<a href="https://weibo.com/" class="login100-social-item bg3">
							<i class="fa fa-weibo"></i>
						</a>
					</div>

					<div class="flex-col-c p-t-25">
						<a href="javascript:" class="txt2">立即注册</a>
					</div>
				</form>
			</div>
		</div>
	</div>

	<script src="vendor/jquery/jquery-3.2.1.min.js"></script>
	<script src="js/main.js"></script>
</body>

</html>