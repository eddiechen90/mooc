<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>慕课网</title>
<link type="image/x-icon" rel="shortcut icon" href="images/favicon.jpg">
<link href="css/index.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="js/jquery-1.7.2.min.js"></script>
<script type="text/javascript" src="js/slider.js"></script>
<script type="text/javascript" src="js/curse.js"></script>
<script type="text/javascript" src="js/dz.js"></script>
<script>
/* $(function(){
	//显示注册邮箱
	var mail = location.href.split("?")[1].split("mail=")[1];
	$("#show_email").text(mail);
	
}); */

function to_login(){
	$('#js-signin-btn').click();//弹出登录窗口
}
</script>

</head>
<body>
<%@ include file="header.jsp"%>
<!--verify start-->
<div class="container">
    <div id="verifyx">
        <div class="verify1"><img src="images/check.png"></div>
        <div class="verify2">
            <h2>账号激活成功</h2>
            <p>您的账号为<span class="font-blue" id="show_email">${email}</span>，已激活成功</p>
            <input type="button" value="立即登录" class="verify-btn3" onclick="to_login();">
        </div>
    </div>
</div>
<!--footer start-->
<%@ include file="footer.jsp"%>
<!--footer end-->


</body>
</html>
