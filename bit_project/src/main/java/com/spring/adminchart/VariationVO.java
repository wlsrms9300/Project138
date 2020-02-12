package com.spring.adminchart;

import java.util.Date;

public class VariationVO {
	private Date regist;
	private String strRegist;
	private int increase;
	private int decrease;
	private int total;
	
	public Date getRegist() {
		return regist;
	}
	public void setRegist(Date regist) {
		this.regist = regist;
	}
	public String getStrRegist() {
		return strRegist;
	}
	public void setStrRegist(String strRegist) {
		this.strRegist = strRegist;
	}
	public int getIncrease() {
		return increase;
	}
	public void setIncrease(int increase) {
		this.increase = increase;
	}
	public int getDecrease() {
		return decrease;
	}
	public void setDecrease(int decrease) {
		this.decrease = decrease;
	}
	public int getTotal() {
		return total;
	}
	public void setTotal(int total) {
		this.total = total;
	}
	

}
