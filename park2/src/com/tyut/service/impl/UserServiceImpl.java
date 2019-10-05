package com.tyut.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.tyut.dao.UserDao;
import com.tyut.po.User;
import com.tyut.service.UserService;

@Service
@Transactional
public class UserServiceImpl implements UserService {
	@Autowired
	private UserDao userDao;

	@Override
	public int addUser(User user) {
		// TODO Auto-generated method stub
		return this.userDao.addUser(user);
	}
	@Override
	public User findtUserByCarId(int id) {
		return this.userDao.findtUserByCarId(id);
	}
	
	@Override
	public List<User> selectUser(User user) {
		// TODO Auto-generated method stub
		return this.userDao.selectUser(user);
	}

	@Override
	public int updateUser(User user) {
		// TODO Auto-generated method stub
		return this.userDao.updateUser(user);
	}

	@Override
	public int deleteUser(int id) {
		// TODO Auto-generated method stub
		return this.userDao.deleteUser(id);
	}

	@Override
	public User findtUserById(int id) {
		// TODO Auto-generated method stub
		return this.userDao.findtUserById(id);
	}
	

}
