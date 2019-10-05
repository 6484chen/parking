package com.tyut.service;

import java.util.List;

import com.tyut.po.Stop_place;

public interface Stop_placeService {
	
	public int updateStop_place(Stop_place stop_place);
	
	public List<Stop_place> findStop_place(Stop_place stop_place);
	
	public Stop_place findStop_placeByStop_id(String Stop_id);
	
	public int addStop_place(Stop_place stop_place);
}
