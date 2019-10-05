package com.tyut.controller;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.tyut.po.Car;
import com.tyut.po.Log;
import com.tyut.po.Statistics;
import com.tyut.service.CarService;
import com.tyut.service.LogService;
import com.tyut.service.Stop_placeService;
import com.tyut.service.UserService;

@Controller
@Transactional
public class LogController {
	@Autowired
	private LogService logServiceImpl;
	/*@Autowired
	private Stop_placeService stop_placeService;
	@Autowired
	private UserService userService;
	@Autowired
	private CarService carService;
*/
	
	//查询日志
	@RequestMapping("/seleteLog")
	public String selectLog(Log log,Model model) {
		List<Log> log1 = logServiceImpl.selectLog(log);
		model.addAttribute("list", log1);
		return "log/list";
	} 
	//删除日志
	@RequestMapping("/deleteLog")
	public String deleteLog(int id,Model model) {
		int rows = logServiceImpl.deleteLog(id);
		if(rows > 0) {
			return "redirect:/selectLog";
		}
		return "log/list";
	} 
	
	
	//添加日志
	@RequestMapping("/addLog")
	public int addLog(Log log) throws ParseException {   //获取了车的信息
		System.out.println("addLog===日志填写开始");
		SimpleDateFormat dateFormat= new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
		String startTime = log.getIn_time();
		String endTime = log.getOut_time();
		 Date start = dateFormat.parse(startTime);  
		 Date end = dateFormat.parse(endTime);  
		//float end=log.getOut_time().getTime();
		//float start = log.getIn_time().getTime();
		float long_Time =(float) (end.getTime()-start.getTime())/(60*60*1000);
		float longTime =(float) Math.round((float)(long_Time*100))/100;
		float cost = (float)longTime*2+2;
		//转换时间格式
		log.setLong_time(longTime);
		log.setCost(cost);
		
		int rows = logServiceImpl.addLog(log);  
		if(rows > 0) {
			System.out.println("时长："+longTime);
			System.out.println("addLog===日志填写完毕");
			return 0;     //存入进车时的车的信息,返回主页面
		}
		return 1;
	}
	
	
	//echars数据可视化
	@RequestMapping("/seleteLog1")
	@ResponseBody
	public List<Log> selectLog1(Log log) {
		
		//List<Statistics> results = new ArrayList<Statistics>();
		List<Log> results = logServiceImpl.selectLog(log);
	
		System.out.println("json测试");
		return results;
	} 
	
	
	
	@RequestMapping("/selectLogByCar")
	@ResponseBody
	public List<Log> selectLogByCar(Log log) {
		System.out.println("计算开始");
		//List<Statistics> results = new ArrayList<Statistics>();
		List<Log> results = logServiceImpl.selectLog(log);
		return results;
	}
	
	
	
	@RequestMapping("/seleteLog2")
	@ResponseBody
	public Map selectLog2(Log log) {
		System.out.println("计算开始");
		//List<Statistics> results = new ArrayList<Statistics>();
		List<Log> results = logServiceImpl.selectLog(log);
		int array[] = {} ;
		for(int i=0;i<results.size();i++) {
			System.out.println(results.size()+":"+ results.get(i).getStop_id());
			int a = results.get(i).getStop_id();
			array[i]= a;
			System.out.println("测试");
		}
		
		Map map=new HashMap();
		map = test(array);
		System.out.println("json测试");
		return map;
	} 
	
	
	
	
	
	
	//模拟mapreduce
	public Map test(int array[]){

		int count=0;
		int tmp=array[0];

		Map map=new HashMap();

		for(int i=0; i < array.length; i++) {

		if(tmp != array[i]) {
			tmp=array[i];
			count=1;
		} else {
			count++;
		}
			map.put(array[i], count);
		}

		return map;

		}

}
