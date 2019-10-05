package com.tyut.po;

import java.util.Date;

public class Car {
	private int c_id;
	private int car_id;
	private String in_time;
	private String out_time;
	private int stop_id;

	public int getC_id() {
		return c_id;
	}
	public void setC_id(int c_id) {
		this.c_id = c_id;
	}
	
	public int getCar_id() {
		return car_id;
	}
	public void setCar_id(int car_id) {
		this.car_id = car_id;
	}
	public String getIn_time() {
		return in_time;
	}
	public void setIn_time(String in_time) {
		this.in_time = in_time;
	}
	public String getOut_time() {
		return out_time;
	}
	public void setOut_time(String out_time) {
		this.out_time = out_time;
	}
	
	
	
	public int getStop_id() {
		return stop_id;
	}
	public void setStop_id(int stop_id) {
		this.stop_id = stop_id;
	}
	@Override
	public String toString() {
		return "Car [c_id=" + c_id + ", car_id=" + car_id + ", in_time=" + in_time + ", out_time=" + out_time
				+ ", stop_id=" + stop_id + ", u_id=" +  "]";
	}

	
	
	
	
	
	
}
