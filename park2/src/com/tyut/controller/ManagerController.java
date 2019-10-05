package com.tyut.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.tyut.po.Manager;
import com.tyut.service.ManagerService;

@Controller
@Transactional
public class ManagerController {
	@Autowired
	private ManagerService managerService;
	
	//获取登录信息，并进行验证
	@RequestMapping("/managerTest")
	public String findManager(Manager manager,Model model){
		System.out.println(manager.getName());
		Manager manager1 = new Manager();
		Manager manager_sql = managerService.findManager(manager);
		String name = manager_sql.getName();
		String password  = manager_sql.getPassword();
		if (manager_sql == null) {
			model.addAttribute("jiaoyan1","用户名或密码错误，请重新登录！");
			return "redirect:/managerIndex";
		}
		System.out.println("name:"+name+";password:"+password);
		if((name == "" || name == null) && ( password == "" || password == null)){
			model.addAttribute("jiaoyan","用户名或密码错误，请重新登录！");
			return "manager/login";	
		}
		return "home/home";
		
	}	
}
