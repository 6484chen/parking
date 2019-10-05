package com.tyut.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.tyut.dao.CarDao;
import com.tyut.po.Car;
import com.tyut.service.CarService;
@Service
@Transactional
public class CarServiceImpl implements CarService {
	
	@Autowired
	private CarDao carDao;
	
	@Override
	public Car selectCar(Car car) {
		// TODO Auto-generated method stub
		return this.carDao.selectCar(car);
	}

	@Override
	public int updateCar(Car car) {
		// TODO Auto-generated method stub
		return this.carDao.updateCar(car);
	}

	@Override
	public int addCar(Car car) {
		// TODO Auto-generated method stub
		return this.carDao.addCar(car);
	}
	
	public int deleteCar (int car_id) {
		return this.carDao.deleteCar(car_id);
	}

}
