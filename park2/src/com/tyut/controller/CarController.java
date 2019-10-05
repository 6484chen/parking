package com.tyut.controller;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.tyut.po.Car;
import com.tyut.po.Log;
import com.tyut.po.Stop_place;
import com.tyut.service.CarService;
import com.tyut.service.LogService;
import com.tyut.service.Stop_placeService;
import com.tyut.service.UserService;

@Controller
@Transactional
public class CarController {
	
	@Autowired
	private CarService carService;
	@Autowired
	private LogService logService;
	@Autowired
	private LogController logController;    //依赖注入
	@Autowired
	private Stop_placeController stop;
	@Autowired
	private Stop_placeService stop_placeService;
	

	//预约车
	@RequestMapping("/addCar")
	public String addCar(int stop_id,Model model) {   //参数为车位号,修改int stop_id

		Car car = new Car();
		/**
		 * 暂时删除制造车牌
		 */
		//int car_id =(int) (Math.random()*9+1)*100000;  //生成六位随机数代替车牌号
		//Date date = new Date();   //获取当前时间
		//car.setCar_id(car_id);     //车牌号
		//car.setIn_time(date);		//进入时间
		/*String stop_id =(String)stop.findStop_place(stop_place,model);
		int stop_id = stop.getStop_id();  //获取车位号
*/		car.setStop_id(stop_id);    //车位号

		int rows = carService.addCar(car);
		if (rows > 0) {
			
			model.addAttribute("success", "预约成功,车位为:"+car.getStop_id());
			
			return "user/home";  //车添加成功,修改日志
		}else {
			return "user/home";
		}
	
	}
	
	///////////////////////////////////////////////////////////////////////
	//存车1
	@RequestMapping("/addCare")
	public String addCar1(Car car,Model model) {   //参数为车位号,修改int stop_id
		System.out.println(car.getCar_id());
		System.out.println("存车开始");
		Car car1 = new Car();
		car1.setCar_id(car.getCar_id());
		/**
		 * 暂时删除制造车牌
		 */
		//int car_id =(int) (Math.random()*9+1)*100000;  //生成六位随机数代替车牌号
		Date date = new Date();   //获取当前时间
		//car.setCar_id(car_id);     //车牌号
		SimpleDateFormat dateFormat= new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
		
		String in_time = dateFormat.format(date);
		car1.setIn_time(in_time);		//进入时间'
		Stop_place stop1 = new Stop_place();
		int stop_id =stop.findStop_place2(stop1);   //获取车位号
		if(stop_id==0 ) {
			model.addAttribute("add", "车位已满，请另找车位");
			return "user/home";
		}
		car1.setStop_id(stop_id);    //车位号
		int rows = carService.addCar(car1);
		if (rows > 0) {
			
			model.addAttribute("resorve", "存车成功,车位为"+car1.getStop_id());
			System.out.println("存车结束");
			return "user/home";  //车添加成功,修改日志
		}else {
			return "user/home";
		}
	
	}
	
	///////////////////////////////////////////////////////////////////
	/**
	 * 
	 * 更新车库
	 */
	//取车2
	@RequestMapping("/updateCar")
	public String updateCar(Car car) {
		Date date = new Date();
		
		SimpleDateFormat dateFormat= new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
		
		String endTime = dateFormat.format(date);
		car.setOut_time(endTime );
		int rows = carService.updateCar(car);
		if (rows > 0) {
			return car.getOut_time();  //添加成功,取车成功，跳转到显示界面
		}else {
			return null;
		}
	}
	
	
	//取车1
	@RequestMapping("/selectCar")
	public String selectCar(Car car,Model model) throws ParseException {
		Car car0 = carService.selectCar(car);     //设置查询不到进行返回   //待解决
		//更新车的信息
		//String endtime =updateCar(car0); //修改车的出库时间
		//System.out.println(endtime);
		//car1.toString();
		
		//出车时间
		Date date = new Date();
		
		SimpleDateFormat dateFormat= new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
		
		String endTime = dateFormat.format(date);
		
		
		//更新日志
		
		Log log = new Log();
		//String endTime = dateFormat.format(a);
		String startTime = car0.getIn_time();
		//String startTime = dateFormat.format(log.getIn_time());    //只能放字符串
		System.out.println("进库时间"+startTime);
		log.setCar_id(car0.getCar_id());
		log.setIn_time(startTime);
		log.setOut_time(endTime);
		log.setStop_id(car0.getStop_id());
		//跳转到Log中存储日志
		
		logController.addLog(log);		    //添加日志记录
		
		System.out.println("修改车位");
		//更新车位状态
		Stop_place stop_place  = new Stop_place();
		
		stop_place.setStop_id(car0.getStop_id());
		stop_place.setStatus(car0.getCar_id());
		stop.updateStop_placeDao(stop_place);   //离开后修改车位状态
		System.out.println("修改车位");
		
		
		//删除车信息
		deleteCar(car0.getCar_id());
		System.out.println("删除车成功");
		model.addAttribute("leave", "取车成功");
		return "user/home";    //传给log
	}
	
	
	//删除车
	public int deleteCar(int car_id) {
		System.out.println("删除车开始"+car_id);
		int rows = carService.deleteCar(car_id);
		System.out.println("删除车结束");
		return 0;
	}
	
	
}
