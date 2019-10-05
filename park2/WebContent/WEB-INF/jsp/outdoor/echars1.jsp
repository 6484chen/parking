<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="${pageContext.request.contextPath }/js/echarts.js"></script>
<script src="${pageContext.request.contextPath }/js/jquery-3.2.1.min.js"></script>
<script src="${pageContext.request.contextPath }/js/echarts.min.js"></script>
</head>
<body>
	<script type="text/javascript">
	function test(){
	var myChart = echarts.init(document.getElementById('main'));
	// 显示标题，图例和空的坐标轴
	myChart.setOption({
		title : {
			text : '时长'
		},
		tooltip : {},
		legend : {
			data : [ '时长' ]
		},
		 toolbox: {
	            show: true,
	            feature: {
	                mark: {show: false},
	                dataView: {show: true, readOnly: true},  //数据不可修改
	                magicType: {
	                    show: true,
	                    type: ['bar', 'line','scatter'],    //图例的转换
	           
	                },
	                restore: {show: true},
	                saveAsImage: {show: true}
	            }
	        },
		xAxis : {
			data : []
		},
		yAxis : {},
		series : [ {
			name : '时长',
			type : 'line',
			data : []
		} ]
	});
	myChart.showLoading();
	var names = []; //类别数组（实际用来盛放X轴坐标值）
	var longs = []; //销量数组（实际用来盛放Y坐标值）
	$.ajax({
        type: "post",
        async: true,
        url: '${pageContext.request.contextPath}/selectLogByCar',
        data: [],
        dataType: "json",
        
        success : function(result) {
			//请求成功时执行该函数内容，result即为服务器返回的json对象
			if (result) {
				for (var i = 0; i < result.length; i++) {
					
					names.push(result[i].car_id); //挨个取出类别并填入类别数组
					
				}
				console.log('names: ', names);
				for (var i = 0; i < result.length; i++) {
					longs.push(result[i].long_time); //挨个取出销量并填入销量数组
				}
				console.log('longs: ', longs);
				
				myChart.setOption({ 
					 xAxis : {
						data : names      
					},
					yAxis: {}, 
					series : [ {
						name : '时长',
						data : longs
					} ]
				});
				myChart.hideLoading();
			}

		},
    });
	//myChart.setOption(option)
	}
	</script>


	<div id="main" style="width: 600px; height: 400px;"></div>

	<input type="button" value="测试"  onclick="test()">
</body>

</html>