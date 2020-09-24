package com.study.ssm.entity;

public class Users {
	private int uid;
	private String uname;
	private String phone;
	
	
	public Users(){}
	

	@Override
	public String toString() {
		return "Users [uid=" + uid + ", uname=" + uname + ", phone=" + phone
				+ "]";
	}


	public int getUid() {
		return uid;
	}

	public String getUname() {
		return uname;
	}

	public void setUname(String uname) {
		this.uname = uname;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}



	public void setUid(int uid) {
		this.uid = uid;
	}


	
	
}
