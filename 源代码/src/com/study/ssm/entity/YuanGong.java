package com.study.ssm.entity;

import java.sql.Date;

public class YuanGong {
	private Integer eid;
	private String evalue;
	private String sex;
	private int age;
	private Date edate;
	private String ename;
	public YuanGong(){}
	@Override
	public String toString() {
		return "YuanGong [eid=" + eid + ", evalue=" + evalue + ", sex=" + sex
				+ ", age=" + age + ", edate=" + edate + ", ename=" + ename
				+ "]";
	}
	public Integer getEid() {
		return eid;
	}
	public void setEid(Integer eid) {
		this.eid = eid;
	}
	public String getEvalue() {
		return evalue;
	}
	public void setEvalue(String evalue) {
		this.evalue = evalue;
	}
	public String getSex() {
		return sex;
	}
	public void setSex(String sex) {
		this.sex = sex;
	}
	public int getAge() {
		return age;
	}
	public void setAge(int age) {
		this.age = age;
	}
	public Date getEdate() {
		return edate;
	}
	public void setEdate(Date edate) {
		this.edate = edate;
	}
	public String getEname() {
		return ename;
	}
	public void setEname(String ename) {
		this.ename = ename;
	}
	
}
