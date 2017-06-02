<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="UTF-8">
<title>慕客网注册</title>
<!--link是单标签，script是双标签-->
<link type="image/x-icon" href="images/favicon.jpg" rel="icon" />
<link href="css/index.css" rel="stylesheet" type="text/css" />
<link href="css/reg.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="js/jquery-1.7.2.min.js"></script>
<script type="text/javascript" src="js/slider.js"></script>
<script type="text/javascript" src="js/curse.js"></script>
<script type="text/javascript" src="js/dz.js"></script>
</head>
<body>
	<%@ include file="header.jsp"%>

	<!--注册页面-->
	<div id="register">
		<div class="reg_title">
			<p>注册账号</p>
		</div>
		<div class="reg_content">
			<div class="reg_form">
				<form action="registe" method="post" id="reg">
					<div class="reg_group">
						<div class="field_title">
							<p>注册邮箱：</p>
						</div>
						<div>
							<input class="field" onBlur="isBlank(this)" type="text" id="reg_email" name="email"
								placeholder="请输入注册的邮箱"/>
						</div>
						<div class="in_notify">
							<span id="email_verify" style="float: left; display: none" class="notify">*&nbsp;不能为空</span>
						</div>
					</div>

					<div class="reg_group">
						<div class="field_title">
							<p>你的昵称：</p>
						</div>
						<div style="float: left">
							<input  class="field" type="text" id="reg_nickName" name="nickName" onBlur="isBlank(this)"
								placeholder="1-6位字符"/>
						</div>
						<div class="in_notify">
							<span id="nickName_verify" style="float: left; display: none" class="notify">*&nbsp;不能为空</span>
						</div>
					</div>

					<div class="reg_group">
						<div class="field_title">
							<p>设置密码：</p>
						</div>
						<div style="float: left">
							<input class="field"  type="password" id="reg_password" name="password" onBlur="isBlank(this)"
								placeholder="6-16位密码，区分大小写，不能用空格"/>
						</div>
						<div class="in_notify">
							<span id="password_verify" style="float: left; display: none" class="notify">*&nbsp;不能为空</span>
						</div>
					</div>

					<div class="reg_group">
						<div class="field_title">
							<p>确认密码：</p>
						</div>
						<div style="float: left">
							<input class="field"  type="password" id="reg_re_password" name="re_password" onBlur="isBlank(this)"
								placeholder="6-16位密码，区分大小写，不能用空格"/>
						</div>
						<div class="in_notify">
							<span id="re_password_verify" style="float: left; display: none" class="notify">*&nbsp;不能为空</span>
						</div>
					</div>


					<div class="reg_group">
						<div class="field_title">
							<p>验证码：</p>
						</div>
						<div style="width: 227px; float: left">
							<input  class="field verify_code_input" id="reg_verify_code" name="verify_code" onBlur="isBlank(this)" type="text"
								placeholder="请输入验证码" />
						</div>

						<div class="verify_pic"><img onclick="$(this).attr('src','code/'+new Date())" src="code/yzm.png"/></div>
						<div class="in_notify">
							<span id="verify_code_verify" style="float: left; display: none" class="notify">*&nbsp;不能为空</span>
						</div>
					</div>
					<!--<div class="submit"><a href="javascript:"><div class="submit_btn" style="">注&nbsp;册</div></a></div>-->
					<div class="reg_group">
						<div
							style="width: 265px; height: 30px; float: left; margin-left: 85px;">
							<input class="submit_btn" type="button" value="注册" onclick="javascript:register()"
								style="width: 265px; color: white; display: block; float: left" />
						</div>


					</div>
				</form>
			</div>
		</div>
	</div>


	<%@ include file="footer.jsp"%>
</body>
</html>