package com.tyut.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.sun.xml.internal.ws.developer.StreamingAttachment;
import com.tyut.dao.LogDao;
import com.tyut.po.Log;
import com.tyut.service.LogService;
@Service
@Transactional
public class LogServiceImpl implements LogService {
	
	@Autowired
	private LogDao logDao;
	
	
	@Override
	public List<Log> selectLog(Log log) {
		// TODO Auto-generated method stub
		return this.logDao.selectLog(log);
	}

	@Override
	public int addLog(Log log) {
		// TODO Auto-generated method stub
		System.out.println("addLogService");
		return this.logDao.addLog(log);
	}

	@Override
	public int deleteLog(int id) {
		// TODO Auto-generated method stub
		return this.logDao.deleteLog(id);
	}

	@Override
	public int updateLog(Log log) {
		// TODO Auto-generated method stub
		return this.logDao.updateLog(log);
	}

	@Override
	public List<Log> selectLogByCar(Log log) {
		// TODO Auto-generated method stub
		return this.logDao.selectLogByCar(log);
	}

}
