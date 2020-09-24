package com.study.ssm.entity;

public class Account {
	private int username;
	private String password;
	private Users users;
	
	public Account(){}
	

	@Override
	public String toString() {
		return "Account [username=" + username + ", password=" + password
				+ ", users=" + users + "]";
	}


	public Users getUsers() {
		return users;
	}
	public void setUsers(Users users) {
		this.users = users;
	}
	public int getUsername() {
		return username;
	}
	public void setUsername(int username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	
}
