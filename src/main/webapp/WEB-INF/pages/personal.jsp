<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>慕课网</title>
	<link type="image/x-icon" rel="shortcut icon" href="images/favicon.jpg">
	<link href="css/index.css" rel="stylesheet" type="text/css"/>
	<script type="text/javascript" src="js/jquery-1.7.2.min.js"></script>
	<script type="text/javascript" src="js/slider.js"></script>
	<script type="text/javascript" src="js/curse.js"></script>
	<script type="text/javascript" src="js/dz.js"></script>
<script>
	var pageIndex=1;//默认为显示第1页
	var pageSize=4;//默认每页显示4个
	$(function (){
		showUserinfo();//显示用户信息
		showBrowseRecord();//显示用户浏览记录
	});
	//显示用户信息
	function showUserinfo(){
		$.ajax({
			type: "post", 
			url: MOOC_URL+"/user/getUserinfo.do", 
			dataType: "json",
			data : {},
	     	success: function (data) {
		     	if(data.result=="1"){
		     		//登录状态
					$("#show_nickname").text(data.nickname);
		     	}else{
		     		//非登录状态
		     		window.location=MOOC_URL+"/html/index.html";
		     	}
	       	}
		});
	}
	//显示用户浏览记录
	function showBrowseRecord(){
		$.ajax({
			type: "post", 
			url: MOOC_URL+"/user/getBrowseCourse.do", 
			dataType: "json",
			data : {"pageIndex":pageIndex,"pageSize":pageSize},
	     	success: function (data) {
	
	     		if(data.result=="1"){
	     			if(pageIndex==1){
		     			$("#pre").attr("style","display:none");
		     		}else{
		     			$("#pre").removeAttr("style");
		     		}
		     		if(pageIndex>=data.totalPage){
		     			$("#next").attr("style","display:none");
		     		}else{
		     			$("#next").removeAttr("style");
		     		}
		     		
		     		$("#browse_course").html("");
			     	if(data.list.length>0){
				     	var str = "";
			     		for(var i=0;i<data.list.length;i++){
			     			var course=data.list[i];
			     			str+=
			     			"<li>"+
			                "	<a href=\"javascript:;\" onclick=\"toCourseDetail("+course.id+");\">"+
			                "   	<img width=\"241\" height=\"180\" rel=\"nofollow\" src=\"images/"+course.imgPath+"\" style=\"display:inline;\">"+
			                "   </a>"+
			                "	<div class=\"info\">"+
			             //   "       <h4 class=\"info-title\">软件测试</h4>"+
			                "       <h5 class=\"info-con\">"+course.name+"</h5>"+
			                "   </div>"+
			                "</li>";
			     		}
			     		$("#browse_course").html(str);
					}
	     		}else{
	     			$("#pre").attr("style","display:none");
	     			$("#next").attr("style","display:none");
	     			$("#browse_course").attr("style","display:none");
	     			$("#no_browse_course").removeAttr("style");
	     		}
	     		
	     		
	     		
	       	}
		});
	}
	//下一页
	function nextPage(){
		pageIndex++;//页码加1
		showBrowseRecord();//重新加载用户浏览记录
	}
	//上一页
	function prePage(){
		pageIndex--;//页码减1
		showBrowseRecord();//重新加载用户浏览记录
	}
</script>
</head>
<body>

<%@ include file="header.jsp"%>

<!--personal start-->
<div class="personal">
	<div class="container">
    	<div class="img"><img src="images/portrait.png" width="90" height="90"></div>
        <div class="img-title">
        	<h4 id="show_nickname"></h4>
            <!-- <h5>观看次数12</h5> -->
        </div>
    </div>
</div>
<div class="personal-content">
	<div class="personal-content-tle">
    	<div class="item item-active">观看记录</div>
        <div class="item">趣味游戏</div>
    </div>
    <div class="container" >
    	<div class="record personal-active" id="">
        	<ul class="curse-content curse-contentx" id="browse_course">
            	
            	<!-- <li>
                	<a href="#" target="_blank">
                    	<img width="241" height="180" rel="nofollow" src="images/curse1.jpg" style="display:inline;">
                    </a>
                	<div class="info">
                        <h4 class="info-title">软件测试</h4>
                        <h5 class="info-con">LoadRunner入门</h5>
                    </div>
                </li> -->
                
            </ul>
            <div id="no_browse_course" class="blank"  style="display:none;">您还没有观看任何课程哦！<a href="course.html" style="color:red">去看看&gt;&gt;</a></div>
            <div class="page">
                <ul class="page-nav">
                    <li class="previous" id="pre">
                        <a href="javascript:;" class="previous" onclick="prePage();">←</a>
                    </li>
                    <li class="next" id="next">
                        <a href="javascript:;" class="next" onclick="nextPage();">←</a>
                    </li>
                </ul>
            </div>
        </div>
        <!-- <div class="record">
        	<ul class="curse-content curse-contentx">
            	<li>
                	<a href="#" target="_blank">
                    	<img width="241" height="180" rel="nofollow" src="images/game.jpg" style="display:inline;">
                    </a>
                	<div class="info">
                        <h4 class="info-title">软件测试</h4>
                        <h5 class="info-con">LoadRunner入门</h5>
                    </div>
                </li>
            </ul>
        </div> -->
        	
    </div>
</div>
<!--footer start-->

<%@ include file="footer.jsp"%>

<!--footer end-->
</body>
</html>
