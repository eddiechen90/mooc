var url  = location.href;
var MOOC_URL= url.substring(0,url.length-url.replace(/^http:\/\/[A-Za-z\.:0-9]*/,"").length);
if(MOOC_URL.indexOf("localhost")!=-1){
	MOOC_URL=MOOC_URL+"/MOOC";
}

/*登陆模态框动态效果*/
jQuery(document).ready(function($){
    $("#js-signin-btn").click(function(){
        $(".modal-backdrop").fadeIn();
        $(".rl-modal").slideDown();
    });
    $(".rl-modal-header .icon-close").click(function(){
        $(".modal-backdrop").fadeOut();
        $(".rl-modal").slideUp();
    });
});

/*Ajax登陆请求提交*/
function login(){ 
	var email=document.getElementById("email").value; 
	var pwd=document.getElementById("password").value; 
	var verify=document.getElementById("verify").value;
	var matchResult=true; 
	if(email==""){
		$(".rlf-tips_email").attr("style","display:block");
		matchResult=false; 
	}
	
	var mailreg = /^\w+@\w+(\.\w+)+$/; 
	if(matchResult&&!email.match(mailreg)){
		$(".rlf-tips_email").attr("style","display:block");
		$(".rlf-tips_email").text("邮箱格式不正确");
		matchResult=false; 
	} 
	
	if(pwd==""||pwd.length<6){
		$(".rlf-tips_password").attr("style","display:block");
		matchResult=false; 
	}
	
	if(verify==""){
		$(".rlf-tips_code").attr("style","display:block");
		matchResult=false; 
	}
	
	
    if(matchResult==true){
        $(function(){
            $.ajax({
                type: 'POST',
                url:'login.do',
                dataType: 'JSON',
                data:$("#signin-form").serialize(),
                async: false,
                success : function(data){
                    if(data.result==1){
                        self.location='personal.html';
                    }else if(data.result==2){
                    	$(".rlf-tips_email").text("邮箱或密码错误");
                    	$(".rlf-tips_password").text("邮箱或密码错误");
                    	$(".rlf-tips_password").attr("style","display:block");
                    }else if(data.result==3){
                        self.location='verify.html';
                    }else if(data.result==4){
                    	$(".rlf-tips_email").text("邮箱或密码错误");
                    	$(".rlf-tips_password").text("邮箱或密码错误");
                    	$(".rlf-tips_email").attr("style","display:block");
                    }else if(data.result==5){
                    	$(".rlf-tips_code").text("验证码错误");
                    	$(".rlf-tips_code").attr("style","display:block");
                    }
                }
            })
        })
    }

}

function isBlank(obj){
	
		var value=obj.value;
		var doc=document.getElementById(obj.name+"_verify");
		var passed=true;
		if(value==""){
			passed=false;
			doc.innerHTML="*&nbsp;不能为空";
			doc.style.display="block";
		}
		if(passed){
			if(obj.name=="email"){
				var mailreg = /^\w+@\w+(\.\w+)+$/; 
				if(!value.match(mailreg)){ 
					passed=false;
					doc.style.display="block";
					doc.innerHTML="*&nbsp;格式错误";
				} 
			}else if(obj.name=="re_password"){
				var pwd=document.getElementById("reg_password").value; 
				if(value!=pwd){
					passed=false;
					doc.style.display="block";
					doc.innerHTML="*&nbsp;密码不一致";
				}
			}
		}
		if(passed){
			doc.style.display="none";
		}
		return passed;
}

function register(){
	
	var matchResult;
	matchResult=isBlank(document.getElementById("reg_email"));
	matchResult=isBlank(document.getElementById("reg_nickName"));
	matchResult=isBlank(document.getElementById("reg_password"));
	matchResult=isBlank(document.getElementById("reg_re_password"));
	matchResult=isBlank(document.getElementById("reg_verify_code"));
	
	if(matchResult==true){
		$(function(){
			$.ajax({
				type: 'POST',
				url:'register.do',
				dataType: 'JSON',
				data:$("#reg").serialize(),
				async: false,
				success : function(data){
					if(data.result==1){
						self.location='verify.html';
					}else if(data.result==2){
						var doc= document.getElementById("email_verify");
						doc.style.display="block";
						doc.innerHTML="*&nbsp;邮箱已注册";
					}else if(data.result==3){
						$("#verify_code_verify").text("* 验证码错误");
						$("#verify_code_verify").attr("style","float:left;display:block");
					}
				}
			})
		})
	}
}
//跳转到课程详情
function toCourseDetail(courseId){
	//判断用户状态
	$.ajax({
		type: "post", 
		url: MOOC_URL+"/user/isLogin.do", 
		dataType: "json",
		data : {},
		async: false,
     	success: function (data) {
	     	if(data.result=="1"){
	     		//登录状态
	     		window.location=MOOC_URL+"/html/course_detail.html?cid="+courseId;
	     		//window.open(MOOC_URL+"/html/course_detail.html?cid="+courseId,"_blank");
	     	}else{
	     		//非登录状态
	     		$('#js-signin-btn').click();//弹出登录窗口
	     	}
       	}
       	
	});
	
}