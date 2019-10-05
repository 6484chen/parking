package com.tyut.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.tyut.po.User;
import com.tyut.service.UserService;
@Controller
@Transactional
public class UserController {
	@Autowired
	private UserService userService;
	
	@RequestMapping("/addUser")
	public String add() {
		System.out.println("addUSer");
		return "user/add"; 
	}
	
	@RequestMapping("/addUser1")
	public String addUser(User user,Model model) {
		System.out.println(user.getName()+user.getPasswd()+user.getMoney()+user.getCar_id());
		int rows = userService.addUser(user);
		if(rows > 0){
			model.addAttribute("addFaile","添加成功");
			return "redirect:seleteUser";
		}else{
			model.addAttribute("addFaile","添加失败，请重新添加");
			return "redirect:addUser";
		}
	}
	
	@RequestMapping("/updateUser")
	public String updateUser(User user,Model model) {
		int rows = userService.updateUser(user);
		if(rows > 0){
			model.addAttribute("updateSuccess","修改成功");
			return "user/update";
		}else{
			model.addAttribute("updateFaile","查询失败，请重新添加");
			return "user/update";
		}
	}
	
	@RequestMapping("/deleteUser")
	public String deleteUser(int id,Model model) {
		int rows = userService.deleteUser(id);
		System.out.println(rows);
		if(rows > 0){
			model.addAttribute("deleteFaile","删除失败，请重新添加");
			System.out.println("ssfdfsdf");
			return "redirect:seleteUser";
		}else{
			model.addAttribute("deleteFaile","删除失败，请重新添加");
			return "user/list";
		}
	}
	
	
	@RequestMapping("/seleteUser")
	public String seleteUser(User user,Model model) {
		System.out.println(user.getCar_id());
		List<User> userList = userService.selectUser(user);
		System.out.println("false=========");
		if (userList==null) {
			System.out.println("false1=========");
			return "redirect:selectUser";
		}
		model.addAttribute("list",userList);
		return "user/list";	
	}
	
	@RequestMapping("/findtUserByCarId")
	public String findtUserByCarId(int id,Model model) {
		User user = userService.findtUserByCarId(id);
		model.addAttribute("use1",user);
		return "forword:/updateCar";	
	}
	
	@RequestMapping("/findtUserById")
	public String findtUserById(int id,Model model) {
		System.out.println(id);
		User user = userService.findtUserById(id);
		System.out.println(user.getName()+user.getCar_id()+user.getMoney());
		model.addAttribute("user1",user);
		return "user/update";	
	}
	
	@RequestMapping("/userTest")
	public String seleteUser1(User user,Model model) {
		List<User> userList = userService.selectUser(user);
		if (userList.size() == 0 || userList ==null){
			model.addAttribute("pass", "密码或用户名输入错误");
			return "redirect:userIndex";
		}
		else{
			return "user/home";
		}
	}
	
	
}
