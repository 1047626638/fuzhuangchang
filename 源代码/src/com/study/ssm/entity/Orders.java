package com.study.ssm.entity;

import java.sql.Date;

public class Orders {
	private int iorders;
	private int rorders;
	private int oamount;
	private int ramount;
	private float omoney;
	private float rmoney;
	private float amoney;
	private Date odate;
	public Orders(){}
	
	@Override
	public String toString() {
		return "Orders [iorders=" + iorders + ", rorders=" + rorders
				+ ", oamount=" + oamount + ", ramount=" + ramount + ", omoney="
				+ omoney + ", rmoney=" + rmoney + ", amoney=" + amoney
				+ ", odate=" + odate + "]";
	}
	
	public Date getOdate() {
		return odate;
	}

	public void setOdate(Date odate) {
		this.odate = odate;
	}

	public int getIorders() {
		return iorders;
	}
	public void setIorders(int iorders) {
		this.iorders = iorders;
	}
	public int getRorders() {
		return rorders;
	}
	public void setRorders(int rorders) {
		this.rorders = rorders;
	}
	public int getOamount() {
		return oamount;
	}
	public void setOamount(int oamount) {
		this.oamount = oamount;
	}
	public int getRamount() {
		return ramount;
	}
	public void setRamount(int ramount) {
		this.ramount = ramount;
	}
	public float getOmoney() {
		return omoney;
	}
	public void setOmoney(float omoney) {
		this.omoney = omoney;
	}
	public float getRmoney() {
		return rmoney;
	}
	public void setRmoney(float rmoney) {
		this.rmoney = rmoney;
	}
	public float getAmoney() {
		return amoney;
	}
	public void setAmoney(float amoney) {
		this.amoney = amoney;
	}
	
}
