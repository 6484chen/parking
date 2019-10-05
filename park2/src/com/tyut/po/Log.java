package com.tyut.po;

import java.util.Date;

public class Log {
	
	private Integer id;
	private Integer car_id;
	private String in_time;
	private String out_time;
	private Integer stop_id;
	private float long_time;
	private float cost;
	
	
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public Integer getCar_id() {
		return car_id;
	}
	public void setCar_id(Integer car_id) {
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
	public Integer getStop_id() {
		return stop_id;
	}
	public void setStop_id(Integer stop_id) {
		this.stop_id = stop_id;
	}
	
	public float getLong_time() {
		return long_time;
	}
	public void setLong_time(float long_time) {
		this.long_time = long_time;
	}
	public float getCost() {
		return cost;
	}
	public void setCost(float cost) {
		this.cost = cost;
	}
	@Override
	public String toString() {
		return "Log [id=" + id + ", car_id=" + car_id + ", in_time=" + in_time + ", out_time=" + out_time + ", stop_id="
				+ stop_id + ", long_time=" + long_time + ", cost=" + cost + "]";
	}
	
	

}
