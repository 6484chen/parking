package com.tyut.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.tyut.po.Stop_place;
import com.tyut.service.Stop_placeService;

@Controller
@Transactional
public class Stop_placeController {
	@Autowired
	private Stop_placeService stop_placeService;
	
	//存车&预约车1
	@RequestMapping("/findStop_place")
	public String findStop_place(Stop_place stop_place,Model model) {
		System.out.println("获取车位开始");
		List<Stop_place>  lists= stop_placeService.findStop_place(stop_place);
		//寻找空车位
		for(Stop_place list : lists) {
			if(list.getStatus()==0){  //车位为空,返回车位信息 
				
				Stop_place list1 = updateStop_placeDao(list);     //修改车位状态，获取车位号
				list1.toString(); 
				model.addAttribute("list", list1);
				System.out.println("获取车位结束");
				return "redirect:/addCar?stop_id="+list1.getStop_id();  // //跳转去录入车 的信息,传入车位号	    
				 
			}

		}
		model.addAttribute("full", "车位已满");
		return "user/home";
		
	}
	
	////////////////////////////////////////////////////////////
	//存车
	//获取车位
	
	public Stop_place updateStop_placeDao(Stop_place stop_place) {
		System.out.println("==========update Stop_place====修改车位状态开始=====");
		Stop_place stop_place1 =stop_place;
		//设置车位状态
		System.out.println(stop_place.getStatus()+":"+stop_place.getStop_id());
		if(stop_place.getStatus() == 0)
			stop_place1.setStatus(1);
		else
			stop_place1.setStatus(0);
		int rows= stop_placeService.updateStop_place(stop_place1);
		System.out.println(rows);
		if(rows > 0){
			System.out.println("==========update Stop_place====修改车位状态结束=====");
			Stop_place stop_id = stop_place;
			return stop_id;    //返回车位号 
		}else{
			
			return null; 
		}//
	}
	
	
	public int findStop_place2(Stop_place stop_place) {
		List<Stop_place>  lists= stop_placeService.findStop_place(stop_place);
		//寻找空车位
		for(Stop_place list : lists) {
			if(list.getStatus()==0){  //车位为空,返回车位信息 
				
				Stop_place list1 = updateStop_placeDao(list);     //修改车位状态，获取车位号
				list1.toString(); 
				return list1.getStop_id();  // //跳转去录入车 的信息,传入车位号	    
				 
			}

		}
		return 0;
		
	}
	//////////////////////////////////////////////////////////////
	
	
	
	//按条件查询
	@RequestMapping("/findStop_place1")
	public String findStop_place1(Stop_place stop_place,Model model) {
		System.out.println(stop_place);
		List<Stop_place>  lists= stop_placeService.findStop_place(stop_place);
		/*if (lists==null) {
			model.addAttribute("aaa", lists);
			return "redirect:findStop_place1";
		}*/
		model.addAttribute("list", lists);
		return "parameter/list";
		
	}
	
	
	
/*	@RequestMapping("/findStop_placeByStop_id")
	public String findStop_placeByStop_id(String stop_id,Model model) {
		Stop_place  stop= stop_placeService.findStop_placeByStop_id(stop_id);
		model.addAttribute("stop1", stop);
		return "redirect:/updateStop_place";   //跳转去修改车位状态
	}
	
	@RequestMapping("/selectStop_place")
	public String selectStop_place(Stop_place stop_place,Model model) {
		System.out.println(stop_place.getStop_id());
		List<Stop_place>  lists= stop_placeService.findStop_place(stop_place);
		model.addAttribute("list", lists);
		return "parameter/list";   //跳转去修改车位状态
	}*/
	
	/**
	 * 添加车位
	 */
	
	
	@RequestMapping("/addStop")
	public String add() {
		return "parameter/add";
	}
	@RequestMapping("/addStop_place")
	public String addStop_place(Stop_place stop_place,Model model) {
		System.out.println(stop_place.getStop_id()+":"+stop_place.getStatus());
		int rows = stop_placeService.addStop_place(stop_place);
		if(rows > 0){
			model.addAttribute("success", "添加成功");
			return "redirect:/selectStop_place";    //返回主页面
		}else{
			model.addAttribute("success", "添加失败");
			return "parameter/list";   //
		}
	}
}
