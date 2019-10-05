package com.tyut.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.tyut.dao.Stop_placeDao;
import com.tyut.po.Stop_place;
import com.tyut.service.Stop_placeService;

@Service
@Transactional
public class Stop_placeServiceImpl implements Stop_placeService {
	@Autowired
	private Stop_placeDao stop_placeDao;

	@Override
	public int updateStop_place(Stop_place stop_place) {
		// TODO Auto-generated method stub
		return this.stop_placeDao.updateStop_place(stop_place);
	}

	@Override
	public List<Stop_place> findStop_place(Stop_place stop_place) {
		// TODO Auto-generated method stub
		return this.stop_placeDao.findStop_place(stop_place);
	}

	@Override
	public Stop_place findStop_placeByStop_id(String Stop_id) {
		// TODO Auto-generated method stub
		return this.stop_placeDao.findStop_placeByStop_id(Stop_id);
	}

	@Override
	public int addStop_place(Stop_place stop_place) {
		// TODO Auto-generated method stub
		return this.stop_placeDao.addStop_place(stop_place);
	}

	
	
}
