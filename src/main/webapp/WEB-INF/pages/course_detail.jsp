<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="UTF-8">
<title>课程详情</title>
<!--link是单标签，script是双标签-->
<link type="image/x-icon" href="images/favicon.jpg" rel="icon" />
<link href="css/index.css" rel="stylesheet" type="text/css" />
<script src="js/jquery-1.7.2.min.js"></script>
<script src="js/slider.js"></script>
<script src="js/curse.js"></script>
<script src="js/dz.js"></script>
</head>
<body>
	<%@ include file="header.jsp"%>

	<!--课程详情-->
	<div class="container">
		<div id="course_detail">
			<div class="video">
				<div class="video-title">
					<h3 class="video-title1">软件测试</h3>
					<h4 class="video-title2">LoadRunner 入门</h4>
					<p class="video-title3">
						播放了<span class="font-red">250</span>次
					</p>
				</div>
				<div class="video-content">
					<video src="video/1.mp4" style="width:700px;height:420px;"
						controls="controls"></video>
				</div>
			</div>
			<div class="video-list">
				<div class="video-list-title">视频目录</div>
				<ul class="video-list-content">
					<li class="current"><a href="javascript:"> <i
							class="icon icon-squre"></i> <span class="video-list-title1">用户管理</span>
					</a></li>
					<li class="current"><a href="javascript:"> <i
							class="icon icon-squre"></i> <span class="video-list-title1">用户管理</span>
					</a></li>
					<li class="current"><a href="javascript:"> <i
							class="icon icon-squre"></i> <span class="video-list-title1">用户管理</span>
					</a></li>
				</ul>
			</div>
		</div>
	</div>
	<!--相关课程-->
	<div id="curriculum">
		<!--相关-->
		<div class="container">
			<div class="curse-title">相关课程</div>
			<div class="cursemain">
				<ul class="curse-content curse-contentx">
					<li>
						<div class="shade"></div>
						<div class="cover pos">
							<a href="course_detail.html" target="_blank">
								<div class="pic">
									<h2>24567人在学</h2>
									<h3>讲师：董正&nbsp;&nbsp;课时：4小时</h3>

								</div> <img src="images/curse1.jpg" width="241" height="180"
								style="display: inline">
							</a>
						</div>
						<div class="info">
							<h4 class="info-title">软件测试</h4>
							<h5 class="info-con">LoadRunner入门</h5>
						</div>
					</li>
					<li>
						<div class="shade"></div>
						<div class="cover pos">
							<a href="course_detail.html" target="_blank">
								<div class="pic">
									<h2>24567人在学</h2>
									<h3>讲师：董正&nbsp;&nbsp;课时：4小时</h3>

								</div> <img src="images/curse2.jpg" width="241" height="180"
								style="display: inline">
							</a>
						</div>
						<div class="info">
							<h4 class="info-title">软件测试</h4>
							<h5 class="info-con">LoadRunner入门</h5>
						</div>
					</li>
					<li>
						<div class="shade"></div>
						<div class="cover pos">
							<a href="course_detail.html" target="_blank">
								<div class="pic">
									<h2>24567人在学</h2>
									<h3>讲师：董正&nbsp;&nbsp;课时：4小时</h3>

								</div> <img src="images/curse3.jpg" width="241" height="180"
								style="display: inline">
							</a>
						</div>
						<div class="info">
							<h4 class="info-title">软件测试</h4>
							<h5 class="info-con">LoadRunner入门</h5>
						</div>
					</li>
					<li>
						<div class="shade"></div>
						<div class="cover pos">
							<a href="course_detail.html" target="_blank">
								<div class="pic">
									<h2>24567人在学</h2>
									<h3>讲师：董正&nbsp;&nbsp;课时：4小时</h3>

								</div> <img src="images/curse4.jpg" width="241" height="180"
								style="display: inline">
							</a>
						</div>
						<div class="info">
							<h4 class="info-title">软件测试</h4>
							<h5 class="info-con">LoadRunner入门</h5>
						</div>
					</li>
					<li>
						<div class="shade"></div>
						<div class="cover pos">
							<a href="course_detail.html" target="_blank">
								<div class="pic">
									<h2>24567人在学</h2>
									<h3>讲师：董正&nbsp;&nbsp;课时：4小时</h3>

								</div> <img src="images/curse5.jpg" width="241" height="180"
								style="display: inline">
							</a>
						</div>
						<div class="info">
							<h4 class="info-title">软件测试</h4>
							<h5 class="info-con">LoadRunner入门</h5>
						</div>
					</li>
					<li>
						<div class="shade"></div>
						<div class="cover pos">
							<a href="course_detail.html" target="_blank">
								<div class="pic">
									<h2>24567人在学</h2>
									<h3>讲师：董正&nbsp;&nbsp;课时：4小时</h3>

								</div> <img src="images/curse6.jpg" width="241" height="180"
								style="display: inline">
							</a>
						</div>
						<div class="info">
							<h4 class="info-title">软件测试</h4>
							<h5 class="info-con">LoadRunner入门</h5>
						</div>
					</li>
					<li>
						<div class="shade"></div>
						<div class="cover pos">
							<a href="course_detail.html" target="_blank">
								<div class="pic">
									<h2>24567人在学</h2>
									<h3>讲师：董正&nbsp;&nbsp;课时：4小时</h3>

								</div> <img src="images/curse7.jpg" width="241" height="180"
								style="display: inline">
							</a>
						</div>
						<div class="info">
							<h4 class="info-title">软件测试</h4>
							<h5 class="info-con">LoadRunner入门</h5>
						</div>
					</li>
					<li>
						<div class="shade"></div>
						<div class="cover pos">
							<a href="course_detail.html" target="_blank">
								<div class="pic">
									<h2>24567人在学</h2>
									<h3>讲师：董正&nbsp;&nbsp;课时：4小时</h3>

								</div> <img src="images/curse8.jpg" width="241" height="180"
								style="display: inline">
							</a>
						</div>
						<div class="info">
							<h4 class="info-title">软件测试</h4>
							<h5 class="info-con">LoadRunner入门</h5>
						</div>
					</li>

				</ul>
			</div>
		</div>
	</div>

	<%@ include file="footer.jsp"%>
</body>
</html>