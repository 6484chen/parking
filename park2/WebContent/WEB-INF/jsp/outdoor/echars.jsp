<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html style="height: 100%">
   <head>
       <meta charset="utf-8">
   </head>
   <body style="height: 100%; margin: 0">
       <div id="container" style="height: 100%"></div>
       <script type="text/javascript" src="http://echarts.baidu.com/gallery/vendors/echarts/echarts.min.js"></script>
       <script type="text/javascript" src="http://echarts.baidu.com/gallery/vendors/echarts-gl/echarts-gl.min.js"></script>
       <script type="text/javascript" src="http://echarts.baidu.com/gallery/vendors/echarts-stat/ecStat.min.js"></script>
       <script type="text/javascript" src="http://echarts.baidu.com/gallery/vendors/echarts/extension/dataTool.min.js"></script>
       <script type="text/javascript" src="http://echarts.baidu.com/gallery/vendors/echarts/map/js/china.js"></script>
       <script type="text/javascript" src="http://echarts.baidu.com/gallery/vendors/echarts/map/js/world.js"></script>
       <script type="text/javascript" src="https://api.map.baidu.com/api?v=2.0&ak=xfhhaTThl11qYVrqLZii6w8qE5ggnhrY&__ec_v__=20190126"></script>
       <script type="text/javascript" src="http://echarts.baidu.com/gallery/vendors/echarts/extension/bmap.min.js"></script>
       <script type="text/javascript" src="http://echarts.baidu.com/gallery/vendors/simplex.js"></script>
       <script type="text/javascript">
		var dom = document.getElementById("container");
		var myChart = echarts.init(dom);
		var app = {};
		option = null;

	setTimeout(function () {
		var names =[];
		var nums=[];
		var costs=[];
		$.ajax({
	        type: "post",
	        async: true,
	        url: '${pageContext.request.contextPath}/seleteLog1',
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
						nums.push(result[i].long_time); //挨个取出销量并填入销量数组
					}
					console.log('nums: ', nums);
					for (var i = 0; i < result.length; i++) {
						costs.push(result[i].cost); //挨个取出销量并填入销量数组
					}
					console.log('costs',costs);
					
					
					myChart.setOption({ 
						 xAxis : {
							data : names      
						},
						yAxis: {}, 
						series : [ {
							name : '车位数量',
							data : nums
						} ]
					});
					myChart.hideLoading();
				}

			},
	    });
	    option = {
	        legend: {},
	        tooltip: {
	            trigger: 'axis',
	            showContent: false
	        },
	        dataset: {
	            source: [
	                names,
	                nums,
	                costs
	            ]
	        },
	        xAxis: {type: 'category'},
	        yAxis: {gridIndex: 0},
	        grid: {top: '55%'},
	        series: [
	            {type: 'line', smooth: true, seriesLayoutBy: 'row'},
	            {type: 'line', smooth: true, seriesLayoutBy: 'row'},
	            {type: 'line', smooth: true, seriesLayoutBy: 'row'},
	            {type: 'line', smooth: true, seriesLayoutBy: 'row'},
	            {
	                type: 'pie',
	                id: 'pie',
	                radius: '30%',
	                center: ['50%', '25%'],
	                label: {
	                    formatter: '{b}: {@2012} ({d}%)'
	                },
	                encode: {
	                    itemName: 'product',
	                    value: '2012',
	                    tooltip: '2012'
	                }
	            }
	        ]
	    };

    myChart.on('updateAxisPointer', function (event) {
        var xAxisInfo = event.axesInfo[0];
        if (xAxisInfo) {
            var dimension = xAxisInfo.value + 1;
            myChart.setOption({
                series: {
                    id: 'pie',
                    label: {
                        formatter: '{b}: {@[' + dimension + ']} ({d}%)'
                    },
                    encode: {
                        value: dimension,
                        tooltip: dimension
                    }
                }
            });
        }
    });

    myChart.setOption(option);

});;
if (option && typeof option === "object") {
    myChart.setOption(option, true);
}
       </script>
   </body>
</html>