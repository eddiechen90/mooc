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
<script type="text/javascript">

//提交
function toSubmit(){
	var code=$("#active_code").val().trim();
	$.ajax({
		type: "post", 
		url: "active.do", 
		dataType: "json",
		data : {"code":code},
     	success: function (data) {
	     	if(data.result=="1"){
	     		 self.location="verifyx.html";
	     	}else{
	     		$("#active_err").text(data.message);
	     	}
     		
       	}
       	
	});
}
//重新发送邮件
function resend_mail(){
	var mail=$("#register_email").text();
	
	if(mail==""){
		return;
	}
	var myreg = /^([a-zA-Z0-9_-])+@([a-zA-Z0-9_-])+(.[a-zA-Z0-9_-])+/; 
	if(!myreg.test(mail)){
		return;
	}
	$.ajax({
		type: "post", 
		url: MOOC_URL+"/user/resendMail.do", 
		dataType: "json",
		data : {"mail":mail},
     	success: function (data) {
	     	if(data.result=="1"){
	     		
	     	}else{
	     		
	     	}
     		
       	}
       	
	});
}
</script>
</head>
<body>

<%@ include file="header.jsp"%>

<!--verify start-->
<div class="container">
    <div id="verifyx">
        <div class="verify1"><img src="images/checkx.png"></div>
        <div class="verify2">
            <h2>恭喜您注册成功</h2>
            <p>您注册的账号为<span class="font-blue" id="register_email">${email }</span>，您的账号需要去您的邮箱激活方可使用
    您的邮箱可随时查看消息并且用于找回密码等操作</p>
            <div class="verify-form">
            	<input type="button" value="立即去邮箱激活账号" class="verify-btn" onclick="toLoginEmail();">
                <h3>没有收到邮件？<a href="javascript:;" onclick="resend_mail();" >重新发送</a></h3>
            </div>
            <div class="verify-form2">
            	<p>请输入有邮箱中的验证码：</p>
                <input type="text" id="active_code" maxlength="100" autocomplete="off" class="ipt" placeholder="请输入验证码"/><span id="active_err" style="color:red"></span><br>
                <input type="button" value="提交" class="verify-btn1" onclick="javascript:toSubmit()">
            </div>
        </div>
    </div>
</div>
<!--footer start-->
<%@ include file="footer.jsp"%>
<!--footer end-->


</body>
</html>
