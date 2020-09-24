package com.study.ssm.entity;

public class Agent {
	private int anumber;
	private String aname;
	private String area;
	private String head;
	private String iname;
	private String contact;
	private String fax;
	private String email;
	public Agent(){}
	
	@Override
	public String toString() {
		return "Agent [anumber=" + anumber + ", aname=" + aname + ", area="
				+ area + ", head=" + head + ", iname=" + iname + ", coutact="
				+ contact + ", fax=" + fax + ", email=" + email + "]";
	}

	public int getAnumber() {
		return anumber;
	}
	public void setAnumber(int anumber) {
		this.anumber = anumber;
	}
	public String getAname() {
		return aname;
	}
	public void setAname(String aname) {
		this.aname = aname;
	}
	public String getArea() {
		return area;
	}
	public void setArea(String area) {
		this.area = area;
	}
	public String getHead() {
		return head;
	}
	public void setHead(String head) {
		this.head = head;
	}
	public String getIname() {
		return iname;
	}
	public void setIname(String iname) {
		this.iname = iname;
	}
	public String getContact() {
		return contact;
	}
	public void setContact(String contact) {
		this.contact = contact;
	}
	public String getFax() {
		return fax;
	}
	public void setFax(String fax) {
		this.fax = fax;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	
}
