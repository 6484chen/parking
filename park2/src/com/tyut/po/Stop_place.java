package com.tyut.po;

public class Stop_place {
	
	private Integer s_id;
	private Integer stop_id;
	private Integer status;

	
	public Integer getS_id() {
		return s_id;
	}

	public void setS_id(Integer s_id) {
		this.s_id = s_id;
	}

	public Integer getStop_id() {
		return stop_id;
	}

	public void setStop_id(Integer stop_id) {
		this.stop_id = stop_id;
	}

	public Integer getStatus() {
		return status;
	}
	public void setStatus(Integer status) {
		this.status = status;
	}
	
	@Override
	public String toString() {
		return "Stop_place [s_id=" + s_id + ", stop_id=" + stop_id + ", status=" + status + "]";
	}
}
