<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>

<!--导航条-->
<div id="header">
	<div class="container-fluid">
		<!--logo区域-->
		<a href="index.html" title="首页" class="logo"><img
			src="images/logo.png"></a>
		<!--导航区域-->
		<ul class="nav-hd">
			<li id="nav-index" class="on"><a href="index.html">首页</a></li>
			<li><a href="course.html">课程库</a></li>
			<li><a href="#">线下课程</a></li>
		</ul>
		<!--搜索区域-->
		<div class="search-hd">
			<form action="search" method="post" id="searchForm">
				<div class="search-select">
					<input type="search" class="search-val" placeholder="请输入您想学习的课程"
						name="keywords" /> <a href="search.html" class="search-hd-btn"><i
						class="icons icon-search"></i></a>
				</div>
			</form>
		</div>
		<!--登陆、注册区域-->
		
		<c:if test="${user_name==null}">
			<div class="login-area">
				<a href="javascript:;" id="js-signin-btn">登陆</a>&nbsp;|&nbsp;<a
					href="register.html" id="js-signup-btn">注册</a>
			</div>
		 </c:if>

		<!--q  -->
		
		<c:if test="${user_name!=null}">
			<div class="login-area">
				${user_name}
			</div>
						<div class="login-later">
	                <a href="personal.html" class="user" id="user_nickname"></a>
	                <ul class="user-menu">
	                    <li>
	                    	<!-- onclick="to_personal();" -->
	                        <a href="personal.html" >
	                            <i class="icons icon-user"></i>
	                            <span class="user-menu-tle">个人中心</span>
	                        </a>
	                    </li>
	                    <li>
	                        <!-- onclick="to_personal_code();" -->
	                        <a href="personal_code.html" >
	                            <i class="icons icon-code"></i>
	                            <span class="user-menu-tle">账户安全</span>
	                        </a>
	                    </li>
	                    <li>
	                    <!-- onclick="logout();" -->
	                        <a href="logout.do" >
	                            <i class="icons icon-quit"></i>
	                            <span class="user-menu-tle">安全退出</span>
	                        </a>
	                    </li>
	                </ul>
	            </div>
		</c:if>

	</div>
</div>

<!--登陆、注册模态框-->
<div id="signin" class="rl-modal in" style="display: none">
	<div class="rl-modal-header">
		<h1>
			<span class="active-title">登陆</span> <span class=""
				onclick="window.open('register.html','_self');">注册</span>
		</h1>
		<button class="icons icon-close"></button>
	</div>
	<div class="rl-modal-body">
		<form id="signin-form" method="post" action="login.do">
			<div class="rlf-group">
				<input type="text" id="email" name="email" maxlength="37" class="ipt"
					placeholder="请输入注册的邮箱" />
				<div class="tip_c" style="width: 300px; height: 20px;">
					<p class="rlf-tips rlf-tips_email" data-error-hint="请输入正确的邮箱"
						style="display: none">请输入正确的邮箱</p>
				</div>
			</div>
			<div class="rlf-group">
				<input type="password" id="password" name="password" maxlength="16" class="ipt"
					placeholder="6-16位密码，区分大小写，不能用空格" />
				<div class="tip_c" style="width: 300px; height: 20px;">
					<p class="rlf-tips rlf-tips_password" data-error-hint="请输入6到16位密码，区分大小写，不能用空格"
						style="display: none">请输入6到16位密码，区分大小写，不能用空格</p>
				</div>
			</div>
			<div class="rlf-group">
				<input type="text" name="verify" id="verify" class="ipt ipt-verify"
					maxlength="4" placeholder="请输入验证码" />
				<div class="yzm">
					<img onclick="$(this).attr('src','code/'+new Date())" src="code/yzm.png"/>
				</div>
				<div class="tip_c" style="width: 300px; height: 20px;">
					<p class="rlf-tips rlf-tips_code" data-error-hint="验证码错误" style="display: none">验证码不能为空</p>
				</div>
			</div>
			<div class="rlf-group">
				<input type="button" onclick="login();" value="登陆" class="btn-blue" />
			</div>
		</form>
	</div>
</div>
<div class="modal-backdrop" style="display: none"></div>