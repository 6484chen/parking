package com.tyut.dao;

import java.util.List;

import com.tyut.po.Stop_place;

public interface Stop_placeDao {
	//更改车位状态
	public int updateStop_place(Stop_place stop_place);
	//根据车位状态，查找空车位
	public List<Stop_place> findStop_place(Stop_place stop_place);
	//根据iD查找已经存在的车
	public Stop_place findStop_placeByStop_id(String Stop_id);
	
	public int addStop_place(Stop_place stop_place);
}
