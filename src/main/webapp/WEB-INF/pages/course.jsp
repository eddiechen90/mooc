<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="UTF-8">
<title>课程库</title>
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
	<!--课程库-->
	<div class="wrap">
		<div class="container">
			<div class="course-nav nav1">
				<span class="hd">分类</span>
				<div class="bd">
					<ul>
						<c:forEach var="courseCategory" items="${courseCategorys}">
							<li class="course-nav-item"><a href="#"
								onclick="$('.nav1 .course-nav-item').removeClass('on');(this).parentNode.setAttribute('class','course-nav-item on')">${courseCategory.name}</a>
							</li>
						</c:forEach>
					</ul>
				</div>
			</div>

			<script>


            </script>
			<div class="course-nav nav2">
				<span class="hd">方向：</span>
				<div class="bd">
					<ul>
						<c:forEach var="courseType" items="${courseTypes}">
							<li class="course-nav-item"><a href="#"
								onclick="$('.nav2 .course-nav-item').removeClass('on');(this).parentNode.setAttribute('class','course-nav-item on')">${courseType.name}</a>
							</li>
						</c:forEach>
					</ul>
				</div>
			</div>
		</div>
	</div>


	<div id="curriculum">
		<!--热门课程-->
		<div class="container">
			<div class="cursemain">
				<!--<div class="curse-title">热门课程</div>-->
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


	<!--page-->

	<div class="page">
		<ul class="page-nav">
			<li class="previous"><a hrdf="#" class="previous">←</a></li>
			<li class="next"><a hrdf="#" class="next">→</a></li>
		</ul>
	</div>


	<%@ include file="footer.jsp"%>
</body>
</html>