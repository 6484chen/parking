package com.tyut.service;

import java.util.List;

import com.tyut.po.User;

public interface UserService {
		//添加用户
		public int addUser(User user);
		public User findtUserByCarId(int id);
		public User findtUserById(int id);
		//查询用户
		public List<User> selectUser(User user);
		//修改用户
		public int updateUser(User user);
		//删除用户
		public int deleteUser(int id);
}
