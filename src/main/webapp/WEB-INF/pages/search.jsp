<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="UTF-8">
<title>慕客网</title>
<!--link是单标签，script是双标签-->
<link type="image/x-icon" href="images/favicon.jpg" rel="icon" />
<link href="css/index.css" rel="stylesheet" type="text/css" />
<script src="js/jquery-1.7.2.min.js"></script>
<script src="js/slider.js"></script>
<script src="js/curse.js"></script>
<script type="text/javascript" src="js/dz.js"></script>
<style>
.search_container {
	min-width: 1000px;
	height: auto;
}

.search_frame {
	margin: 50px auto;
	width: 600px;
	/*border:1px solid red;*/
	padding: 10px;
}

.search_line {
	height: 48px;
	width: 580px;
	background-color: #eeeeee;
}

.search_icon {
	width: 20px;
	height: 20px;
	margin-top: 16px;
	margin-left: 15px;
	background: url(images/icons.png) no-repeat;
	float: left;
}

.search_input {
	width: 360px;
	height: 48px;
	float: left;
	margin-left: 10px;

	/*border:1px solid red;*/
}

.search_input input {
	width: 360px;
	height: 48px;
	font-size: 16px;
	color: #999999;
	font-weight: 100;
	border: none;
	background-color: #eeeeee;
}

.search_btn {
	width: 120px;
	height: 48px;
	display: inline-block;
	float: right;
}

.search_btn input {
	width: 120px;
	height: 48px;
	outline: none;
	background-color: #51a4f4;
	border: none;
	color: #fff;
	cursor: pointer;
}

.key_line {
	width: 580px;
	height: 30px;
	margin-top: 8px;
}

.key_line p a {
	float: left;
}

.key_words {
	height: 30px;
	width: 380px;
	float: left;
	display: inline-block;
	/*position:relative;*/
	/*top:-10px;*/
}

.search-result1{
	width:100%;
	height:50px;
	background:#fff;
	line-height:50px;
	font-size:14px;
	color:#666;
	}
.search-result1 p{
	padding-left:20px;
	}
.font-blue{
	color:#4a97e0;
	}
.search-result2{
	width:100%;
	height:auto;
	margin-bottom:20px;
	}
.search-resultx{
	width:100%;
	height:180px;
	padding:20px 0;
	border-bottom:1px dashed #d9d9d9;
	}
.search-resultx:hover{
	background:#f9f9f9;
	}
.search-resultx1{
	float:left;
	width:241px;
	height:100%;
	}
.search-resultx2{
	float:left;
	width:466px;
	height:100%;
	margin-left:20px;
	}
.search-resuletx-tle{
	font-size:18px;
	font-weight:bold;
	}
.search-resuletx-tle2{
	font-size:14px;
	color:#666;
	margin:10px 0 30px 0;
	}
.search-resultx2 p{
	font-size:14px;
	color:#666;
	line-height:22px;
	}
.search-resultx3{
	float:left;
	width:142px;
	height:98px;
	padding:41px 0 41px 116px;
	}
.into,.intox{
	width:140px;
	height:36px;
	font-size:14px;
	color:#666;
	text-align:center;
	line-height:34px;
	background:#fff;
	border-radius:36px;
	border:1px solid #d9d9d9;
	cursor:pointer;
	}
.into:hover,.intox:hover{
	color:#fff;
	background:#4a97e0;
	}
.intox{
	margin-top:20px;
	}
.load{
	width:100%;
	height:20px;
	font-size:16px;
	text-align:center;
	margin:20px 0 80px 0;
	}
.load a{
	color:#4a97e0;
	cursor:pointer;
	}
</style>
</head>
<body>
	<%@ include file="header.jsp"%>

	<div class="search_container">
		<div class="search_frame">
			<div class="search_line">
				<div class="search_icon"></div>
				<div class="search_input">
					<input type="text" placeholder="html"/>
				</div>
				<div class="search_btn">
					<input type="submit" value="搜索" />
				</div>
			</div>
			<div class="key_line">
				<div style="width: 80px; height: 30px; float: left; color: #999999">
					<p>热门搜索：</p>
					&nbsp;
				</div>
				<div class="key_words">
					<a href="#">AngularJS</a>&nbsp; <a href="#">mysql</a>&nbsp; <a
						href="#">java</a>&nbsp; <a href="#">javascript</a>&nbsp; <a
						href="#">andriod</a>&nbsp;
				</div>
			</div>
		</div>
	</div>
	
	
	<div class="container">
	<div class="search-result1">
    	<p>根据您搜索的内容“<span class="font-blue" id="show_search_content"></span>”，共为您找到相关的结果“<span class="font-blue" id="show_search_num">0</span>”个</p>
    </div>
    <div class="search-result2" id="show_search_result">
    
    
    	<!-- <div class="search-resultx">
        	<div class="search-resultx1"><img src="images/curse1.jpg" width="241" height="180"></div>	
            <div class="search-resultx2">
            	<h2 class="search-resuletx-tle">软件测试</h2>
                <h3 class="search-resuletx-tle2">LoadRunner入门</h3>
                <p>讲师：董政</p>
                <p>课时：4课时</p>
                <p>人数：<span class="font-red">234567</span>人在学</p>
                <p>简介： 从初学者到老司机，<span class="font-blue">HTML</span>、CSS、JS、jQuery基础专题是你走进前端世界的不二选择！</p>
            </div>
            <div class="search-resultx3">
            	<input type="button" value="进入课程" class="into">
                <input type="button" value="下载资料" class="intox">
            </div>
        </div> -->
        
    </div><!--search-result2-->
    <div class="load" id="more"><a href="javascript:;" onclick="searchMore();">更多搜索结果</a></div>
	</div>

	<%@ include file="footer.jsp"%>
</body>
</html>