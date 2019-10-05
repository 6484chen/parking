<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
	<meta name="keywords" content="百度地图,百度地图API，百度地图自定义工具，百度地图所见即所得工具" />
	<meta name="description" content="百度地图API自定义地图，帮助用户在可视化操作下生成百度地图" />
	<title>智能停车场管理系统</title>
	<meta name="keywords" content="" />
	<meta name="description" content="" /> 

	<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/vendor/bootstrap/css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/fonts/font-awesome-4.7.0/css/font-awesome.min.css">
	<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/fonts/iconic/css/material-design-iconic-font.min.css">
	<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/css/util.css">
	<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/css/main.css">
	
	<script type="text/javascript" src="http://api.map.baidu.com/api?key=&v=1.1&services=true"></script>
	<style>
	.iw_poi_title {color:#CC5522;font-size:14px;font-weight:bold;overflow:hidden;padding-right:13px;white-space:nowrap}
    .iw_poi_content {font:12px arial,sans-serif;overflow:visible;padding-top:4px;white-space:-moz-pre-wrap;word-wrap:break-word}
		.nav{
			width:400px;
			algin:center;
		}
		.nav ul {
			z-index:2;
			top:0;
			width:400%;
		    list-style-type: none;
		    margin: 0;
		    padding: 0;
		    overflow: hidden;
		    background-color: #333;
		}
		
		li {
		    width:24%;
		    display: inline-block;
		}
		
		li a {
		    display: block;
		    color: white;
		    text-align: center;
		    padding: 14px 16px;
		    text-decoration: none;
		}
		
		li a:hover {
		    background-color: #111;
		}
		li img{
		}
		
		.bbox{
			width:400px;
			height:670px;
			background-color:white;
		}
		#pre{
		 overflow-y:auto
		 }
		 .storage{
		 	margin-bottom:400px;
		 }
		 #car_id{
		 	background:pink;
		 }
		
		</style>
</head>

