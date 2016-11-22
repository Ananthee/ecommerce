package com.times.model;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class Order {

@Id
	private int orderid;	
@Column   
	private String name;
@Column
	private long mobilenumber;
@Column
	private Date pdate;
@Column
	private String emailid;
@Column
	private int total;
@Column
    private String address;
@Column    
    private String cart;

public int getOrderid() {
	return orderid;
}
public void setOrderid(int orderid) {
	this.orderid = orderid;
}
public String getName() {
	return name;
}
public void setName(String name) {
	this.name = name;
}
public long getMobilenumber() {
	return mobilenumber;
}
public void setMobilenumber(long mobilenumber) {
	this.mobilenumber = mobilenumber;
}
public Date getPdate() {
	return pdate;
}
public void setPdate(Date pdate) {
	this.pdate = pdate;
}
public String getEmailid() {
	return emailid;
}
public void setEmailid(String emailid) {
	this.emailid = emailid;
}
public int getTotal() {
	return total;
}
public void setTotal(int total) {
	this.total = total;
}
public String getAddress() {
	return address;
}
public void setAddress(String address) {
	this.address = address;
}
public String getCart() {
	return cart;
}
public void setCart(String cart) {
	this.cart = cart;
}
	
}
