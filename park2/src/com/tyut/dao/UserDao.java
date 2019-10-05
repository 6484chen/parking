package com.tyut.dao;

import java.util.List;

import com.tyut.po.User;

public interface UserDao {
	//添加用户
	public int addUser(User user);
	
	public User findtUserById(int id);
	public User findtUserByCarId(int id);
	//查询用户
	public List<User> selectUser(User user);
	//修改用户
	public int updateUser(User user);
	//删除用户
	public int deleteUser(int u_id);
}
