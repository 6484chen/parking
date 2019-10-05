package com.tyut.service;

import com.tyut.po.Car;

public interface CarService {
	public Car selectCar(Car car);
	public int updateCar(Car car);
	public int addCar(Car car);
	public int deleteCar (int car_id);
}
