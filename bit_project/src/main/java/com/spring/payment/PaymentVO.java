package com.spring.payment;

import java.util.Date;

public class PaymentVO {
	private int pay_num;
	private String customer_uid;
	private int subscribe_num;
	private Date pay_date;
	private int price;
	public int getPay_num() {
		return pay_num;
	}
	public void setPay_num(int pay_num) {
		this.pay_num = pay_num;
	}
	public String getCustomer_uid() {
		return customer_uid;
	}
	public void setCustomer_uid(String customer_uid) {
		this.customer_uid = customer_uid;
	}
	public int getSubscribe_num() {
		return subscribe_num;
	}
	public void setSubscribe_num(int subscribe_num) {
		this.subscribe_num = subscribe_num;
	}
	public Date getPay_date() {
		return pay_date;
	}
	public void setPay_date(Date pay_date) {
		this.pay_date = pay_date;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	


}
