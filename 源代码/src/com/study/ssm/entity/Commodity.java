package com.study.ssm.entity;

public class Commodity {
	private Integer cid;
	private String cname;
	private float price;
	private String unit;
	private String cvalue;
	public Commodity(){}
	
	@Override
	public String toString() {
		return "Commodity [cid=" + cid + ", cname=" + cname + ", price="
				+ price + ", unit=" + unit + ", cvalue=" + cvalue + "]";
	}

	public Integer getCid() {
		return cid;
	}
	public void setCid(Integer cid) {
		this.cid = cid;
	}
	public String getCname() {
		return cname;
	}
	public void setCname(String cname) {
		this.cname = cname;
	}
	public float getPrice() {
		return price;
	}
	public void setPrice(float price) {
		this.price = price;
	}
	public String getUnit() {
		return unit;
	}
	public void setUnit(String unit) {
		this.unit = unit;
	}
	public String getCvalue() {
		return cvalue;
	}
	public void setCvalue(String cvalue) {
		this.cvalue = cvalue;
	}
	
}
