package com.tyut.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.tyut.dao.ManagerDao;
import com.tyut.po.Manager;
import com.tyut.service.ManagerService;
@Service
@Transactional
public class ManagerServiceImpl implements ManagerService {
	
	@Autowired
	private ManagerDao managerDao;
	
	@Override
	public Manager findManager(Manager manager) {
		
		return this.managerDao.findManager(manager);
	}

}
