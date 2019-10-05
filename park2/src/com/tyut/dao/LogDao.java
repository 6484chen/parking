package com.tyut.dao;

import java.util.List;

import com.tyut.po.Log;

public interface LogDao {
	//查询日志
	public List<Log> selectLog(Log log);
	//添加日志
	public int addLog(Log log);
	//删除日志
	public int deleteLog(int id);
	public int updateLog(Log log);
	public List<Log> selectLogByCar(Log log);

}
