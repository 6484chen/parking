package com.tyut.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MainController {
	//用户登录
	@RequestMapping("/userIndex")
	public String login() {
		return "/user/index";
	}
	//管理员登录
	@RequestMapping("/managerIndex")
	public String login1() {
		return "/manager/login";
	}
	
	@RequestMapping("/parameter")
	public String parameter() {
		return "parameter/add";
	}
	//退出系统
	@RequestMapping("/exit")
	public String exit() {
		return "home/exit";
	}
	//可视化
	@RequestMapping("/show")
	public String show() {
		return "outdoor/echars2";
	}
	
}
