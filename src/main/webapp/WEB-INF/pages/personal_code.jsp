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
	$(function (){
/* 		showUserinfo();//显示用户信息 */
		
		
		$('#js-modifyuser').click(function(){
			$('.modal-backdrop').fadeIn(100);
			$('#modifyuser').slideDown(200);
		});
		$('.modifyuser-header .icon-close').click(function(){
			$('.modal-backdrop').fadeOut(100);
			$('.modify').slideUp(200);
		});
		$('#js-modifyuserx').click(function(){
			$('.modal-backdrop').fadeIn(100);
			$('#modifyuserx').slideDown(200);
		});
		
		
	});
	//显示用户信息
/* 	function showUserinfo(){
		$.ajax({
			type: "post", 
			url: MOOC_URL+"/user/getUserinfo.do", 
			dataType: "json",
			data : {},
	     	success: function (data) {
		     	if(data.result=="1"){
		     		//登录状态
					$("#nickname_div").text(data.nickname);
					$("#loginName_div").text(data.loginName);
		     	}else{
		     		//非登录状态
		     		window.location=MOOC_URL+"/html/index.html";
		     	}
	       	}
		});
	} */
	//修改昵称
	function updateNickname(){
		var new_nickname= $("#new_nickname").val().trim();//获得用户输入的新昵称
		//判断new_nickname的格式,我就不写了。
		if(new_nickname==""){
			$("#nickname_err").text("不能为空").attr("style","display:inline");
			return;
		}
		$("#nickname_err").attr("style","display:none");
		$.ajax({
			type: "post", 
			url: MOOC_URL+"/updateNickname.do", 
			dataType: "json",
			data : {"nickName":new_nickname},
			async: false,
			success : function(data){
		     	if(data.result=="1"){//修改成功
					location.reload();
		     	}else{
		     		$("#nickname_err").text(data.msg).attr("style","display:inline");
		     	}
	       	}
		});
	}
	
	
	
	//修改密码
/* 	function updatePwd(){
		var old_pwd= $("#old_pwd").val().trim();
		var new_pwd= $("#new_pwd").val().trim();
		//判断格式,我就不写了。
		if(old_pwd==""){
			$("#old_pwd_err").attr("style","display:inline");
			return;
		}
		$("#old_pwd_err").attr("style","display:none");
		if(new_pwd==""){
			$("#new_pwd_err").text("不能为空").attr("style","display:inline");
			return;
		}
		$("#new_pwd_err").attr("style","display:none");
		
		$.ajax({
			type: "post", 
			url: MOOC_URL+"/user/updatePwd.do", 
			dataType: "json",
			data : {"old_password":old_pwd,"new_password":new_pwd},
	     	success: function (data) {
		     	if(data.result=="1"){//修改成功
					$("#new_pwd_err").text("修改成功").attr("style","display:inline");
		     	}else{
		     		if(data.mess=="未登录"){
		     			//非登录状态
		     			window.location=MOOC_URL+"/html/index.html";
		     		}else{
		     			if(data.result=="0"){
		     				$("#old_pwd_err").attr("style","display:inline");
		     			}else{
		     				$("#new_pwd_err").text(data.mess).attr("style","display:inline");
		     			}
		     		}
		     	}
	       	}
		});
		
		
	} */
</script>
</head>
<body>

<%@ include file="header.jsp"%>


<!--usersafe start-->
<div id="usersafe">
	<div class="usersafe-title">账户安全</div>
    <ul class="usersaft-content">
    	<li>
        	<div class="usersafe-content-tle">昵&nbsp;&nbsp;&nbsp;&nbsp;称：</div>
            <div class="usersafe-content-tle2" id="nickname_div">${user_name}</div>
            <div class="usersafe-content-tle3"><a href="javascript:;" id="js-modifyuser">修改</a></div>
        </li>
        <li>
        	<div class="usersafe-content-tle">邮&nbsp;&nbsp;&nbsp;&nbsp;箱：</div>
            <div class="usersafe-content-tle2" id="loginName_div">${user_email}</div>
            <div class="usersafe-content-tle3">不可修改</div>
        </li>
        <li>
        	<div class="usersafe-content-tle">密&nbsp;&nbsp;&nbsp;&nbsp;码：</div>
            <div class="usersafe-content-tle2">*********</div>
            <div class="usersafe-content-tle3"><a href="javascript:;" id="js-modifyuserx">修改</a></div>
        </li>
    </ul>
</div>

<!--footer start-->
<%@ include file="footer.jsp"%>
<!--footer end-->

<div id="modifyuser" class="modify in" aria-hidden="false" style="display:none">
	<div class="modifyuser-header">
    	<h1>修改昵称</h1>
        <button type="button" class="icons icon-close" hidefocus="true" aria-hidden="true"></button>
    </div>
    <div class="modifyuser-body">
<!--     	<form id="modifyuser-form"> -->
        	<div class="modify-group">
            	<h3 class="modify-title">请输入新的昵称：</h3>
            	<input type="text" name="nickName" id="new_nickname" maxlength="37" autocomplete="off" class="ipt">
                <p class="rlf-tips" id="nickname_err" data-error-hint="请输入正确的昵称" style="display:none">请输入正确的昵称</p>
            </div>
            <div class="modify-group">
            	<input type="button" value="修改" hiddenfocus="true" class="btn-blue" onclick="updateNickname();">
            </div>
<!--         </form> -->
    </div>
</div>
<div id="modifyuserx" class="modify in" aria-hidden="false" style="display:none">
	<div class="modifyuser-header">
    	<h1>修改密码</h1>
        <button type="button" class="icons icon-close" hidefocus="true" aria-hidden="true"></button>
    </div>
    <div class="modifyuser-body">
    	<form id="modifyuser-form">
        	<div class="modify-group">
            	<h3 class="modify-title">原密码：</h3>
            	<input type="password" id="old_pwd" name="email" value maxlength="37" autocomplete="off" class="ipt">
                <p class="rlf-tips" id="old_pwd_err" data-error-hint="您输入的密码错误，请重新输入" style="display:none">您输入的密码错误，请重新输入</p>
            </div>
            <div class="modify-group">
            	<h3 class="modify-title">新密码：</h3>
            	<input type="password" id="new_pwd" name="email" value maxlength="37" autocomplete="off" class="ipt">
                <p class="rlf-tips" id="new_pwd_err" data-error-hint="密码格式错误" style="display:none">密码格式错误</p>
            </div>
            <div class="modify-group">
            	<input type="button" value="修改" hiddenfocus="true" class="btn-blue" onclick="updatePwd();" >
            </div>
        </form>
    </div>
</div>
<div class="modal-backdrop" style="display:none"></div>

</body>
</html>
