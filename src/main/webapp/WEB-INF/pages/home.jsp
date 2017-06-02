<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>慕课网</title>
<link type="image/x-icon" href="images/favicon.jpg" rel="icon" />
<link href="css/index.css" rel="stylesheet" type="text/css" />
<script src="js/jquery-1.7.2.min.js"></script>
<script src="js/slider.js"></script>
<script src="js/curse.js"></script>
<script src="js/dz.js"></script>
</head>
<body>
	<%@ include file="header.jsp"%>

	<!--轮播图片-->
	<div id="banner_tabs" class="flexslider">
		<!--轮播的图片列表-->
		<ul class="slides">
			<li><a target="_blank"> <img width="1920" height="380px"
					style="background: url(images/banner.jpg) no-repeat center">
			</a></li>
			<li><a target="_blank"> <img width="1920" height="380px"
					style="background: url(images/banner1.jpg) no-repeat center">
			</a></li>
			<li><a target="_blank"> <img width="1920" height="380px"
					style="background: url(images/banner2.jpg) no-repeat center">
			</a></li>
		</ul>
		<!--前后页翻页-->
		<ul class="flex-direction-nav">
			<li><a class="flex-prev" href="javascript:;">Previous</a></li>
			<li><a class="flex-next" href="javascript:;">Next</a></li>
		</ul>
		<!--无序控制列表（三个圆点）-->
		<ol id="bannerCtrl" class="flex-control-nav flex-control-paging">
			<li><a></a></li>
			<li><a></a></li>
			<li><a></a></li>
		</ol>
	</div>

	<!--执行javascript的代码需要声明好的<script>标记当中-->
	<script>
        <!--当浏览器把页面加载完之后执行该方法-->
        $(function(){
            var bannerSlider=new Slider($("#banner_tabs"),{
                time:3000,
                event:"hover",
                auto:true,
                controller:$("#bannerCtrl"),
                activeControllerCls:"active",
            });
            $("#banner_tabs .flex-prev").click(function(){
                bannerSlider.prev();
            });
            $('#banner_tabs .flex-next').click(function(){
                bannerSlider.next();
            });
        });

    </script>
	<!--课程部分 curriculum-->
	<div id="curriculum">
		<!--热门课程-->
		<div class="container">
			<div class="cursemain">
				<div class="curse-title">热门课程</div>
				<ul class="curse-content curse-contentx">
					<c:forEach var="course" items="${courses}">
					<li>
						<div class="shade"></div>
						<div class="cover pos">
							<a href="course_detail.html" target="_blank">
								<div class="pic">
									<h2>24567人在学</h2>
									<h3>讲师：董正&nbsp;&nbsp;课时：4小时</h3>

								</div> <img src="images/${course.img}" width="241" height="180"
								style="display: inline">
							</a>
						</div>
						<div class="info">
							<h4 class="info-title">${course.title}</h4>
							<h5 class="info-con">${course.description}</h5>
						</div>
					</li>
					</c:forEach>
					
				</ul>
			</div>
		</div>
		<!--最新课程-->
		<div class="container">
			<div class="cursemain">
				<div class="curse-title">最新课程</div>
				<ul class="curse-content curse-contentx">
					<li>
						<div class="shade"></div>
						<div class="cover pos">
							<a href="course_detail.html" target="_blank">
								<div class="pic">
									<h2>24567人在学</h2>
									<h3>讲师：董正&nbsp;&nbsp;课时：4小时</h3>

								</div> <img src="images/curse9.jpg" width="241" height="180"
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

								</div> <img src="images/curse10.jpg" width="241" height="180"
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

								</div> <img src="images/curse11.jpg" width="241" height="180"
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

								</div> <img src="images/curse12.jpg" width="241" height="180"
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

								</div> <img src="images/curse13.jpg" width="241" height="180"
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

								</div> <img src="images/curse14.jpg" width="241" height="180"
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

								</div> <img src="images/curse15.jpg" width="241" height="180"
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

								</div> <img src="images/curse16.jpg" width="241" height="180"
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
		<!--推荐课程-->
		<div class="container">
			<div class="cursemain">
				<div class="curse-title">推荐课程</div>
				<ul class="curse-content curse-contentx">
					<li class="big">
						<div class="shade"></div>
						<div class="cover pos">
							<a href="#" target="_blank"> <img width="494" height="424"
								src="images/cursex.jpg" style="display: inline";>
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

								</div> <img src="images/curse17.jpg" width="241" height="180"
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

								</div> <img src="images/curse18.jpg" width="241" height="180"
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

								</div> <img src="images/curse19.jpg" width="241" height="180"
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
								</div> <img src="images/curse16.jpg" width="241" height="180"
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