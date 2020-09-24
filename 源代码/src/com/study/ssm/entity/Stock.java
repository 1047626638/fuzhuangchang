package com.study.ssm.entity;

import java.sql.Date;

public class Stock {
	private String snumber;
	private Date sdate;
	private String shouse;
	private String sperson;
	private String stype;
	private String specification;
	private String sunit;
	private int icount;
	public Stock(){}
	@Override
	public String toString() {
		return "Stock [snumber=" + snumber + ", sdate=" + sdate + ", shouse="
				+ shouse + ", sperson=" + sperson + ", stype=" + stype
				+ ", specification=" + specification + ", sunit=" + sunit
				+ ", icount=" + icount + "]";
	}
	public String getSnumber() {
		return snumber;
	}
	public void setSnumber(String snumber) {
		this.snumber = snumber;
	}
	public Date getSdate() {
		return sdate;
	}
	public void setSdate(Date sdate) {
		this.sdate = sdate;
	}
	public String getShouse() {
		return shouse;
	}
	public void setShouse(String shouse) {
		this.shouse = shouse;
	}
	public String getSperson() {
		return sperson;
	}
	public void setSperson(String sperson) {
		this.sperson = sperson;
	}
	public String getStype() {
		return stype;
	}
	public void setStype(String stype) {
		this.stype = stype;
	}
	public String getSpecification() {
		return specification;
	}
	public void setSpecification(String specification) {
		this.specification = specification;
	}
	public String getSunit() {
		return sunit;
	}
	public void setSunit(String sunit) {
		this.sunit = sunit;
	}
	public int getIcount() {
		return icount;
	}
	public void setIcount(int icount) {
		this.icount = icount;
	}
	
}
