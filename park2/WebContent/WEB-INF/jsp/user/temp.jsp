<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta charset="UTF-8">	
	<title>智能停车场管理系统</title>
<script type="text/javascript">
		//进车
		function predict(){
			var a =document.getElementById(in_park).value();
			
			address = "${pageContext.request.contextPath}/addCar?"+a;  //找车位
			//${Stop_id}
			window.location.href = "address";
		}
		//取车
		function take(){
			var a =document.getElementById(out_park).value();
			address = "${pageContext.request.contextPath}/addCar?"+a;
			window.location.href = "address";
		}
</script>
</head>

<body>
	<header>智能停车场管理系统</header>
	<nav>
		<a href="#"><button>预约</button></a>
		<a href="#"><button>导航</button></a>
		<a href="#"><button>我的</button></a>
	</nav>
	<table algin="center">
		<tr>
			<td><a href="${pageContext.request.contextPath}/"><button name="stop_id" value="1" onclick="predict"><img src="${pageContext.request.contextPath}/images/车位预约.png"></button></a></td>
			
		</tr>
	</table>
	<a href="${pageContext.request.contextPath}/findStop_place">预约</a><span>${full }${success }</span>

	<form action="${pageContext.request.contextPath}/addCare">
		进车：<input type="text" id="car_id" name="car_id"/>
		<input type="submit" value="存车"/><span> ${resorve }</span>
	</form>

	<form action="${pageContext.request.contextPath}/selectCar" >
		取车：<input type="text" id="car_id"  name="car_id"/>
		<button type="submit">取车</button><span>${leave }</span>
	</form>
	
	
	
</body>
</html>