<body >

	<div class="limiter">
		<div  class="container-login100" style="background-image: url('images/bg-01.jpg');">
		<div style="width:400px; height:700px; overflow: hidden;">
			<div class="nav">
				<ul>
					<li><a href="#pre">预约</a></li>
					<li><a href="#map">导航</a></li>
					<li><a href="#access">存取车</a></li>
					<li><a href="#welcome" target="_blank">我的</a></li>
					
				</ul>
			</div>
			
			<div style="width:400px; height:670px; overflow: hidden;">
				
				<div id="welcome" class="bbox">
					<span>${leave }</span><span> ${resorve }</span><span>${full }${success }</span><span>${add }</span>
				</div>
				<div id="pre" class="bbox">
					<ul>
						<li><a href="${pageContext.request.contextPath}/findStop_place"><img alt="车位" src="${pageContext.request.contextPath}/images/车位预约.png">预约${full }${success }</a></li>
						<li><a href="${pageContext.request.contextPath}/findStop_place"><img alt="车位" src="${pageContext.request.contextPath}/images/车位预约.png">预约${full }${success }</a></li>
						<li><a href="${pageContext.request.contextPath}/findStop_place"><img alt="车位" src="${pageContext.request.contextPath}/images/车位预约.png">预约${full }${success }</a></li>
						<li><a href="${pageContext.request.contextPath}/findStop_place"><img alt="车位" src="${pageContext.request.contextPath}/images/车位预约.png">预约${full }${success }</a></li>
						<li><a href="${pageContext.request.contextPath}/findStop_place"><img alt="车位" src="${pageContext.request.contextPath}/images/车位预约.png">预约${full }${success }</a></li>
						<li><a href="${pageContext.request.contextPath}/findStop_place"><img alt="车位" src="${pageContext.request.contextPath}/images/车位预约.png">预约${full }${success }</a></li>
						<li><a href="${pageContext.request.contextPath}/findStop_place"><img alt="车位" src="${pageContext.request.contextPath}/images/车位预约.png">预约${full }${success }</a></li>
						<li><a href="${pageContext.request.contextPath}/findStop_place"><img alt="车位" src="${pageContext.request.contextPath}/images/车位预约.png">预约${full }${success }</a></li>
						<li><a href="${pageContext.request.contextPath}/findStop_place"><img alt="车位" src="${pageContext.request.contextPath}/images/车位预约.png">预约${full }${success }</a></li>
						<li><a href="${pageContext.request.contextPath}/findStop_place"><img alt="车位" src="${pageContext.request.contextPath}/images/车位预约.png">预约${full }${success }</a></li>
						<li><a href="${pageContext.request.contextPath}/findStop_place"><img alt="车位" src="${pageContext.request.contextPath}/images/车位预约.png">预约${full }${success }</a></li>
						<li><a href="${pageContext.request.contextPath}/findStop_place"><img alt="车位" src="${pageContext.request.contextPath}/images/车位预约.png">预约${full }${success }</a></li>
							
					</ul>
					<ul>
						
						<li><a href="${pageContext.request.contextPath}/findStop_place"><img alt="车位" src="${pageContext.request.contextPath}/images/车位预约.png">预约${full }${success }</a></li>
						<li><a href="${pageContext.request.contextPath}/findStop_place"><img alt="车位" src="${pageContext.request.contextPath}/images/车位预约.png">预约${full }${success }</a></li>
						<li><a href="${pageContext.request.contextPath}/findStop_place"><img alt="车位" src="${pageContext.request.contextPath}/images/车位预约.png">预约${full }${success }</a></li>
						<li><a href="${pageContext.request.contextPath}/findStop_place"><img alt="车位" src="${pageContext.request.contextPath}/images/车位预约.png">预约${full }${success }</a></li>
						<li><a href="${pageContext.request.contextPath}/findStop_place"><img alt="车位" src="${pageContext.request.contextPath}/images/车位预约.png">预约${full }${success }</a></li>
						<li><a href="${pageContext.request.contextPath}/findStop_place"><img alt="车位" src="${pageContext.request.contextPath}/images/车位预约.png">预约${full }${success }</a></li>
						<li><a href="${pageContext.request.contextPath}/findStop_place"><img alt="车位" src="${pageContext.request.contextPath}/images/车位预约.png">预约${full }${success }</a></li>
						<li><a href="${pageContext.request.contextPath}/findStop_place"><img alt="车位" src="${pageContext.request.contextPath}/images/车位预约.png">预约${full }${success }</a></li>
						<li><a href="${pageContext.request.contextPath}/findStop_place"><img alt="车位" src="${pageContext.request.contextPath}/images/车位预约.png">预约${full }${success }</a></li>
						<li><a href="${pageContext.request.contextPath}/findStop_place"><img alt="车位" src="${pageContext.request.contextPath}/images/车位预约.png">预约${full }${success }</a></li>
						<li><a href="${pageContext.request.contextPath}/findStop_place"><img alt="车位" src="${pageContext.request.contextPath}/images/车位预约.png">预约${full }${success }</a></li>
						<li><a href="${pageContext.request.contextPath}/findStop_place"><img alt="车位" src="${pageContext.request.contextPath}/images/车位预约.png">预约${full }${success }</a></li>	
					</ul>
					<ul>
						
						<li><a href="${pageContext.request.contextPath}/findStop_place"><img alt="车位" src="${pageContext.request.contextPath}/images/车位预约.png">预约${full }${success }</a></li>
						<li><a href="${pageContext.request.contextPath}/findStop_place"><img alt="车位" src="${pageContext.request.contextPath}/images/车位预约.png">预约${full }${success }</a></li>
						<li><a href="${pageContext.request.contextPath}/findStop_place"><img alt="车位" src="${pageContext.request.contextPath}/images/车位预约.png">预约${full }${success }</a></li>
						<li><a href="${pageContext.request.contextPath}/findStop_place"><img alt="车位" src="${pageContext.request.contextPath}/images/车位预约.png">预约${full }${success }</a></li>
						<li><a href="${pageContext.request.contextPath}/findStop_place"><img alt="车位" src="${pageContext.request.contextPath}/images/车位预约.png">预约${full }${success }</a></li>
						<li><a href="${pageContext.request.contextPath}/findStop_place"><img alt="车位" src="${pageContext.request.contextPath}/images/车位预约.png">预约${full }${success }</a></li>
						<li><a href="${pageContext.request.contextPath}/findStop_place"><img alt="车位" src="${pageContext.request.contextPath}/images/车位预约.png">预约${full }${success }</a></li>
						<li><a href="${pageContext.request.contextPath}/findStop_place"><img alt="车位" src="${pageContext.request.contextPath}/images/车位预约.png">预约${full }${success }</a></li>
						<li><a href="${pageContext.request.contextPath}/findStop_place"><img alt="车位" src="${pageContext.request.contextPath}/images/车位预约.png">预约${full }${success }</a></li>
						<li><a href="${pageContext.request.contextPath}/findStop_place"><img alt="车位" src="${pageContext.request.contextPath}/images/车位预约.png">预约${full }${success }</a></li>
						<li><a href="${pageContext.request.contextPath}/findStop_place"><img alt="车位" src="${pageContext.request.contextPath}/images/车位预约.png">预约${full }${success }</a></li>
						<li><a href="${pageContext.request.contextPath}/findStop_place"><img alt="车位" src="${pageContext.request.contextPath}/images/车位预约.png">预约${full }${success }</a></li>	
					</ul>
					<ul>
						
						<li><a href="${pageContext.request.contextPath}/findStop_place"><img alt="车位" src="${pageContext.request.contextPath}/images/车位预约.png">预约${full }${success }</a></li>
						<li><a href="${pageContext.request.contextPath}/findStop_place"><img alt="车位" src="${pageContext.request.contextPath}/images/车位预约.png">预约${full }${success }</a></li>
						<li><a href="${pageContext.request.contextPath}/findStop_place"><img alt="车位" src="${pageContext.request.contextPath}/images/车位预约.png">预约${full }${success }</a></li>
						<li><a href="${pageContext.request.contextPath}/findStop_place"><img alt="车位" src="${pageContext.request.contextPath}/images/车位预约.png">预约${full }${success }</a></li>
						<li><a href="${pageContext.request.contextPath}/findStop_place"><img alt="车位" src="${pageContext.request.contextPath}/images/车位预约.png">预约${full }${success }</a></li>
						<li><a href="${pageContext.request.contextPath}/findStop_place"><img alt="车位" src="${pageContext.request.contextPath}/images/车位预约.png">预约${full }${success }</a></li>
						<li><a href="${pageContext.request.contextPath}/findStop_place"><img alt="车位" src="${pageContext.request.contextPath}/images/车位预约.png">预约${full }${success }</a></li>
						<li><a href="${pageContext.request.contextPath}/findStop_place"><img alt="车位" src="${pageContext.request.contextPath}/images/车位预约.png">预约${full }${success }</a></li>
						<li><a href="${pageContext.request.contextPath}/findStop_place"><img alt="车位" src="${pageContext.request.contextPath}/images/车位预约.png">预约${full }${success }</a></li>
						<li><a href="${pageContext.request.contextPath}/findStop_place"><img alt="车位" src="${pageContext.request.contextPath}/images/车位预约.png">预约${full }${success }</a></li>
						<li><a href="${pageContext.request.contextPath}/findStop_place"><img alt="车位" src="${pageContext.request.contextPath}/images/车位预约.png">预约${full }${success }</a></li>
						<li><a href="${pageContext.request.contextPath}/findStop_place"><img alt="车位" src="${pageContext.request.contextPath}/images/车位预约.png">预约${full }${success }</a></li>	
					</ul>
				</div>
				
				
				<div id="access"  class="bbxo" >
					<div  style="background-color:white" class="storage">
						<br /> <br /><br /><br /><br />
						<form action="${pageContext.request.contextPath}/addCare">
							进车：<input type="text" id="car_id" name="car_id"/>
							<input type="submit" value="存车"/>
						</form>
						<br/>
						<form action="${pageContext.request.contextPath}/selectCar" >
							取车：<input type="text" id="car_id"  name="car_id" />
							<input type="submit" value="取车"/>
						</form>
						<br /><br /><br /><br /><br />
					
					<div id="butong_net_left" style="overflow:hidden;width:400px;height:400px">
						<table cellpadding="0" cellspacing="0" border="0">
						<tr>
							<td id="butong_net_left1" valign="top" align="center">
							<table cellpadding="2" cellspacing="0" border="0">
								<tr align="center">
									<td><img src="${pageContext.request.contextPath}/images/car/0.jpg" width="390px" height="400px" ></td>
									<td><img src="${pageContext.request.contextPath}/images/car/1.jpg" width="400px" height="400px"></td>
									<td><img src="${pageContext.request.contextPath}/images/car/2.jpg" width="400px" height="400px"></td>
									<td><img src="${pageContext.request.contextPath}/images/car/4.jpg" width="400px" height="400px"></td>
									<td><img src="${pageContext.request.contextPath}/images/car/5.jpg" width="400px" height="400px"></td>
								</tr>
							</table>
							</td>
							<td id="butong_net_left2" valign="top"></td>
						</tr>
						</table>
					</div>
				</div>
				</div>
				<div style="width:400px;height:670px;border:#ccc solid 1px;" id="map"></div>
			<div>
			</div>
		</div>
	</div>

	<script src="vendor/jquery/jquery-3.2.1.min.js"></script>
	<script src="js/main.js"></script>
	<script type="text/javascript">
    //创建和初始化地图函数：
    function initMap(){
        createMap();//创建地图
        setMapEvent();//设置地图事件
        addMapControl();//向地图添加控件
    }
    
    //创建地图函数：
    function createMap(){
        var map = new BMap.Map("map");//在百度地图容器中创建一个地图
        var point = new BMap.Point(112.535124,37.883826);//定义一个中心点坐标
        map.centerAndZoom(point,12);//设定地图的中心点和坐标并将地图显示在地图容器中
        window.map = map;//将map变量存储在全局
    }
    
    //地图事件设置函数：
    function setMapEvent(){
        map.enableDragging();//启用地图拖拽事件，默认启用(可不写)
        map.enableScrollWheelZoom();//启用地图滚轮放大缩小
        map.enableDoubleClickZoom();//启用鼠标双击放大，默认启用(可不写)
        map.enableKeyboard();//启用键盘上下左右键移动地图
    }
    000
    //地图控件添加函数：
    function addMapControl(){
        //向地图中添加缩放控件
	var ctrl_nav = new BMap.NavigationControl({anchor:BMAP_ANCHOR_TOP_LEFT,type:BMAP_NAVIGATION_CONTROL_LARGE});
	map.addControl(ctrl_nav);
        //向地图中添加缩略图控件
	var ctrl_ove = new BMap.OverviewMapControl({anchor:BMAP_ANCHOR_BOTTOM_RIGHT,isOpen:1});
	map.addControl(ctrl_ove);
        //向地图中添加比例尺控件
	var ctrl_sca = new BMap.ScaleControl({anchor:BMAP_ANCHOR_BOTTOM_LEFT});
	map.addControl(ctrl_sca);
    }
    //返回地图两点之间的距离
 
    initMap();//创建和初始化地图
	</script>
	<script>
			var speed=15//速度数值越大速度越慢
			butong_net_left2.innerHTML=butong_net_left1.innerHTML
			function Marquee3(){
			if(butong_net_left2.offsetWidth-butong_net_left.scrollLeft<=0)
			butong_net_left.scrollLeft-=butong_net_left1.offsetWidth
			else{
			butong_net_left.scrollLeft++
			}
			}
			var MyMar3=setInterval(Marquee3,speed)
			butong_net_left.onmouseover=function() {clearInterval(MyMar3)}
			butong_net_left.onmouseout=function() {MyMar3=setInterval(Marquee3,speed)}
	</script>
</body>

</html>







