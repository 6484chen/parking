package com.tyut.dao;

import com.tyut.po.Car;

public interface CarDao {
	public Car selectCar(Car car);
	public int updateCar(Car car);
	public int addCar(Car car);
	public int deleteCar (int car_id);
}
